HW6: Dataflow Analysis and Optimizations
 
Getting Started
Note: The compilation setup is the same as in HW5. You'll need Menhir for the parser. The Makefile has been adjusted to support newer Ocaml versions. You'll also need to add the nums and unix libraries to compile this project. If you use OCamlBuild, you can compile the project from the command line by running ocamlbuild -Is x86,util,ll -libs nums,unix,str -use-menhir main.native (or use the provided Makefile).

Many of the files in this project are taken from the earlier projects. The relevant project files and their uses are listed below. Only those preceeded with an asterisk will need to be modified for this assignment.

llprograms/*.ll   - example .ll programs used in testing
oatprograms/*.oat  - example .oat programs used in testing
hw5programs/*.oat  - example .oat programs used in testing

datastructures.ml - set and map modules (enhanced with printing)
cfg.ml            - "view" of LL control-flow graphs as dataflow graphs

analysis.ml       - helper functions for propagating dataflow facts

*solver.ml        - the general-purpose iterative dataflow analysis solver 
*alias.ml         - alias analysis
*dce.ml           - dead code elimination optimization 
*constprop.ml     - constant propagation analysis & optimization 

liveness.ml       - provided liveness analysis code
analysistests.ml  - test cases (for liveness, constprop, alias)

opt.ml            - optimizer that runs dce and constprop

*backend.ml       - you will implement register allocation heuristics here
registers.ml      - collects statistics about register usage 

*team.txt         - student numbers and names for your team 

----------------------------------------------------------------------------
(used in developing our tests, but perhaps useful to you:)
printanalysis.ml  - a standalone program to print the results of an analysis
Note: As usual, running main.native --test will run the test suite. main.native also now supports several new flags having to do with optimizations.

-O1 :  runs two iterations of (constprop followed by dce)
--liveness {trivial|dataflow} : select which liveness analysis to use for
                                register allocation
--regalloc {none|greedy|better} : select which register allocator to use   
--print-regs : print a histogram of the registers used
Overview
The OAT compiler we have developed so far produces very inefficient code, since it performs no optimizations at any stage of the compilation pipeline. In this project, you will implement several simple dataflow analyses and some optimizations at the level of our LLVMlite intermediate representation in order to improve code size and speed.

Provided Code
The provided code makes extensive use of modules, module signatures, and functors. These aid in code reuse and abstraction. If you need a refresher on OCaml functors, we recommend reading through the Chapter 9 of Real World OCaml.

In datastructures.ml, we provide you with a number of useful modules, module signatures, and functors for the assignment, including:

OrdPrintT: A module signature for a type which is both comparable and can be converted to a string for printing. This is used in conjunction with some of our other custom modules described below. Wrapper modules Lbl and Uid satisfying this signature are defined later in the file for the Ll.lbl and Ll.uid types.
SetS: A module signature for a module which extends OCaml's built-in sets to include string conversion and printing capabilities.
MakeSet: A functor which creates an extended set ( SetS) from a type which satisfies the OrdPrintT module signature. This is applied to the Lbl and Uid wrapper modules to create a label set module LblS and a UID set module UidS.
MapS: A module signature for a module which extends OCaml's built-in maps to include string conversion and printing capabilities. Three additional helper functions are also included: update for updating the value associated with a particular key, find_or for performing a map look-up with a default value to be supplied when the key is not present, and update_or for updating the value associated with a key if it is present, or adding an entry with a default value if not.
MakeMap: A functor which creates an extended map ( MapS) from a type which satisfies the OrdPrintT module signature. This is applied to the Lbl and Uid wrapper modules to create a label map module LblM and a UID map module UidM. These map modules have fixed key types, but are polymorphic in the types of their values.
Task I: Dataflow Analysis
Your first task is to implement a version of the worklist algorithm for solving dataflow flow equations presented in the lecture. Since we plan to implement several analyses, we'd like to reuse as much code as possible between each one. In the lecture, we saw that each analysis differs only in the choice of the lattice, "gen" and "kill" sets, the direction of the analysis, and whether we take the meet or join to compute the flow into a node. We can take advantage of this by writing a generic solver as an OCaml functor and instantiating it with these parameters.

The Algorithm
Assuming only that we have a directed graph where each node is labeled with a dataflow fact and a flow function, we can compute a fixpoint of the flow on the graph as follows:

let w = new set with all nodes
repeat until w is empty
  let n = w.pop()
  old_out = out[n]
  let in = combine(preds[n])
  out[n] := flow[n](in)
  if (!equal old_out out[n]),
    for all m in succs[n], w.add(m)
end
  
Here equal, combine and flow are abstract operations that will be instantiated with lattice equality, the meet operation and the flow function (e.g., defined by the gen and kill sets of the analysis), respectively. Similarly, preds and succs are the graph predecessors and successors in the flow graph, and do not correspond to the control flow of the program. They can be instantiated appropriately to create a forwards or backwards analysis.

Note: Don't try to use OCaml's polymorphic equality operator ( =) to compare old_out and out[n] -- that's reference equality, not structural equality. Use the supplied Fact.compare instead.

Getting Started and Testing
Be sure to review the comments in the DFA_GRAPH (data flow analysis graph) and FACT module signatures in solver.ml, which define the parameters of the solver. Make sure you understand what each declaration the signature does -- your solver will need to use each one (other than the printing functions)! It will be also helpful for you to understand the way that cfg.ml connects to the solver. Read the commentary there for more information.

Now implement the solver
Your first task is to fill in the solve function in the Solver.Make functor in solver.ml. The input to the function is a flow graph labeled with the initial facts. It should compute the fixpoint and return a graph with the corresponding labeling. You will find the set datatype from datastructures.ml useful for manipulating sets of nodes.

To test your solver, we have provided a full implementation of a liveness analysis in liveness.ml. Once you've completed the solver, the liveness tests in the test suite should all be passing. These tests compare the output of your solver on a number of programs with pre-computed solutions in analysistest.ml. Each entry in this file describes the set of uids that are live-in at a label in a program from ./llprograms. To debug, you can compare these with the output of the Graph.to_string function on the flow graphs you will be manipulating.

NOTE: the stand-alone program printanalysis.native can print out the results of a dataflow analysis for a given .ll program. You can build it by doing make printanalysis.native. It takes flags for each analysis (run with --help for a list).

Task II: Alias Analysis and Dead Code Elimination
The goal of this task is to implement a simple dead code elimination optimization that can also remove store instructions when we can prove that they have no effect on the result of the program. Although we already perform liveness analysis, it does not provide sufficient information to safely eliminate store instructions. Specifically, even if we determine that the destination pointer's UID is no longer live after a store and is not accessed by a load in the rest of the program, we still cannot remove the store instruction due to potential aliasing. In other words, the pointer may have aliases, and removing the store could affect other references to the same memory location. There are a number of ways this can happen after a pointer is returned by alloca:

The pointer is used as an argument to a getelementptr or bitcast instruction
The pointer is stored into memory and then later loaded
The pointer is passed as an argument to a function, which can manipulate it in arbitrary ways
Some pointers are never aliased. For example, the code generated by the Oat frontend for local variables. We can find such uses of alloca using a simple version of an alias analysis.

Alias Analysis
We have provided some code to get you started in alias.ml. You will have to fill in the flow function and lattice operations. The type of lattice elements, fact is a map from UIDs to symbolic pointers of type SymPtr.t. Your analysis should compute, at every program point, the set of UIDs of pointer type that are in scope and, additionally, whether that pointer is the unique name for a stack slot according to the rules above. See the comments in alias.ml for details.

Alias.insn_flow: the flow function over instructions
Alias.fact.combine: the combine function for alias facts
Dead Code Elimination
Now we can use our liveness and alias analyses to implement a dead code elimination pass. We will simply compute the results of the analysis at each program point, then iterate over the blocks of the CFG removing any instructions that do not contribute to the output of the program.

For all instructions except store and call, the instruction can be removed if the UID it defines is not live-out at the point of definition
A store instruction can be removed if we know the UID of the destination pointer is not aliased and not live-out at the program point of the store
A call instruction can never be removed
Complete the dead-code elimination optimization in dce.ml, where you will only need to fill out the dce_block function that implements these rules.

Task III: Constant Propagation
Compilers don't often directly emit dead instructions like the ones found by the analysis in the previous section. Instead, dead code is often produced as a result of other optimizations that execute parts of the original program at compile time, such as constant propagation. In this section you'll implement a simple constant propagation analysis and constant folding optimization.

Start by reading through the constprop.ml. Constant propagation is similar to the alias analysis from the previous section. Dataflow facts will be maps from UIDs to the type SymConst.t, which corresponds to the lattice from the lecture slides. Your analysis will compute the set of UIDs in scope at each program point, and the integer value of any UID that is computed as a result of a series of binop and icmp instructions on constant operands. More specifically:

The flow out of any binop or icmp whose operands have been determined to be constants is the incoming flow with the defined UID to Const with the expected constant value
The flow out of any binop or icmp with a NonConst operand sets the defined UID to NonConst
Similarly, the flow out of any binop or icmp with a UndefConst operand sets the defined UID to UndefConst
A store or call of type Void sets the defined UID to UndefConst
All other instructions set the defined UID to NonConst
(At this point we could also include some arithmetic identities, for instance optimizing multiplication by 0, but we'll keep the specification simple.) Next, you will have to implement the constant folding optimization itself, which just traverses the blocks of the CFG and replaces operands whose values we have computed with the appropriate constants. The structure of the code is very similar to that in the previous section. You will have to fill in:

Constprop.insn_flow with the rules defined above
Constprop.Fact.combine with the combine operation for the analysis
Constprop.cp_block (inside the run function) with the code needed to perform the constant propagation transformation
Note: Once you have implemented constant folding and dead-code elimination, the compiler's -O1 option will optimize your ll code by doing 2 iterations of (constant prop followed by dce). See opt.ml. The -O1 optimizations are not used for testing except that they are always performed in the register-allocation quality tests -- these optimizations improve register allocation (see below).

This coupling means that if you have a faulty optimization pass, it might cause the quality of your register allocator to degrade. And it might make getting a high score harder.

Task IV: Register Allocation
The backend implementation that we have given you provides two basic register allocation strategies: none - spills all uids to the stack; greedy - uses register and a greedy linear-scan algorithm.

For this task, you will implement a better register allocation strategy that makes use of the liveness information that you compute in Task I. Most of the instructions for this part of the assignment are found in backend.ml, where we have modified the code generation strategy to be able to make use of liveness information. The task is to implement a single function better_layout that beats our example "greedy" register allocation strategy. We recommend familiarizing yourself with the way that the simple strategies work before attempting to write your own allocator.

The compiler now also supports several additional command-line switches that can be used to select among different analysis and code generation options for testing purposes:

  --print-regs prints the register usage statistics for x86 code
  --liveness {trivial|dataflow} use the specified liveness analysis 
  --regalloc {none|greedy|better} use the specified register allocator
The flags above do not imply the -O1 flag (despite the fact that we always turn on optimization for testing purposes when running with --test). You should enable it explicitly.

For testing purposes, you can run the compiler with the -v verbose flag and/or use the --print-regs flag to get more information about how your algorithm is performing. It is also useful to sprinkle your own verbose output into the backend.

The goal for this part of the homework is to create a strategy such that code generated with the --regalloc better --liveness dataflow flags is "better" than code generated using the simple settings, which are --regalloc greedy --liveness dataflow. See the discussion about how we compare register allocation strategies in backend.ml. The "quality" test cases report the results of these comparisons.

Of course your register allocation strategy should produce correct code, so we still perform all of the correctness tests that we have used in previous version of the compiler. Your allocation strategy should not break any of these tests -- and you cannot earn points for the "quality" tests unless all of the correctness tests also pass.