; generated from: ./sharedtests/dbernhard/tests_if8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc5857 = alloca i64
  %_args5859 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc5857
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args5859
  %_function_call5861 = call i64 @function(i64 0)
  %_function_call5862 = call i64 @function(i64 1)
  %_bop_result5863 = add i64 %_function_call5861, %_function_call5862
  %_function_call5864 = call i64 @function(i64 2)
  %_bop_result5865 = add i64 %_bop_result5863, %_function_call5864
  %_function_call5866 = call i64 @function(i64 3)
  %_bop_result5867 = add i64 %_bop_result5865, %_function_call5866
  ret i64 %_bop_result5867
}

define i64 @function(i64 %x) {
  %_x5837 = alloca i64
  store i64 %x, i64* %_x5837
  br label %_if5853
_if5853:
  %_x5839 = load i64, i64* %_x5837
  %_bop_result5840 = icmp eq i64 %_x5839, 0
  br i1 %_bop_result5840, label %_then5854, label %_else5855
_then5854:
  br label %_end_if5856
_else5855:
  br label %_if5849
_if5849:
  %_x5841 = load i64, i64* %_x5837
  %_bop_result5842 = icmp eq i64 %_x5841, 1
  br i1 %_bop_result5842, label %_then5850, label %_else5851
_then5850:
  br label %_end_if5852
_else5851:
  br label %_if5845
_if5845:
  %_x5843 = load i64, i64* %_x5837
  %_bop_result5844 = icmp eq i64 %_x5843, 2
  br i1 %_bop_result5844, label %_then5846, label %_end_if5848
_then5846:
  ret i64 50
_end_if5848:
  br label %_end_if5852
_end_if5852:
  br label %_end_if5856
_end_if5856:
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
