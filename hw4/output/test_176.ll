; generated from: ./sharedtests/thbwd/nested_return_array.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc7127 = alloca i64
  %_args7129 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc7127
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args7129
  %_function_call7131 = call { i64, [0 x i64] }* @function(i64 0)
  %_function_call7132 = call { i64, [0 x i64] }* @function(i64 1)
  %_function_call7133 = call { i64, [0 x i64] }* @function(i64 2)
  ret i64 0
}

define { i64, [0 x i64] }* @function(i64 %x) {
  %_x7106 = alloca i64
  store i64 %x, i64* %_x7106
  br label %_if7123
_if7123:
  %_x7108 = load i64, i64* %_x7106
  %_bop_result7109 = icmp eq i64 %_x7108, 0
  br i1 %_bop_result7109, label %_then7124, label %_else7125
_then7124:
  ret { i64, [0 x i64] }* null
_else7125:
  br label %_if7119
_if7119:
  %_x7110 = load i64, i64* %_x7106
  %_bop_result7111 = icmp eq i64 %_x7110, 1
  br i1 %_bop_result7111, label %_then7120, label %_else7121
_then7120:
  %_raw_array7112 = call i64* @oat_alloc_array(i64 3)
  %_array7113 = bitcast i64* %_raw_array7112 to { i64, [0 x i64] }*
  %_arr_gep7114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7113, i32 0, i32 1, i32 0
  store i64 4, i64* %_arr_gep7114
  %_arr_gep7115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7113, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep7115
  %_arr_gep7116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7113, i32 0, i32 1, i32 2
  store i64 9, i64* %_arr_gep7116
  ret { i64, [0 x i64] }* %_array7113
_else7121:
  %_raw_array7117 = call i64* @oat_alloc_array(i64 6)
  %_array7118 = bitcast i64* %_raw_array7117 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_array7118
_end_if7122:
  ret { i64, [0 x i64] }* %_array7113
_end_if7126:
  ret { i64, [0 x i64] }* null
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
