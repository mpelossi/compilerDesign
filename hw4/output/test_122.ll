; generated from: ./sharedtests/dbernhard/tests_if3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc5712 = alloca i64
  %_args5714 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc5712
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args5714
  %_function_call5716 = call i64 @function(i64 0)
  %_function_call5717 = call i64 @function(i64 1)
  %_bop_result5718 = add i64 %_function_call5716, %_function_call5717
  %_function_call5719 = call i64 @function(i64 2)
  %_bop_result5720 = add i64 %_bop_result5718, %_function_call5719
  ret i64 %_bop_result5720
}

define i64 @function(i64 %x) {
  %_x5698 = alloca i64
  store i64 %x, i64* %_x5698
  br label %_if5708
_if5708:
  %_x5700 = load i64, i64* %_x5698
  %_bop_result5701 = icmp eq i64 %_x5700, 0
  br i1 %_bop_result5701, label %_then5709, label %_else5710
_then5709:
  ret i64 10
_else5710:
  br label %_if5704
_if5704:
  %_x5702 = load i64, i64* %_x5698
  %_bop_result5703 = icmp eq i64 %_x5702, 1
  br i1 %_bop_result5703, label %_then5705, label %_end_if5707
_then5705:
  ret i64 0
_end_if5707:
  br label %_end_if5711
_end_if5711:
  ret i64 100
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
