; generated from: ./sharedtests/dbernhard/tests_if4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc5735 = alloca i64
  %_args5737 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc5735
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args5737
  %_function_call5739 = call i64 @function(i64 0)
  %_function_call5740 = call i64 @function(i64 1)
  %_bop_result5741 = add i64 %_function_call5739, %_function_call5740
  %_function_call5742 = call i64 @function(i64 2)
  %_bop_result5743 = add i64 %_bop_result5741, %_function_call5742
  ret i64 %_bop_result5743
}

define i64 @function(i64 %x) {
  %_x5721 = alloca i64
  store i64 %x, i64* %_x5721
  br label %_if5731
_if5731:
  %_x5723 = load i64, i64* %_x5721
  %_bop_result5724 = icmp eq i64 %_x5723, 0
  br i1 %_bop_result5724, label %_then5732, label %_else5733
_then5732:
  ret i64 10
_else5733:
  br label %_if5727
_if5727:
  %_x5725 = load i64, i64* %_x5721
  %_bop_result5726 = icmp eq i64 %_x5725, 1
  br i1 %_bop_result5726, label %_then5728, label %_else5729
_then5728:
  ret i64 0
_else5729:
  ret i64 50
_end_if5730:
  ret i64 0
_end_if5734:
  ret i64 10
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
