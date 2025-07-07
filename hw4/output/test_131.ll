; generated from: ./sharedtests/dbernhard/for_cond_fun2.oat
target triple = "x86_64-unknown-linux"
@a = global i64 0
@b = global i64 0
@_global_str6043 = global [3 x i8] c", \00"
@_casted_array6044 = global i8* bitcast ([3 x i8]* @_global_str6043 to i8*)
@_global_str6055 = global [5 x i8] c", b:\00"
@_casted_array6056 = global i8* bitcast ([5 x i8]* @_global_str6055 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6033 = alloca i64
  %_args6035 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6033
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6035
  store i64 5, i64* @b
  br label %_while_cond6050
_while_body6051:
  %_a6040 = load i64, i64* @a
  %_string_of_int_call6041 = call i8* @string_of_int(i64 %_a6040)
  call void @print_string(i8* %_string_of_int_call6041)
  %_loaded_str6045 = load i8*, i8** @_casted_array6044
  call void @print_string(i8* %_loaded_str6045)
  %_a6047 = load i64, i64* @a
  %_bop_result6048 = add i64 %_a6047, 1
  store i64 %_bop_result6048, i64* @a
  br label %_while_cond6050
_while_cond6050:
  %_b6038 = load i64, i64* @b
  %_con_call6039 = call i1 @con(i64 %_b6038)
  br i1 %_con_call6039, label %_while_body6051, label %_while_end6052
_while_end6052:
  %_a6053 = load i64, i64* @a
  call void @print_int(i64 %_a6053)
  %_loaded_str6057 = load i8*, i8** @_casted_array6056
  call void @print_string(i8* %_loaded_str6057)
  %_b6059 = load i64, i64* @b
  call void @print_int(i64 %_b6059)
  ret i64 0
}

define i1 @con(i64 %b) {
  %_b6023 = alloca i64
  store i64 %b, i64* %_b6023
  %_a6025 = load i64, i64* @a
  %_bop_result6026 = add i64 %_a6025, 1
  store i64 %_bop_result6026, i64* @a
  %_b6028 = load i64, i64* %_b6023
  %_bop_result6029 = sub i64 %_b6028, 1
  store i64 %_bop_result6029, i64* %_b6023
  %_a6031 = load i64, i64* @a
  %_bop_result6032 = icmp slt i64 %_a6031, 10
  ret i1 %_bop_result6032
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
