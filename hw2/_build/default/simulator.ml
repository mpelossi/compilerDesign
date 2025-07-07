(* X86lite Simulator *)

(* See the documentation in the X86lite specification, available on the 
   course web pages, for a detailed explanation of the instruction
   semantics.
*)

open X86

(* simulator machine state -------------------------------------------------- *)

let mem_bot = 0x400000L          (* lowest valid address *)
let mem_top = 0x410000L          (* one past the last byte in memory *)
let mem_size = Int64.to_int (Int64.sub mem_top mem_bot)
let nregs = 17                   (* including Rip *)
let ins_size = 8L                (* assume we have a 8-byte encoding *)
let exit_addr = 0xfdeadL         (* halt when m.regs(%rip) = exit_addr *)

(* Your simulator should raise this exception if it tries to read from or
   store to an address not within the valid address space. *)
exception X86lite_segfault

(* The simulator memory maps addresses to symbolic bytes.  Symbolic
   bytes are either actual data indicated by the Byte constructor or
   'symbolic instructions' that take up eight bytes for the purposes of
   layout.

   The symbolic bytes abstract away from the details of how
   instructions are represented in memory.  Each instruction takes
   exactly eight consecutive bytes, where the first byte InsB0 stores
   the actual instruction, and the next seven bytes are InsFrag
   elements, which aren't valid data.

   For example, the two-instruction sequence:
        at&t syntax             ocaml syntax
      movq %rdi, (%rsp)       Movq,  [~%Rdi; Ind2 Rsp]
      decq %rdi               Decq,  [~%Rdi]

   is represented by the following elements of the mem array (starting
   at address 0x400000):

       0x400000 :  InsB0 (Movq,  [~%Rdi; Ind2 Rsp])
       0x400001 :  InsFrag
       0x400002 :  InsFrag
       0x400003 :  InsFrag
       0x400004 :  InsFrag
       0x400005 :  InsFrag
       0x400006 :  InsFrag
       0x400007 :  InsFrag
       0x400008 :  InsB0 (Decq,  [~%Rdi])
       0x40000A :  InsFrag
       0x40000B :  InsFrag
       0x40000C :  InsFrag
       0x40000D :  InsFrag
       0x40000E :  InsFrag
       0x40000F :  InsFrag
       0x400010 :  InsFrag
*)
type sbyte = InsB0 of ins       (* 1st byte of an instruction *)
           | InsFrag            (* 2nd - 8th bytes of an instruction *)
           | Byte of char       (* non-instruction byte *)

(* memory maps addresses to symbolic bytes *)
type mem = sbyte array

(* Flags for condition codes *)
type flags = { mutable fo : bool
             ; mutable fs : bool
             ; mutable fz : bool
             }

(* Register files *)
type regs = int64 array

(* Complete machine state *)
type mach = { flags : flags
            ; regs : regs
            ; mem : mem
            }

(* simulator helper functions ----------------------------------------------- *)

(* The index of a register in the regs array *)
let rind : reg -> int = function
  | Rip -> 16
  | Rax -> 0  | Rbx -> 1  | Rcx -> 2  | Rdx -> 3
  | Rsi -> 4  | Rdi -> 5  | Rbp -> 6  | Rsp -> 7
  | R08 -> 8  | R09 -> 9  | R10 -> 10 | R11 -> 11
  | R12 -> 12 | R13 -> 13 | R14 -> 14 | R15 -> 15

(* Helper functions for reading/writing sbytes *)

(* Convert an int64 to its sbyte representation *)
let sbytes_of_int64 (i:int64) : sbyte list =
  let open Char in 
  let open Int64 in
  List.map (fun n -> Byte (shift_right i n |> logand 0xffL |> to_int |> chr))
           [0; 8; 16; 24; 32; 40; 48; 56]

(* Convert an sbyte representation to an int64 *)
let int64_of_sbytes (bs:sbyte list) : int64 =
  let open Char in
  let open Int64 in
  let f b i = match b with
    | Byte c -> logor (shift_left i 8) (c |> code |> of_int)
    | _ -> 0L
  in
  List.fold_right f bs 0L

