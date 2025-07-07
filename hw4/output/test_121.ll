; generated from: ./sharedtests/dbernhard/tests_if2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc5689 = alloca i64
  %_args5691 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc5689
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args5691
  %_function_call5693 = call i64 @function(i64 0)
  %_function_call5694 = call i64 @function(i64 1)
  %_bop_result5695 = add i64 %_function_call5693, %_function_call5694
  %_function_call5696 = call i64 @function(i64 2)
  %_bop_result5697 = add i64 %_bop_result5695, %_function_call5696
  ret i64 %_bop_result5697
}

define i64 @function(i64 %x) {
  %_x5681 = alloca i64
  store i64 %x, i64* %_x5681
  br label %_if5685
_if5685:
  %_x5683 = load i64, i64* %_x5681
  %_bop_result5684 = icmp eq i64 %_x5683, 0
  br i1 %_bop_result5684, label %_then5686, label %_end_if5688
_then5686:
  ret i64 1
_end_if5688:
  ret i64 0
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
