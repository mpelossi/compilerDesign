; generated from: ./sharedtests/thbwd/nested_return_bool.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc7149 = alloca i64
  %_args7151 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc7149
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args7151
  %_function_call7153 = call i1 @function(i64 0)
  %_function_call7154 = call i1 @function(i64 1)
  %_function_call7155 = call i1 @function(i64 2)
  ret i64 0
}

define i1 @function(i64 %x) {
  %_x7134 = alloca i64
  store i64 %x, i64* %_x7134
  br label %_if7145
_if7145:
  %_x7136 = load i64, i64* %_x7134
  %_bop_result7137 = icmp eq i64 %_x7136, 0
  br i1 %_bop_result7137, label %_then7146, label %_else7147
_then7146:
  ret i1 1
_else7147:
  br label %_if7141
_if7141:
  %_x7138 = load i64, i64* %_x7134
  %_bop_result7139 = icmp eq i64 %_x7138, 1
  br i1 %_bop_result7139, label %_then7142, label %_else7143
_then7142:
  ret i1 0
_else7143:
  %_uop_result7140 = icmp eq i1 0, 0
  ret i1 %_uop_result7140
_end_if7144:
  ret i1 0
_end_if7148:
  ret i1 1
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