(* Convert a string to its sbyte representation *)
let sbytes_of_string (s:string) : sbyte list =
  let rec loop acc = function
    | i when i < 0 -> acc
    | i -> loop (Byte s.[i]::acc) (pred i)
  in
  loop [Byte '\x00'] @@ String.length s - 1

(* Serialize an instruction to sbytes *)
let sbytes_of_ins (op, args:ins) : sbyte list =
  let check = function
    | Imm (Lbl _) | Ind1 (Lbl _) | Ind3 (Lbl _, _) -> 
      invalid_arg "sbytes_of_ins: tried to serialize a label!"
    | o -> ()
  in
  List.iter check args;
  [InsB0 (op, args); InsFrag; InsFrag; InsFrag;
   InsFrag; InsFrag; InsFrag; InsFrag]

(* Serialize a data element to sbytes *)
let sbytes_of_data : data -> sbyte list = function
  | Quad (Lit i) -> sbytes_of_int64 i
  | Asciz s -> sbytes_of_string s
  | Quad (Lbl _) -> invalid_arg "sbytes_of_data: tried to serialize a label!"


(* It might be useful to toggle printing of intermediate states of your 
   simulator. Our implementation uses this mutable flag to turn on/off
   printing.  For instance, you might write something like:

     [if !debug_simulator then print_endline @@ string_of_ins u; ...]

*)
let debug_simulator = ref false

(* Interpret a condition code with respect to the given flags. *)
let interp_cnd {fo; fs; fz} : cnd -> bool = fun c ->
  begin match c with
    | Eq -> fz
    | Neq -> not fz
    | Gt -> (not fz) && (fs = fo)
    | Ge -> fs = fo
    | Lt -> fs <> fo
    | Le -> (fs <> fo) || fz
  end

(* Maps an X86lite address into Some OCaml array index,
   or None if the address is not within the legal address space. *)
let map_addr (addr:quad) : int option =
  if (addr >= mem_top) || (addr < mem_bot) then
    None
  else
    Some ((Int64.to_int addr) - 0x400000)

(* Simulates one step of the machine:
    - fetch the instruction at %rip
    - compute the source and/or destination information from the operands
    - simulate the instruction semantics
    - update the registers and/or memory appropriately
    - set the condition flags
*)

let option_to_int = function
  | Some x -> x
  | None -> raise X86lite_segfault

let rec unifier (xs: operand list) (m: mach) : operand list = 
  let reg_val r = m.regs.(rind r) in
  let imm_add x y = Int64.add x (reg_val y) in
    match xs with
      | [] -> []
      | Imm (Lit n) as imm :: rest -> imm :: unifier rest m
      | Ind1 (Lit n) as ind :: rest -> ind :: unifier rest m
      | Ind2 r :: rest -> Ind1 (Lit (reg_val r)) :: unifier rest m
      | Ind3 (Lit x, y) :: rest -> Ind1 (Lit (imm_add x y)) :: unifier rest m
      | Reg r as reg :: rest -> reg :: unifier rest m
  
let from_mem (m: mach) (x: int64) : sbyte list = 
  let i = option_to_int (map_addr x) in
  List.init 8 (fun n -> m.mem.(i + n))

let to_mem (m: mach) (x: int64) (y: sbyte list) : unit = 
  let i = option_to_int (map_addr x) in
  List.iteri (fun n sb -> m.mem.(i + n) <- sb) y
  
let setter (m: mach) (x: bool list) : unit = 
  let cur = m.flags in
  cur.fo <- List.nth x 0; 
  cur.fs <- List.nth x 1; 
  cur.fz <- List.nth x 2

let special_setter (m: mach) (x: bool list) : unit = 
  let cur = m.flags in
  cur.fs <- List.nth x 0; 
  cur.fz <- List.nth x 1
  
let equal_bit (x: int64) : bool = 
  let first = Int64.shift_right x 63 |> Int64.logand 1L in
  let second = Int64.shift_right x 62 |> Int64.logand 1L in
  first <> second
  
let most_sign (x:int64) : bool =
  Int64.logand (Int64.shift_right x 63) 1L = 1L

