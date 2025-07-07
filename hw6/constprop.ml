open Ll
open Datastructures

(* The lattice of symbolic constants ---------------------------------------- *)
module SymConst =
  struct
    type t = NonConst | Const of int64 | UndefConst

    let compare s t =
      match s,t with
      | Const i, Const j -> Int64.compare i j
      | NonConst, NonConst | UndefConst, UndefConst -> 0
      | NonConst, _ | _, UndefConst -> 1
      | UndefConst, _ | _, NonConst -> -1

    let to_string = function
      | NonConst -> "NonConst"
      | Const i -> Printf.sprintf "Const(%Ld)" i
      | UndefConst -> "UndefConst"
  end

(* The analysis computes, at each program point, which UIDs in scope will evaluate 
   to integer constants *)
type fact = SymConst.t UidM.t

(* Helper functions for operand evaluation *)
let get_val (o:operand) (d:fact) : SymConst.t =
  match o with
  | Const c -> SymConst.Const c
  | Id x | Gid x -> (match UidM.find_opt x d with Some v -> v | None -> SymConst.NonConst)
  | Null -> SymConst.NonConst

let eval_binop bop v1 v2 =
  match bop with
  | Add -> Int64.add v1 v2
  | Sub -> Int64.sub v1 v2
  | Mul -> Int64.mul v1 v2
  | Shl -> Int64.shift_left v1 (Int64.to_int v2)
  | Lshr -> Int64.shift_right_logical v1 (Int64.to_int v2)
  | Ashr -> Int64.shift_right v1 (Int64.to_int v2)
  | And -> Int64.logand v1 v2
  | Or -> Int64.logor v1 v2
  | Xor -> Int64.logxor v1 v2

let eval_icmp cnd v1 v2 =
  let b = match cnd with
    | Eq -> v1 = v2
    | Ne -> v1 <> v2
    | Slt -> v1 < v2
    | Sle -> v1 <= v2
    | Sgt -> v1 > v2
    | Sge -> v1 >= v2
  in if b then 1L else 0L

let insn_flow (u,i) (d:fact) : fact =
  let set v = UidM.add u v d in
  match i with
  | Binop (bop,_,op1,op2) ->
    let v1 = get_val op1 d and v2 = get_val op2 d in
    (match v1,v2 with
     | SymConst.Const c1, SymConst.Const c2 -> set (SymConst.Const (eval_binop bop c1 c2))
     | SymConst.UndefConst, _ | _, SymConst.UndefConst -> set SymConst.UndefConst
     | _ -> set SymConst.NonConst)

  | Icmp (cnd,_,op1,op2) ->
    let v1 = get_val op1 d and v2 = get_val op2 d in
    (match v1,v2 with
     | SymConst.Const c1, SymConst.Const c2 -> set (SymConst.Const (eval_icmp cnd c1 c2))
     | SymConst.UndefConst, _ | _, SymConst.UndefConst -> set SymConst.UndefConst
     | _ -> set SymConst.NonConst)

  | Store (ty,_,_) ->
    (match ty with
     | Void -> set SymConst.UndefConst
     | _ -> d) (* store doesn't define u directly if not void *)

  | Call (ty,_,_) ->
    (match ty with
     | Void -> set SymConst.UndefConst
     | _ -> set SymConst.NonConst)

  | Alloca _ | Load _ | Bitcast _ | Gep _ ->
    set SymConst.NonConst

let terminator_flow _ d = d

module Fact =
  struct
    type t = fact
    let forwards = true
    let insn_flow = insn_flow
    let terminator_flow = terminator_flow

    let normalize d =
      UidM.filter (fun _ v -> v != SymConst.UndefConst) d

    let compare d e =
      UidM.compare SymConst.compare (normalize d) (normalize e)

    let to_string d =
      UidM.to_string (fun _ v -> SymConst.to_string v) d

    let combine ds =
      let meet c1 c2 =
        match c1,c2 with
        | SymConst.Const x, SymConst.Const y ->
          if x=y then SymConst.Const x else SymConst.NonConst
        | SymConst.UndefConst, SymConst.Const v
        | SymConst.Const v, SymConst.UndefConst -> SymConst.Const v
        | SymConst.UndefConst, SymConst.UndefConst -> SymConst.UndefConst
        | SymConst.UndefConst, NonConst
        | NonConst, UndefConst
        | NonConst, Const _
        | Const _, NonConst
        | NonConst, NonConst -> SymConst.NonConst
      in
      List.fold_left (fun acc d ->
        UidM.merge (fun _ a b ->
          match a,b with
          | None,None -> None
          | Some v, None -> Some v
          | None, Some v -> Some v
          | Some v1, Some v2 -> Some (meet v1 v2)
        ) acc d
      ) UidM.empty ds
  end

module Graph = Cfg.AsGraph(Fact)
module Solver = Solver.Make(Fact)(Graph)

(* expose a top-level analysis operation ------------------------------------ *)
let analyze (g:Cfg.t) : Graph.t =
  let init _ = UidM.empty in
  let cp_in =
    List.fold_right (fun (u,_) m ->
      UidM.add u SymConst.NonConst m
    ) g.Cfg.args UidM.empty
  in
  let fg = Graph.of_cfg init cp_in g in
  Solver.solve fg


(* run constant propagation on a cfg given analysis results ----------------- *)
(* HINT: your cp_block implementation will probably rely on several helper 
   functions.                                                                 *)
let run (cg:Graph.t) (cfg:Cfg.t) : Cfg.t =
  let rewrite_operand cb uid op =
    match op with
    | Id x | Gid x ->
      (match UidM.find_opt x (cb uid) with
       | Some (SymConst.Const c) -> Const c
       | _ -> op)
    | _ -> op
  in

  let cp_block (l:Ll.lbl) (cfg:Cfg.t) : Cfg.t =
    let b = Cfg.block cfg l in
    let cb = Graph.uid_out cg l in

    let rewrite_ins (uid,insn) =
      match insn with
      | Binop (bop,ty,op1,op2) ->
        (uid, Binop(bop, ty, rewrite_operand cb uid op1, rewrite_operand cb uid op2))
      | Icmp (cnd,ty,op1,op2) ->
        (uid, Icmp(cnd, ty, rewrite_operand cb uid op1, rewrite_operand cb uid op2))
      | Call (ty,op,ops) ->
        let ops' = List.map (fun (t,o) -> (t, rewrite_operand cb uid o)) ops in
        (uid, Call(ty, op, ops'))
      | Bitcast (t1,o,t2) ->
        (uid, Bitcast(t1, rewrite_operand cb uid o, t2))
      | Store (t,o1,o2) ->
        (uid, Store(t, rewrite_operand cb uid o1, o2))
      | _ -> (uid, insn)
    in

    let (tid,term) = b.term in
    let new_term =
      match term with
      | Ret (t, Some (Id x)) -> (tid, Ret(t, Some (rewrite_operand cb tid (Id x))))
      | Cbr (Id x, l1, l2) -> (tid, Cbr(rewrite_operand cb tid (Id x), l1, l2))
      | _ -> (tid, term)
    in

    let new_insns = List.map rewrite_ins b.insns in
    let new_block = { insns = new_insns; term = new_term } in
    Cfg.add_block l new_block cfg
  in

  LblS.fold cp_block (Cfg.nodes cfg) cfg
