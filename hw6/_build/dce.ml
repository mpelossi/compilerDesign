open Ll
open Datastructures


(* expose a top-level analysis operation ------------------------------------ *)
(* TASK: This function should optimize a block by removing dead instructions
   - lb: a function from uids to the live-OUT set at the 
     corresponding program point
   - ab: the alias map flowing IN to each program point in the block
   - b: the current ll block

   Note: 
     Call instructions are never considered to be dead (they might produce
     side effects)

     Store instructions are not dead if the pointer written to is live _or_
     the pointer written to may be aliased.

     Other instructions are dead if the value they compute is not live.

   Hint: Consider using List.filter
 *)
let dce_block (lb:uid -> Liveness.Fact.t) 
              (ab:uid -> Alias.fact)
              (b:Ll.block) : Ll.block =

  (* Check whether a given uid is not live at a given program point *)
  let uid_is_dead uid_here point_uid =
    not (UidS.mem uid_here (lb point_uid))
  in

  (* Check if a pointer uid may be aliased *)
  let ptr_non_aliased ptr_uid point_uid =
    match UidM.find_opt ptr_uid (ab point_uid) with
    | Some Alias.SymPtr.MayAlias -> false
    | _ -> true
  in

  (* Determine if an instruction is dead based on the rules *)
  let is_dead_ins ((uid, instr) : uid * insn) : bool =
    match instr with
    | Call _ ->
      (* Calls may have side-effects, never dead *)
      false

    | Store (_, _, Id dest_uid) ->
      (* Store is dead if destination is not live AND not aliased *)
      ptr_non_aliased dest_uid uid && uid_is_dead dest_uid uid

    | Store _ ->
      (* If store's destination is not a uid (like a Gid or Null), we assume not dead *)
      false

    | Binop _ | Alloca _ | Load _ | Icmp _ | Bitcast _ | Gep _ ->
      (* For instructions that produce a value, check if that value is dead *)
      uid_is_dead uid uid
  in

  let filtered_insns = List.filter (fun i -> not (is_dead_ins i)) b.insns in
  { insns = filtered_insns; term = b.term }

let run (lg:Liveness.Graph.t) (ag:Alias.Graph.t) (cfg:Cfg.t) : Cfg.t =
  LblS.fold (fun l acc_cfg ->
    let blk = Cfg.block acc_cfg l in
    let lb = Liveness.Graph.uid_out lg l in
    let ab = Alias.Graph.uid_in ag l in
    let blk' = dce_block lb ab blk in
    Cfg.add_block l blk' acc_cfg
  ) (Cfg.nodes cfg) cfg