let byte_setter (b: int64) (n: int64) : int64 = 
  Int64.logor (Int64.logand n (Int64.lognot 255L)) b

let smallest (x:int64) : bool =
  x = Int64.min_int

let shift_and_set_flags operator n shift_amt =
  let result = match operator with
    | Shlq -> Int64.shift_left n shift_amt
    | Sarq -> Int64.shift_right n shift_amt
    | Shrq -> Int64.shift_right_logical n shift_amt
    | _ -> failwith "unexpected operator"
  in
  let is_one_shift = shift_amt = 1 in
  let flags = match operator with
    | Shlq when is_one_shift -> [equal_bit n; result < 0L; result = 0L]
    | Shlq -> [result < 0L; result = 0L]
    | Sarq when is_one_shift -> [false; result < 0L; result = 0L]
    | Sarq -> [result < 0L; result = 0L]
    | Shrq when is_one_shift -> [most_sign n; most_sign result; result = 0L]
    | Shrq -> [most_sign result; result = 0L]
    | _ -> failwith "unexpected operator"
  in
  result, flags

  let unwrap = function
  | Some x -> x
  | None -> raise X86lite_segfault

let resolve_operand (op: operand) (m: mach) : operand =
  match op with
  | Ind2 reg -> Ind1 (Lit (m.regs.(rind reg)))
  | Ind3 (Lit disp, base_reg) -> Ind1 (Lit (Int64.add disp (m.regs.(rind base_reg))))
  | Ind3 (Lbl _, _) -> failwith "Label should have been resolved"
  | _ -> op

let get_operand_value (m: mach) (op: operand) : int64 =
  match op with
  | Imm (Lit n) -> n
  | Reg r -> m.regs.(rind r)
  | Ind1 (Lit addr) -> int64_of_sbytes (from_mem m addr)
  | _ -> failwith "Invalid operand for reading value"

let set_operand_value (m: mach) (op: operand) (value: int64) : unit =
  match op with
  | Reg r -> m.regs.(rind r) <- value
  | Ind1 (Lit addr) -> to_mem m addr (sbytes_of_int64 value)
  | _ -> failwith "Invalid operand for writing value"

type t = { value : int64; overflow : bool }

