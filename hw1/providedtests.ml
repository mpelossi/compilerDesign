open Assert
open Hellocaml

(* These tests are provided by you -- they will NOT be graded *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)

let provided_test1 : suite = [
  Test ("Student-Provided Tests For Problem 1-3", [
    ("case1", assert_eqf (fun () -> 42) prob3_ans );
    ("case2", assert_eqf (fun () -> 25) (prob3_case2 17) );
    ("case3", assert_eqf (fun () -> prob3_case3) 64);
  ]);
  
] 
(* let insert_tests : suite = [
  Test ("Insert Test", [
    ("insert1", assert_eqf (fun () -> insert 1 []) [1]);               (* Insert into an empty list *)
    ("insert2", assert_eqf (fun () -> insert 1 [1]) [1]);              (* Inserting a duplicate into a single-element list should return the same list *)
    ("insert3", assert_eqf (fun () -> insert 1 [2]) [1;2]);            (* Inserting into a sorted list where the element goes at the front *)
    ("insert4", assert_eqf (fun () -> insert 1 [0]) [0;1]);            (* Inserting into a sorted list where the element goes at the end *)
    ("insert5", assert_eqf (fun () -> insert 1 [0;2]) [0;1;2]);        (* Insert into a sorted list where the element fits in the middle *)
    ("insert6", assert_eqf (fun () -> insert 2 [1;3;4]) [1;2;3;4]);    (* Insert into a list where the element fits between others *)
    ("insert7", assert_eqf (fun () -> insert "b" ["a";"c"]) ["a";"b";"c"]);  (* Insert a string into a sorted list of strings *)
    ("insert8", assert_eqf (fun () -> insert "a" ["b";"c"]) ["a";"b";"c"]); (* Insert a string at the start of a sorted string list *)
    ("insert9", assert_eqf (fun () -> insert "d" ["a";"b";"c"]) ["a";"b";"c";"d"]); (* Insert a string at the end of a sorted string list *)
    ("insert10", assert_eqf (fun () -> insert 3 [1;2;4;5]) [1;2;3;4;5]);  (* Insert a number into the middle of a sorted list of integers *)
  ]);
]
let part4_tests : suite = [
  Test ("DIo engro",  [
    ("optimize1", assert_eqf (fun () -> optimize (Add(Const 3L, Const 4L))) (Const 7L));
    ("optimize2", assert_eqf (fun () -> optimize (Mult(Const 0L, Var "x"))) (Const 0L));
    ("optimize3", assert_eqf (fun () -> optimize (Add(Const 3L, Mult(Const 0L, Var "x")))) (Const 3L));
  ]);
]
 
let opt_test : suite = [
  Test ("Student-Provided Tests For Optimize Function", [
    ("case1", assert_eqf (fun () -> optimize (Add (Const 0L, Var "x"))) (Var "x"));
    ("case2", assert_eqf (fun () -> optimize (Mult (Var "x", Const 0L))) (Const 0L));
    ("case3", assert_eqf (fun () -> optimize (Mult (Const 1L, Var "y"))) (Var "y"));
    ("case4", assert_eqf (fun () -> optimize (Add (Const 3L, Const 5L))) (Const 8L));
    ("case5", assert_eqf (fun () -> optimize (Mult (Const 4L, Const 5L))) (Const (Int64.mul 4L 5L)));
    ("case6", assert_eqf (fun () -> optimize (Neg (Const 7L))) (Const (-7L)));
    ("case7", assert_eqf (fun () -> optimize (Neg (Neg (Var "z")))) (Var "z"));
    ("case8", assert_eqf (fun () -> optimize (Neg (Add (Var "a", Const 1L)))) (Neg (Add (Var "a", Const 1L))));
    ("case9", assert_eqf (fun () -> optimize (Neg (Neg (Neg (Const 3L))))) (Neg (Const 3L)));
    ("case10", assert_eqf (fun () -> optimize (Add (Var "x", Neg (Var "x")))) (Const 0L));
    ("case11", assert_eqf (fun () -> optimize (Add (Mult (Const 1L, Var "x"), Mult (Var "y", Const 0L)))) (Var "x"));
    ("case12", assert_eqf (fun () -> optimize (Mult (Const 100L, Const 200L))) (Const (Int64.mul 100L 200L)));
  ]);
]

let complex_tests_no_comments : suite = [
  Test ("Complex Optimization Tests", [
    ("test1", assert_eqf (fun () -> optimize (Add(Const 0L, Add(Var "x", Const 0L)))) (Var "x"));
    ("test2", assert_eqf (fun () -> optimize (Mult(Const 1L, Mult(Const 1L, Var "y")))) (Var "y"));
    ("test3", assert_eqf (fun () -> optimize (Add(Const 3L, Mult(Const 0L, Var "x")))) (Const 3L));
    ("test4", assert_eqf (fun () -> optimize (Add(Var "a", Add(Var "a", Neg(Var "a"))))) (Var "a"));
    ("test5", assert_eqf (fun () -> optimize (Mult(Const 2L, Add(Const 1L, Const 1L)))) (Const 4L));
    ("test6", assert_eqf (fun () -> optimize (Mult(Const 0L, Add(Var "x", Const 1L)))) (Const 0L));
    ("test7", assert_eqf (fun () -> optimize (Neg(Neg(Neg(Const 5L))))) ((Const (-5L))));
    ("test8", assert_eqf (fun () -> optimize (Add(Neg(Const 10L), Const 10L))) (Const 0L));
    ("test9", assert_eqf (fun () -> optimize (Mult(Const 10L, Mult(Const 0L, Var "z")))) (Const 0L));
    ("test10", assert_eqf (fun () -> optimize (Mult(Neg(Const 5L), Mult(Const 0L, Var "a")))) (Const 0L));
    ("test11", assert_eqf (fun () -> optimize (Add(Var "x", Mult(Const 0L, Var "y")))) (Var "x"));
    ("test12", assert_eqf (fun () -> optimize (Mult(Add(Const 1L, Const 1L), Const 2L))) (Const 4L));
    ("test13", assert_eqf (fun () -> optimize (Add(Mult(Const 2L, Const 3L), Const 1L))) (Const 7L));
    ("test14", assert_eqf (fun () -> optimize (Neg(Add(Const 1L, Const 1L)))) (Const (-2L)));
    ("test15", assert_eqf (fun () -> optimize (Add(Const 3L, Neg(Const 3L)))) (Const 0L));
    ("test16", assert_eqf (fun () -> optimize (Mult(Const 1L, Add(Const 5L, Var "z")))) (Add(Const 5L, Var "z")));
    ("test17", assert_eqf (fun () -> optimize (Add(Neg(Mult(Const 2L, Var "x")), Mult(Const 2L, Var "x")))) (Const 0L));
    ("test18", assert_eqf (fun () -> optimize (Mult(Const 5L, Add(Var "x", Const 0L)))) (Mult(Const 5L, Var "x")));
    ("test19", assert_eqf (fun () -> optimize (Neg(Const (-10L)))) (Const 10L));
    ("test20", assert_eqf (fun () -> optimize (Mult(Const 2L, Neg(Const 3L)))) (Const (-6L)));
  ]);
]

let ctxt = [("x", 10L); ("y", 5L)] (* Example context for variable lookups *)

let compile_tests : suite = [
  Test ("Compile and Run Tests", [

    (* Test case 1: Simple constant compilation *)
    ("compile1", assert_eqf (fun () -> run [] (compile (Const 42L))) 42L);

    (* Test case 2: Variable compilation *)
    ("compile2", assert_eqf (fun () -> run ctxt (compile (Var "x"))) 10L);

    (* Test case 3: Addition of two constants *)
    ("compile3", assert_eqf (fun () -> run [] (compile (Add (Const 3L, Const 4L)))) 7L);

    (* Test case 4: Addition of constant and variable *)
    ("compile4", assert_eqf (fun () -> run ctxt (compile (Add (Const 3L, Var "y")))) 8L);

    (* Test case 5: Multiplication of two constants *)
    ("compile5", assert_eqf (fun () -> run [] (compile (Mult (Const 6L, Const 7L)))) 42L);

    (* Test case 6: Multiplication of constant and variable *)
    ("compile6", assert_eqf (fun () -> run ctxt (compile (Mult (Const 2L, Var "x")))) 20L);

    (* Test case 7: Negation of a constant *)
    ("compile7", assert_eqf (fun () -> run [] (compile (Neg (Const 10L)))) (-10L));

    (* Test case 8: Complex expression: (x * y) + 5 *)
    ("compile8", assert_eqf (fun () -> run ctxt (compile (Add (Mult (Var "x", Var "y"), Const 5L)))) 55L);

    (* Test case 9: Complex expression with negation: -(x + y) *)
    ("compile9", assert_eqf (fun () -> run ctxt (compile (Neg (Add (Var "x", Var "y"))))) (-15L));

    (* Test case 10: Nested operations: (x + y) * (3 + 2) *)
    ("compile10", assert_eqf (fun () -> run ctxt (compile (Mult (Add (Var "x", Var "y"), Add (Const 3L, Const 2L))))) 75L);

    (* Test case 11: Triple nested operation: (x + y) + (3 * 2) + (-5) *)
    ("compile11", assert_eqf (fun () -> run ctxt (compile (Add (Add (Var "x", Var "y"), Add (Mult (Const 3L, Const 2L), Neg (Const 5L)))))) 16L);
  ]);
] *)

let provided_tests : suite =
  provided_test1 
  (* @ *)
  (* insert_tests @
  opt_test @
  complex_tests_no_comments @
  compile_tests *)