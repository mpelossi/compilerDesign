; generated from: ./sharedtests/dbernhard/tests_if.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc5672 = alloca i64
  %_args5674 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc5672
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args5674
  %_function_call5676 = call i64 @function(i64 0)
  %_function_call5677 = call i64 @function(i64 1)
  %_bop_result5678 = add i64 %_function_call5676, %_function_call5677
  %_function_call5679 = call i64 @function(i64 2)
  %_bop_result5680 = add i64 %_bop_result5678, %_function_call5679
  ret i64 %_bop_result5680
}

define i64 @function(i64 %x) {
  %_x5664 = alloca i64
  store i64 %x, i64* %_x5664
  br label %_if5668
_if5668:
  %_x5666 = load i64, i64* %_x5664
  %_bop_result5667 = icmp eq i64 %_x5666, 0
  br i1 %_bop_result5667, label %_then5669, label %_else5670
_then5669:
  ret i64 1
_else5670:
  ret i64 0
_end_if5671:
  ret i64 1
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
