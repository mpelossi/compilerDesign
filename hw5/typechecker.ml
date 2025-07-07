open Ast
open Astlib
open Tctxt

(* Error Reporting ---------------------------------------------------------- *)
(* NOTE: Use type_error to report error messages for ill-typed programs. *)

exception TypeError of string

let type_error (l : 'a node) err = 
  let (_, (s, e), _) = l.loc in
  raise (TypeError (Printf.sprintf "[%d, %d] %s" s e err))


(* initial context: G0 ------------------------------------------------------ *)
(* The Oat types of the Oat built-in functions *)
let builtins =
  [ "array_of_string",  ([TRef RString],  RetVal (TRef(RArray TInt)))
  ; "string_of_array",  ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", ([TRef RString],  RetVal TInt)
  ; "string_of_int",    ([TInt], RetVal (TRef RString))
  ; "string_cat",       ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     ([TRef RString],  RetVoid)
  ; "print_int",        ([TInt], RetVoid)
  ; "print_bool",       ([TBool], RetVoid)
  ]

(* binary operation types --------------------------------------------------- *)
let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)
  | Eq | Neq -> failwith "typ_of_binop called on polymorphic == or !="

(* unary operation types ---------------------------------------------------- *)
let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)

(* subtyping ---------------------------------------------------------------- *)
(* Decides whether H |- t1 <: t2 
    - assumes that H contains the declarations of all the possible struct types

    - you will want to introduce addition (possibly mutually recursive) 
      helper functions to implement the different judgments of the subtyping
      relation. We have included a template for subtype_ref to get you started.
      (Don't forget about OCaml's 'and' keyword.)
*)
let rec take n list =
  match list with
  | [] -> []
  | head :: tail -> if n <= 0 then [] else head :: take (n - 1) tail

let rec subtype (c : Tctxt.t) (t1 : Ast.ty) (t2 : Ast.ty) : bool =
  match t1, t2 with
  | TInt, TInt -> true
  | TBool, TBool -> true
  | TNullRef x, TNullRef y -> subtype_ref c x y
  | TRef x, TNullRef y -> subtype_ref c x y
  | TRef x, TRef y -> subtype_ref c x y
  | _ -> false

(* Decides whether H |-r ref1 <: ref2 *)
and subtype_ref (c : Tctxt.t) (t1 : Ast.rty) (t2 : Ast.rty) : bool =
  match t1, t2 with
  | RString, RString -> true
  | RArray x, RArray y -> x = y
  | RStruct s1, RStruct s2 ->
    if is_prefix (Tctxt.lookup_struct s1 c) (Tctxt.lookup_struct s2 c) then true
    else false
  | RFun (par1, ret1), RFun (par2, ret2) ->
    List.length par1 = List.length par2
    && List.for_all2 (subtype c) par2 par1
    && subtype_retty c ret1 ret2
  | _ -> false

(* Decides whether H |-rt rt1 <: rt2 *)
and subtype_retty (c : Tctxt.t) (t1 : Ast.ret_ty) (t2 : Ast.ret_ty) : bool = 
  match t1, t2 with
  | RetVoid, RetVoid -> true
  | RetVal v1, RetVal v2 -> subtype c v1 v2
  | _ -> false

and is_prefix list2 list1 : bool =
  let len1 = List.length list1 in
  let len2 = List.length list2 in
  len1 <= len2 &&
  (try List.for_all2 (fun x y -> x = y) list1 (take len1 list2)
  with Invalid_argument _ -> false)

