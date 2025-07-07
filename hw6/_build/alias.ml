open Ll
open Datastructures

module SymPtr =
  struct
    type t = MayAlias | Unique | UndefAlias
    let compare = Pervasives.compare
    let to_string = function
      | MayAlias -> "MayAlias"
      | Unique -> "Unique"
      | UndefAlias -> "UndefAlias"
  end

type fact = SymPtr.t UidM.t

(* Helper functions for insn_flow *)
let add_mayalias u m = UidM.add u SymPtr.MayAlias m
let add_unique u m = UidM.add u SymPtr.Unique m

(* If an instruction might introduce aliases or produce unique pointers *)
let insn_flow ((u,i):uid * insn) (d:fact) : fact =
  match i with
  | Alloca _ ->
    (* Allocation defines a unique name for a stack slot *)
    add_unique u d

  | Load (Ptr (Ptr _), _) ->
    (* A pointer returned by load may be aliased *)
    add_mayalias u d

  | Store (Ptr _, Id ptr_id, _) ->
    (* A pointer passed as an arg to store may be aliased *)
    add_mayalias ptr_id d

  | Call (ty, _, args) ->
    (* A pointer returned by call may be aliased if it's of ptr type *)
    let d' = (match ty with Ptr _ -> add_mayalias u d | _ -> d) in
    List.fold_left (fun acc (_,op) ->
      match op with Id x -> add_mayalias x acc | _ -> acc) d' args

  | Bitcast (Ptr _, Id src, Ptr _) ->
    (* Bitcast from ptr -> ptr: result and src may be aliased *)
    add_mayalias u (add_mayalias src d)

  | Bitcast (Ptr _, Id src, _) ->
    (* Passing a pointer as argument also may alias *)
    add_mayalias src d

  | Bitcast (_, _, Ptr _) ->
    add_mayalias u d

  | Gep (Ptr _, Id src, _) ->
    (* GEP that returns a pointer is aliased, and so is the src pointer *)
    add_mayalias u (add_mayalias src d)

  | Gep _ ->
    (* If GEP returns a pointer, it's aliased *)
    add_mayalias u d

  | _ ->
    (* Other instructions do not define pointers or affect aliasing *)
    d

let terminator_flow _ d = d

module Fact =
  struct
    type t = fact
    let forwards = true
    let insn_flow = insn_flow
    let terminator_flow = terminator_flow

    let normalize d =
      UidM.filter (fun _ v -> v != SymPtr.UndefAlias) d

    let compare d e =
      UidM.compare SymPtr.compare (normalize d) (normalize e)

    let to_string d = UidM.to_string (fun _ v -> SymPtr.to_string v) d

    (* Combine facts: if any predecessor says MayAlias, result is MayAlias *)
    let combine ds =
      let join x y =
        match x,y with
        | Some SymPtr.MayAlias, _
        | _, Some SymPtr.MayAlias -> Some SymPtr.MayAlias
        | Some SymPtr.Unique, Some SymPtr.Unique -> Some SymPtr.Unique
        | Some SymPtr.Unique, None -> Some SymPtr.Unique
        | None, Some SymPtr.Unique -> Some SymPtr.Unique
        | None, None -> None
        | _ -> Some SymPtr.MayAlias
      in
      List.fold_left (fun acc d ->
        UidM.merge (fun _ a b -> join a b) acc d
      ) UidM.empty ds
  end

module Graph = Cfg.AsGraph(Fact)
module Solver = Solver.Make(Fact)(Graph)

let analyze (g:Cfg.t) : Graph.t =
  let init _ = UidM.empty in
  let alias_in =
    List.fold_right (fun (u,t) m ->
      match t with
      | Ptr _ -> UidM.add u SymPtr.MayAlias m
      | _ -> m)
    g.Cfg.args UidM.empty
  in
  let fg = Graph.of_cfg init alias_in g in
  Solver.solve fg