let update_flags (m: mach) (result: t) : unit =
  m.flags.fo <- result.overflow;
  m.flags.fs <- result.value < 0L;
  m.flags.fz <- result.value = 0L

  let step (m: mach) : unit =
    let rip = m.regs.(rind Rip) in
    let addr = unwrap (map_addr rip) in
    match m.mem.(addr) with
    | InsB0 (opcode, operands) ->
        m.regs.(rind Rip) <- Int64.add rip ins_size;
        let resolved_operands = List.map (fun op -> resolve_operand op m) operands in
        match (opcode, resolved_operands) with
        | Movq, [src; dest] ->
            let value = get_operand_value m src in
            set_operand_value m dest value
        | (Addq | Subq | Imulq as op), [src; dest] ->
            let src_val = get_operand_value m src in
            let dest_val = get_operand_value m dest in
            let result =
              match op with
              | Addq -> add dest_val src_val
              | Subq -> sub dest_val src_val
              | Imulq -> mul dest_val src_val
              | _ -> failwith "Unexpected arithmetic opcode"
            in
            set_operand_value m dest result.value;
            update_flags m result
        | (Incq | Decq as op), [operand] ->
            let value = get_operand_value m operand in
            let result =
              match op with
              | Incq -> succ value
              | Decq -> pred value
              | _ -> failwith "Unexpected increment/decrement opcode"
            in
            set_operand_value m operand result.value;
            update_flags m result
        | Negq, [operand] ->
            let value = get_operand_value m operand in
            let result = neg value in
            set_operand_value m operand result.value;
            update_flags m result
        | Notq, [operand] ->
            let value = get_operand_value m operand in
            let result = Int64.lognot value in
            set_operand_value m operand result
        | (Andq | Orq | Xorq as op), [src; dest] ->
            let src_val = get_operand_value m src in
            let dest_val = get_operand_value m dest in
            let result =
              match op with
              | Andq -> Int64.logand dest_val src_val
              | Orq -> Int64.logor dest_val src_val
              | Xorq -> Int64.logxor dest_val src_val
              | _ -> failwith "Unexpected logical opcode"
            in
            set_operand_value m dest result;
            m.flags.fo <- false;
            m.flags.fs <- result < 0L;
            m.flags.fz <- result = 0L
        | (Shlq | Shrq | Sarq as op), [src; dest] ->
            let dest_val = get_operand_value m dest in
            let shift_amt = Int64.to_int (get_operand_value m src) in
            let result =
              match op with
              | Shlq -> Int64.shift_left dest_val shift_amt
              | Shrq -> Int64.shift_right_logical dest_val shift_amt
              | Sarq -> Int64.shift_right dest_val shift_amt
              | _ -> failwith "Unexpected shift opcode"
            in
            set_operand_value m dest result;
            if shift_amt = 0 then ()
            else if shift_amt = 1 then
              let oflag =
                match op with
                | Shlq -> (Int64.shift_right dest_val 63) <> (Int64.shift_right result 63)
                | Shrq | Sarq -> (op = Shrq) && (Int64.logand dest_val 1L = 1L)
                | _ -> false
              in
              m.flags.fo <- oflag;
              m.flags.fs <- result < 0L;
              m.flags.fz <- result = 0L
            else
              begin
                m.flags.fo <- false;
                m.flags.fs <- result < 0L;
                m.flags.fz <- result = 0L
              end
        | Cmpq, [src; dest] ->
            let src_val = get_operand_value m src in
            let dest_val = get_operand_value m dest in
            let result = sub dest_val src_val in
            update_flags m result
        | Set cnd, [operand] ->
            let flag = if interp_cnd m.flags cnd then 1L else 0L in
            let dest_val = get_operand_value m operand in
            let new_val = Int64.logor (Int64.logand dest_val (Int64.lognot 0xFFL)) flag in
            set_operand_value m operand new_val
        | Jmp, [target] ->
            let addr = get_operand_value m target in
            m.regs.(rind Rip) <- addr
        | J cnd, [target] ->
            if interp_cnd m.flags cnd then
              let addr = get_operand_value m target in
              m.regs.(rind Rip) <- addr
        | Callq, [target] ->
            m.regs.(rind Rsp) <- Int64.sub m.regs.(rind Rsp) 8L;
            to_mem m m.regs.(rind Rsp) (sbytes_of_int64 m.regs.(rind Rip));
            let addr = get_operand_value m target in
            m.regs.(rind Rip) <- addr
        | Retq, [] ->
            let addr = int64_of_sbytes (from_mem m m.regs.(rind Rsp)) in
            m.regs.(rind Rip) <- addr;
            m.regs.(rind Rsp) <- Int64.add m.regs.(rind Rsp) 8L
        | Pushq, [src] ->
            let value = get_operand_value m src in
            m.regs.(rind Rsp) <- Int64.sub m.regs.(rind Rsp) 8L;
            to_mem m m.regs.(rind Rsp) (sbytes_of_int64 value)
        | Popq, [dest] ->
            let value = int64_of_sbytes (from_mem m m.regs.(rind Rsp)) in
            set_operand_value m dest value;
            m.regs.(rind Rsp) <- Int64.add m.regs.(rind Rsp) 8L
        | Leaq, [src; dest] ->
            let addr =
              match src with
              | Ind1 (Lit addr) -> addr
              | _ -> failwith "Invalid operand for leaq"
            in
            m.regs.(rind (match dest with | Reg r -> r | _ -> failwith "Invalid destination for leaq")) <- addr
        | _ -> failwith "Unknown instruction or invalid operands"
    | _ -> failwith "Invalid instruction at current rip"

(* Runs the machine until the rip register reaches a designated
   memory address. Returns the contents of %rax when the 
   machine halts. *)
let run (m:mach) : int64 = 
  while m.regs.(rind Rip) <> exit_addr do (if !debug_simulator then print_endline @@ Int64.to_string m.regs.(rind Rip)); step m done;
  m.regs.(rind Rax)

(* assembling and linking --------------------------------------------------- *)