(* well-formed types -------------------------------------------------------- *)
(* Implement a (set of) functions that check that types are well formed according
   to the H |- t and related inference rules

    - the function should succeed by returning () if the type is well-formed
      according to the rules

    - the function should fail using the "type_error" helper function if the 
      type is not well-formed

    - l is just an ast node that provides source location information for
      generating error messages (it's only needed for the type_error generation)

    - tc contains the structure definition context
 *)
let rec typecheck_ty (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ty) : unit =
  match t with
  | TInt | TBool -> ()
  | TRef ref_type | TNullRef ref_type -> typecheck_ref l tc ref_type
  | _ -> type_error l "Invalid type"

and typecheck_ref (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.rty) : unit =
  match t with
  | RString -> ()
  | RArray elem_type -> typecheck_ty l tc elem_type
  | RStruct struct_name -> 
      if Tctxt.lookup_struct_option struct_name tc = None then type_error l "Undefined struct type"
  | RFun (param_types, ret_type) -> 
      List.iter (typecheck_ty l tc) param_types;
      typecheck_retty l tc ret_type
  | _ -> type_error l "Invalid reference type"

and typecheck_retty (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ret_ty) : unit =
  match t with
  | RetVoid -> ()
  | RetVal value_type -> typecheck_ty l tc value_type

(* typechecking expressions ------------------------------------------------- *)
(* Typechecks an expression in the typing context c, returns the type of the
   expression.  This function should implement the inference rules given in the
   oad.pdf specification.  There, they are written:

       H; G; L |- exp : t

   See tctxt.ml for the implementation of the context c, which represents the
   four typing contexts: H - for structure definitions G - for global
   identifiers L - for local identifiers

   Returns the (most precise) type for the expression, if it is type correct
   according to the inference rules.

   Uses the type_error function to indicate a (useful!) error message if the
   expression is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   Notes: - Structure values permit the programmer to write the fields in any
   order (compared with the structure definition).  This means that, given the
   declaration struct T { a:int; b:int; c:int } The expression new T {b=3; c=4;
   a=1} is well typed.  (You should sort the fields to compare them.)

*)


type decls = { gvars: gdecl list; gfuncs: fdecl list; gstructs: tdecl list }
let decls = ref { gvars = []; gfuncs = []; gstructs = [] }
let add_gvar_decl (decl:gdecl) : unit = 
  decls := { gvars = !decls.gvars @ [decl]; gfuncs = !decls.gfuncs; gstructs = !decls.gstructs }
  
let add_func_decl (decl:fdecl) : unit = 
  decls := { gvars = !decls.gvars; gfuncs = !decls.gfuncs @ [decl]; gstructs = !decls.gstructs }

let add_struct_decl (decl:tdecl) : unit = 
  decls := { gvars = !decls.gvars; gfuncs = !decls.gfuncs; gstructs = !decls.gstructs @ [decl] }

let lookup_gvar (id:id) : gdecl option =
  let rec lookup_helper (id:id) (gdecls:gdecl list) : gdecl option =
    match gdecls with
    | [] -> None
    | (gvar :: gvars) -> if gvar.name = id then Some gvar else lookup_helper id gvars
  in
  lookup_helper id !decls.gvars

let exist_local (x : Ast.id) (tc : Tctxt.t) : bool =
  match Tctxt.lookup_local_option x tc with
  | None -> false
  | Some x -> true

let exist_global (x : Ast.id) (tc : Tctxt.t) : bool =
  match Tctxt.lookup_global_option x tc with
  | None -> false
  | Some x -> true

let rec typecheck_exp (c : Tctxt.t) (e : Ast.exp node) : Ast.ty =
  match e.elt with
  | CNull x -> 
    typecheck_ref e c x;
    TNullRef x
  | CBool _ -> TBool
  | CInt _ -> TInt
  | CStr _ -> TRef RString
  | Id x -> 
    (match Tctxt.lookup_option x c with
      | None -> type_error e ("Undefined Identifier " ^ x)
      | Some ty -> ty)
  | CArr (x, y) ->
    typecheck_ty e c x;
    List.iter 
      (fun t -> 
        let ty = typecheck_exp c t in
        if not (subtype c ty x) then type_error t "Array element type does not match array type") y;
    TRef (RArray x)
  | NewArr (ty, x, y, z) ->
    typecheck_ty e c ty;
    let ty_x = typecheck_exp c x in
    if not (subtype c ty_x TInt) then type_error x "Array size expression must be of type int";
    if exist_local y c then type_error e "Variable already exists"
    else let ty_z = typecheck_exp (Tctxt.add_local c y TInt) z in
      if not (subtype c ty_z ty) then type_error z "Array initialization expression type does not match array type";
    TRef (RArray ty)
  | Index (x, y) -> 
    let ty_x = typecheck_exp c x in
    let ty_y = typecheck_exp c y in
    if not (subtype c ty_y TInt) then type_error y "Array index must be of type int";
    (match ty_x with
      | TRef (RArray x) -> x
      | _ -> type_error x "Invalid array type for indexing")
  | Length x -> 
    let ty_x = typecheck_exp c x in
    (match ty_x with
      | TRef (RArray _) -> TInt
      | _ -> type_error x "Invalid type for length operation")
  | CStruct (x, y) ->
    (match Tctxt.lookup_struct_option x c with
      | None -> type_error e ("Invalid struct reference " ^ x)
      | Some fields ->
        if List.length y <> List.length fields then type_error e "Invalid number of arguments");
    List.iter 
      (fun (id, exp) ->
        let field_ty = typecheck_exp c exp in
        let field_opt_ty = lookup_field_option x id c in
        (match field_opt_ty with
          | None -> type_error e ("Undefined field " ^ id ^ " in struct type " ^ x)
          | Some declared_ty ->
            if not (subtype c field_ty declared_ty) then 
              type_error exp "Field type does not match struct field type")) y;
      TRef (RStruct x)
  | Proj (x, y) ->
    let ty_x = typecheck_exp c x in
    (match ty_x with
      | TRef (RStruct z) ->
        (match lookup_field_option z y c with
        | None -> type_error e ("Undefined field " ^ y ^ " in struct " ^ z)
        | Some ty -> ty)
      | _ -> type_error x "Invalid projection on non-struct type")
  | Call (x, y) ->
    let ty_x = typecheck_exp c x in
    let ret_converter = function
      | Ast.RetVoid -> type_error x "Cannot convert RetVoid to ty"
      | Ast.RetVal ty -> ty
    in
    (match ty_x with
      | TRef (RFun (arg_tys, ret_ty)) ->
        if List.length y <> List.length arg_tys then type_error e "Invalid number of arguments" else
        List.iter2 
          (fun arg def_ty ->
            let actual_ty = typecheck_exp c arg in
            if not (subtype c actual_ty def_ty) then 
              type_error arg "Argument type does not match function parameter type") y arg_tys;
          ret_converter ret_ty
      | _ -> type_error x ("Call operation is only valid on functions -- got " ^ (string_of_ty ty_x)))
  | Bop (op, y, z) ->
    (match op with
      | Eq | Neq -> 
        let ty_y = typecheck_exp c y in
        let ty_z = typecheck_exp c z in
        if not (subtype c ty_y ty_z) || not (subtype c ty_z ty_y) then type_error e "Invalid operand types for equality"; TBool
      | Add | Mul | Sub | Shr | Shl | Sar | IAnd | IOr ->
        let ty_y = typecheck_exp c y in
        let ty_z = typecheck_exp c z in
        if not (subtype c ty_y TInt) || not (subtype c ty_z TInt) then type_error e "Invalid operand types for arithmetic"; TInt
      | Lt | Lte | Gt | Gte ->
        let ty_y = typecheck_exp c y in
        let ty_z = typecheck_exp c z in
        if not (subtype c ty_y TInt) || not (subtype c ty_z TInt) then type_error e "Invalid operand types for comparison"; TBool
      | And | Or ->
        let ty_y = typecheck_exp c y in
        let ty_z = typecheck_exp c z in
        if not (subtype c ty_y TBool) || not (subtype c ty_z TBool) then type_error e "Invalid operand types for logical operations"; TBool)
      | Uop (op, y) ->
        (match op with
          | Neg | Bitnot -> 
            let ty_y = typecheck_exp c y in
            if not (subtype c ty_y TInt) then type_error e "Invalid operand type for unary operation"; TInt
          | Lognot ->
            let ty_y = typecheck_exp c y in
            if not (subtype c ty_y TBool) then type_error e "Invalid operand type for logical not"; TBool)

(* statements --------------------------------------------------------------- *)

(* Typecheck a statement 
   This function should implement the statement typechecking rules from oat.pdf.  

   Inputs:
    - tc: the type context
    - s: the statement node
    - to_ret: the desired return type (from the function declaration)

   Returns:
     - the new type context (which includes newly declared variables in scope
       after this statement
     - A boolean indicating the return behavior of a statement:
        false:  might not return
        true: definitely returns 

        in the branching statements, both branches must definitely return

        Intuitively: if one of the two branches of a conditional does not 
        contain a return statement, then the entier conditional statement might 
        not return.
  
        looping constructs never definitely return 

   Uses the type_error function to indicate a (useful!) error message if the
   statement is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   - You will probably find it convenient to add a helper function that implements the 
     block typecheck rules.
*)

let rec lhs_id (e:exp node) : id =
  match e.elt with
  | Id x -> x
  | Proj (x, y) -> lhs_id x
  | Index (x, y) -> lhs_id x
  | Call (fname, _) -> lhs_id fname
  | _ -> type_error e "Invalid J"
  
let rec typecheck_stmt (tc : Tctxt.t) (s:Ast.stmt node) (to_ret:ret_ty) : Tctxt.t * bool =
  match s.elt with
  | Assn (x, y) -> 
    let lhs = lhs_id x in
    let ty1 = typecheck_exp tc x in
    let ty2 = typecheck_exp tc y in
    (match ty1 with
     | TRef (RFun _) -> 
       if exist_global lhs tc && not (exist_local lhs tc) then 
         type_error x "Cannot assign values to a function reference"
     | _ -> ());
    if not (subtype tc ty2 ty1) then type_error s "Type mismatch in assignment";
    (tc, false)
  | Decl (id, e) ->
    let ty = typecheck_exp tc e in
    if exist_local id tc then type_error s "Variable already declared";
    (add_local tc id ty, false)
  | Ret e ->
    (match e with
     | Some e ->
       let ty = typecheck_exp tc e in
       if not (subtype_retty tc (RetVal ty) to_ret) then type_error s "Return type mismatch";
       (tc, true)
     | None ->
       if not (subtype_retty tc RetVoid to_ret) then type_error s "Void return type mismatch";
       (tc, true))
  | SCall (x, y) -> 
    let ty = typecheck_exp tc x in
    (match ty with
     | TRef (RFun (arg_tys, ret_ty)) ->
       if List.length y <> List.length arg_tys then type_error s "Invalid number of arguments";
       if ret_ty <> RetVoid then  type_error x "Non-void function call result not assigned";
       List.iter2 (fun arg arg_ty ->
         let arg_ty' = typecheck_exp tc arg in
         if not (subtype tc arg_ty' arg_ty) then type_error arg "Argument type mismatch") y arg_tys;
       (tc, false)
     | _ -> type_error x "Invalid function call")
  | If (x, y, z) -> 
    let cond_ty = typecheck_exp tc x in
    if not (subtype tc cond_ty TBool) then type_error x "Condition in if statement must be boolean";
    let (_, ret1) = typecheck_blk tc y to_ret in
    let (_, ret2) = typecheck_blk tc z to_ret in
    (tc, ret1 && ret2)
  | Cast (re_ty, id, exp, then_blk, else_blk) ->
    let exp_ty = typecheck_exp tc exp in
    let exp_rty =
      match exp_ty with
      | TNullRef exp_rty -> exp_rty
      | TRef _ -> type_error exp "Cannot cast from non-nullable reference"
      | _ -> type_error exp "Invalid cast source type"
    in
    if not (subtype_ref tc exp_rty re_ty) then type_error exp "Invalid cast: source type not a subtype of destination type";
    let tc' = add_local tc id (TRef re_ty) in
    let (_, then_ret) = typecheck_blk tc' then_blk to_ret in
    let (_, else_ret) = typecheck_blk tc else_blk to_ret in
    (tc, then_ret && else_ret)
  | While (x, y) -> 
    let cond_ty = typecheck_exp tc x in
    if not (subtype tc cond_ty TBool) then type_error x "Condition in while loop must be boolean";
    let (_, _) = typecheck_blk tc y to_ret in
    (tc, false)
  | For (inits, cond, update, body) ->
    let tc' = List.fold_left typecheck_vdecl tc inits in
    (match cond with
     | Some exp -> 
       let cond_ty = typecheck_exp tc' exp in
       if not (subtype tc' cond_ty TBool) then 
        type_error exp "Condition in for loop must be boolean"
    | None -> ());
   (match update with
    | Some stmt -> 
      let (_, update_ret) = typecheck_stmt tc' stmt to_ret in
      if update_ret then type_error stmt "For loop update statement must not return"
    | None -> ());
   let (_, _) = typecheck_blk tc' body to_ret in
   (tc, false)

and typecheck_blk (tc : Tctxt.t) (stmts : stmt node list) (to_ret : ret_ty) : Tctxt.t * bool =
  match stmts with
  | [] -> (tc, false)
  | [stmt] -> typecheck_stmt tc stmt to_ret
  | stmt :: rest ->
    let (tc', ret) = typecheck_stmt tc stmt to_ret in
    if ret then type_error stmt "Only the last statement in a block can return a value";
    typecheck_blk tc' rest to_ret

and typecheck_vdecl (tc : Tctxt.t) (vdecl : Ast.vdecl) : Tctxt.t =
  let (id, exp) = vdecl in
  let ty = typecheck_exp tc exp in
  if exist_local id tc then type_error exp "Variable already declared";
  add_local tc id ty

(* struct type declarations ------------------------------------------------- *)
(* Here is an example of how to implement the TYP_TDECLOK rule, which is 
   is needed elswhere in the type system.
 *)

(* Helper function to look for duplicate field names *)
let rec check_dups (fields : Ast.field list) : bool =
  match fields with
  | [] -> false
  | h :: t -> List.exists (fun x -> x.fieldName = h.fieldName) t || check_dups t

let typecheck_tdecl (tc : Tctxt.t) (id : id) (fields : Ast.field list) (l : 'a Ast.node) : unit =
  if check_dups fields then  type_error l ("Repeated fields in struct " ^ id)
  else List.iter (fun field -> typecheck_ty l tc field.ftyp) fields

(* function declarations ---------------------------------------------------- *)
(* typecheck a function declaration 
    - extends the local context with the types of the formal parameters to the 
      function
    - typechecks the body of the function (passing in the expected return type
    - checks that the function actually returns
*)

let check_dups_args (args : id list) : bool =
  let unique_args = List.sort_uniq compare args in
  List.length unique_args <> List.length args

let typecheck_fdecl (tc : Tctxt.t) (f : Ast.fdecl) (l : 'a Ast.node) : unit =
  if check_dups_args (List.map snd f.args) then 
    type_error l ("Duplicate argument names in function " ^ f.fname)
  else 
    let tc' = List.fold_left (fun ctxt (ty, id) -> Tctxt.add_local ctxt id ty) tc f.args in
    let (_, returns) = typecheck_blk tc' f.body f.frtyp in
    if not returns then type_error l ("Function " ^ f.fname ^ " must return")

(* creating the typchecking context ----------------------------------------- *)

(* The following functions correspond to the
   judgments that create the global typechecking context.

   create_struct_ctxt: - adds all the struct types to the struct 'H'
   context (checking to see that there are no duplicate fields

     H |-s prog ==> H'


   create_function_ctxt: - adds the the function identifiers and their
   types to the 'G' context (ensuring that there are no redeclared
   function identifiers)

     H ; G1 |-f prog ==> G2


   create_global_ctxt: - typechecks the global initializers and adds
   their identifiers to the 'G' global context

     H ; G1 |-g prog ==> G2    


   NOTE: global initializers may mention function identifiers as
   constants, but can't mention other global values *)

let create_struct_ctxt (p:Ast.prog) : Tctxt.t =
  let add_struct_to_ctxt (prev_ctxt : Tctxt.t) (d : decl) : Tctxt.t =
    match d with
    | Gtdecl { elt = struct_decl; loc = l } ->
      let struct_id, fields = struct_decl in
      if Tctxt.lookup_struct_option struct_id prev_ctxt <> None then
        type_error { elt = struct_decl; loc = l } ("Duplicate struct definition: " ^ struct_id)
      else (
        add_struct_decl struct_decl;
        Tctxt.add_struct prev_ctxt struct_id fields
      )
    | _ -> prev_ctxt
  in
  List.fold_left add_struct_to_ctxt Tctxt.empty p

let create_function_ctxt (tc : Tctxt.t) (p : Ast.prog) : Tctxt.t =
  let add_builtin (prev_ctxt : Tctxt.t) ((fname, (params, ret_ty)) : id * (ty list * ret_ty)) : Tctxt.t =
    Tctxt.add_global prev_ctxt fname (TRef (RFun (params, ret_ty)))
  in
  let tc = List.fold_left add_builtin tc builtins in
  let add_function_to_ctxt (prev_ctxt : Tctxt.t) (d : decl) : Tctxt.t =
    match d with
    | Gfdecl { elt = func_decl; loc = l } ->
      if Tctxt.lookup_global_option func_decl.fname prev_ctxt <> None then
        type_error { elt = func_decl; loc = l } ("Duplicate function definition: " ^ func_decl.fname)
      else (
        add_func_decl func_decl;
        let ret_ty = match func_decl.frtyp with
          | RetVal ty -> RetVal ty
          | RetVoid -> RetVoid
        in
        Tctxt.add_global prev_ctxt func_decl.fname (TRef (RFun (List.map fst func_decl.args, ret_ty)))
      )
    | _ -> prev_ctxt
  in
  List.fold_left add_function_to_ctxt tc p
  
let create_global_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  let tc = { structs = tc.structs; globals = tc.globals; locals = tc.locals } in
  let fold_func = 
    fun (prev_ctxt:Tctxt.t) (d:decl) : Tctxt.t -> 
      match d with
      | Gvdecl { elt = decl ; loc = l } -> 
        if Tctxt.lookup_global_option decl.name prev_ctxt <> None then 
          type_error { elt = decl ; loc = l } ("Duplicate global value definition " ^ decl.name)
        else
          add_gvar_decl decl;
          let ty = 
          match decl.init.elt with
            | CNull rty -> (TNullRef rty)
            | CBool _ -> TBool
            | CInt _ -> TInt
            | CStr _ -> TRef RString
            | Id id ->
              if lookup_gvar id <> None then type_error decl.init "Global variable instantiation cannot contain global variables." else
              let looked_up_id = Tctxt.lookup_global_option id prev_ctxt in
              begin match looked_up_id with
                | Some ty -> ty
                | None -> type_error decl.init ("Undefined symbol " ^ id)
              end
            | CArr (ty, elems) -> 
              let _ = List.map (typecheck_exp prev_ctxt) elems in
              TRef (RArray ty)
            | NewArr (ty, count_exp, _, init_exp) -> 
              let _ = typecheck_exp prev_ctxt count_exp in
              let _ = typecheck_exp prev_ctxt init_exp in
              TRef (RArray ty)
            | Index (arr_exp_node, index_exp_node) -> 
              let arr_ty = typecheck_exp prev_ctxt arr_exp_node in
              let _ = typecheck_exp prev_ctxt index_exp_node in
              begin match arr_ty with
                | TRef (RArray ty) -> ty
                | _ -> type_error arr_exp_node decl.name
              end
            | Length exp -> 
              let _ = typecheck_exp prev_ctxt exp in
              TInt
            | CStruct (id, []) -> type_error decl.init ("Cannot initialize var " ^ decl.name ^ " to empty struct " ^ id)
            | CStruct (id, fields) -> 
              let _ = List.map (fun (field: id * exp node) -> typecheck_exp prev_ctxt (snd field)) fields in
              TRef (RStruct id)
            | Proj (struct_exp_node, id) ->
              begin match struct_exp_node.elt with
                | CStruct (s_name, _) -> 
                  let field = lookup_field_option s_name id prev_ctxt in
                  begin match field with
                    | None -> type_error struct_exp_node id
                    | Some ty -> ty
                  end
                | _ -> type_error struct_exp_node id
              end
            | Call (f_exp, args) -> 
              let f_type = typecheck_exp prev_ctxt f_exp in
              let _ = List.map (typecheck_exp prev_ctxt) args in
              begin match f_type with
                | TRef (RFun (_, RetVal ty)) -> ty
                | _ -> type_error f_exp ("Could not get return type of function call")
              end
            | Bop (binop, lhs_exp, rhs_exp) -> 
              let _ = typecheck_exp prev_ctxt lhs_exp in
              let _ = typecheck_exp prev_ctxt rhs_exp in
              let _, _, re_ty = typ_of_binop binop in
              re_ty
            | Uop (unop, exp) -> 
              let _ = typecheck_exp prev_ctxt exp in
              snd (typ_of_unop unop)
          in
          Tctxt.add_global prev_ctxt decl.name ty
      | _ -> prev_ctxt
  in
  let final_ctxt = List.fold_left fold_func tc p in
  final_ctxt

(* This function implements the |- prog and the H ; G |- prog 
   rules of the oat.pdf specification.   
*)
let typecheck_program (p:Ast.prog) : unit =
  let sc = create_struct_ctxt p in
  let fc = create_function_ctxt sc p in
  let tc = create_global_ctxt fc p in
  List.iter (fun p ->
    match p with
    | Gfdecl ({elt=f} as l) -> typecheck_fdecl tc f l
    | Gtdecl ({elt=(id, fs)} as l) -> typecheck_tdecl tc id fs l 
    | _ -> ()) p