; generated from: ./sharedtests/dbernhard/tests_if5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc5758 = alloca i64
  %_args5760 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc5758
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args5760
  %_function_call5762 = call i64 @function(i64 0)
  %_function_call5763 = call i64 @function(i64 1)
  %_bop_result5764 = add i64 %_function_call5762, %_function_call5763
  %_function_call5765 = call i64 @function(i64 2)
  %_bop_result5766 = add i64 %_bop_result5764, %_function_call5765
  ret i64 %_bop_result5766
}

define i64 @function(i64 %x) {
  %_x5744 = alloca i64
  store i64 %x, i64* %_x5744
  br label %_if5754
_if5754:
  %_x5746 = load i64, i64* %_x5744
  %_bop_result5747 = icmp eq i64 %_x5746, 0
  br i1 %_bop_result5747, label %_then5755, label %_else5756
_then5755:
  ret i64 10
_else5756:
  br label %_if5750
_if5750:
  %_x5748 = load i64, i64* %_x5744
  %_bop_result5749 = icmp eq i64 %_x5748, 1
  br i1 %_bop_result5749, label %_then5751, label %_else5752
_then5751:
  ret i64 0
_else5752:
  ret i64 50
_end_if5753:
  ret i64 0
_end_if5757:
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