(* A representation of the executable *)
type exec = { entry    : quad              (* address of the entry point *)
            ; text_pos : quad              (* starting address of the code *)
            ; data_pos : quad              (* starting address of the data *)
            ; text_seg : sbyte list        (* contents of the text segment *)
            ; data_seg : sbyte list        (* contents of the data segment *)
            }

(* Assemble should raise this when a label is used but not defined *)
exception Undefined_sym of lbl

(* Assemble should raise this when a label is defined more than once *)
exception Redefined_sym of lbl

(* Computes the size of the text segment in a program *)
let size_of_text_segment (p:prog) : quad =
  List.fold_left (fun acc elem ->
    match elem.asm with
    | Text instructions -> Int64.add acc (Int64.mul ins_size (Int64.of_int (List.length instructions))) (* acc + 8 * (length instructions) *)
    | Data _ -> acc  (* ignore data segments *)
  ) 0L p

let size_of_data_segment (p:prog) : quad =
  List.fold_left (fun acc elem ->
    match elem.asm with
    | Text _ -> acc  (* ignore text segments *)
    | Data data_list -> Int64.add acc (Int64.mul ins_size (Int64.of_int (List.length data_list))) (* acc + 8 * (length instructions) *)
  ) 0L p

let operand_addr_helper (imm: imm) (base_addr: quad) : (lbl * quad) list * quad =
  match imm with
  | Lbl lbl -> [(lbl, base_addr)], Int64.add base_addr ins_size
  | _ -> [], base_addr

let lbl_assign_addr (op: operand) (base_addr: quad) : (lbl * quad) list * quad =
  match op with
  | Imm imm | Ind1 imm | Ind3 (imm, _) -> operand_addr_helper imm base_addr
  | _ -> [], base_addr
  
let size_of_data_list (data_list: data list) : int =
  List.fold_left (fun acc data -> acc + match data with
    | Asciz s -> String.length s + 1  (* +1 for the null terminator *)
    | Quad _ -> 8
  ) 0 data_list
  
let sym_tbl_contains (lbl: lbl) (sym_tbl: (lbl * quad) list) : bool =
  List.exists (fun (label, _) -> label = lbl) sym_tbl
  

(* Builds a symbol table (i.e. a table that associates each label 
   with its absolute address) out of the given program.
*)
let build_symbol_tbl (p:prog) (base_addr_text:quad) (base_addr_data:quad) : (lbl * quad) list =
  let symbol_tbl = ref [] in
  let base_addr_text = ref base_addr_text in
  let base_addr_data = ref base_addr_data in
  List.iter (fun elem ->
    match elem.asm with
    | Text l -> (if not (sym_tbl_contains elem.lbl !symbol_tbl) then symbol_tbl := !symbol_tbl @ [(elem.lbl, !base_addr_text)] else raise (Redefined_sym elem.lbl));
      base_addr_text := Int64.add !base_addr_text (Int64.mul (Int64.of_int (List.length l)) ins_size)
    | Data l -> (if not (sym_tbl_contains elem.lbl !symbol_tbl) then symbol_tbl := !symbol_tbl @ [(elem.lbl, !base_addr_data)] else raise (Redefined_sym elem.lbl));
    base_addr_data := Int64.add !base_addr_data (Int64.of_int (size_of_data_list l))
  ) p;
  !symbol_tbl

let build_text_seg (p:prog) : sbyte list =
  List.fold_left (fun (acc:sbyte list) (e:elem) : sbyte list ->
    match e.asm with
    | Text ins_list -> acc @ (List.concat (List.map (fun ins -> (if !debug_simulator then print_endline @@ (string_of_ins ins)); sbytes_of_ins ins) ins_list))
    | Data _ -> acc
  ) [] p 

let build_data_seg (p:prog) : sbyte list =
  List.fold_left (fun (acc:sbyte list) (e:elem) : sbyte list ->
    match e.asm with
    | Text _ -> acc
    | Data data_list -> acc @ (List.concat (List.map sbytes_of_data data_list))
  ) [] p 

(* Looks up label inside symble table and returns absolute address *)
let rec sym_tbl_lookup (l:lbl) (sym_tbl:(lbl * quad) list) : quad = 
  match sym_tbl with
  | [] -> raise (Undefined_sym l)
  | ((label, addr) :: tbl) -> 
      if label = l then addr
      else sym_tbl_lookup l tbl

(* Iterates through program p and resolves all Lbls inside instructions to their absolute value based on the contents of sym_tbl, 
   or raises an Undefined_sym exception if a label cannot be found in sym_tbl 
*)
let resolve_lbls (sym_tbl: (lbl * quad) list) (p: prog) : prog =
  let resolve_operand = function
    | Imm (Lbl lbl) -> Imm (Lit (sym_tbl_lookup lbl sym_tbl))
    | Imm (Lit quad) -> Imm (Lit quad)
    | Ind1 (Lbl lbl) -> Ind1 (Lit (sym_tbl_lookup lbl sym_tbl))
    | Ind1 (Lit quad) -> Ind1 (Lit quad)
    | Ind3 (Lbl lbl, reg) -> Ind3 (Lit (sym_tbl_lookup lbl sym_tbl), reg)
    | Ind3 (Lit quad, reg) -> Ind3 (Lit quad, reg)
    | op -> op
  in
  List.map (fun elem ->
    match elem.asm with
    | Text instructions ->
        let new_instrs = List.map (fun (opcode, operands) ->
          (opcode, List.map resolve_operand operands)
        ) instructions in
        { elem with asm = Text new_instrs }
    | Data _ -> elem
  ) p
  
(* Convert an X86 program into an object file:
  - separate the text and data segments
  - compute the size of each segment
    Note: the size of an Asciz string section is (1 + the string length)
          due to the null terminator

  - resolve the labels to concrete addresses and 'patch' the instructions to 
    replace Lbl values with the corresponding Imm values.

  - the text segment starts at the lowest address
  - the data segment starts after the text segment

HINT: List.fold_left and List.fold_right are your friends.
*)
let assemble (p:prog) : exec =
  let text_pos = mem_bot in
  let data_pos = Int64.add text_pos (size_of_text_segment p) in
  let sym_table = build_symbol_tbl p text_pos data_pos in
  let resolved_prog = resolve_lbls sym_table p in
  let text_seg = build_text_seg resolved_prog in
  let data_seg = build_data_seg resolved_prog in 
  let entry = (sym_tbl_lookup "main" sym_table) in
  {entry = entry; text_pos = text_pos; data_pos = data_pos; text_seg = text_seg; data_seg = data_seg}

  (* Convert an object file into an executable machine state. 
    - allocate the mem array
    - set up the memory state by writing the symbolic bytes to the 
      appropriate locations 
    - create the inital register state
      - initialize rip to the entry point address
      - initializes rsp to the last word in memory 
      - the other registers are initialized to 0
    - the condition code flags start as 'false'

  Hint: The Array.make, Array.blit, and Array.of_list library functions 
  may be of use.
*)
let load {entry; text_pos; data_pos; text_seg; data_seg} : mach = 
  let flags = { fo = false; fs = false; fz = false } in
  let last_word_addr = Int64.sub mem_top ins_size in
  let regs = (Array.make nregs 0L) in
  regs.(rind Rip) <- entry; (* Initialize the `rip` register to the entry point address *)
  regs.(rind Rsp) <- last_word_addr; (* Initialize the `rip` register to the entry point address *)
  let mem = Array.make mem_size InsFrag in
  let text_seg_arr = Array.of_list text_seg in
  let data_seg_arr = Array.of_list data_seg in
  Array.blit text_seg_arr 0 mem (Int64.to_int (Int64.sub text_pos mem_bot)) (List.length text_seg);
  Array.blit data_seg_arr 0 mem (Int64.to_int (Int64.sub data_pos mem_bot)) (List.length data_seg);
  Array.blit (Array.of_list (sbytes_of_int64 exit_addr)) 0 mem (Int64.to_int (Int64.sub (Int64.of_int mem_size) ins_size)) (Int64.to_int ins_size);
  {flags = flags; regs = regs; mem = mem}