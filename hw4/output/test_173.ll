; generated from: ./sharedtests/nicdard/function.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7081 = alloca i64
  %_argv7083 = alloca { i64, [0 x i8*] }*
  %_x_decl7086 = alloca i64
  store i64 %argc, i64* %_argc7081
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7083
  %_abs2_call7085 = call i64 @abs2()
  store i64 %_abs2_call7085, i64* %_x_decl7086
  %_x7087 = load i64, i64* %_x_decl7086
  %_abs_call7088 = call i64 @abs()
  %_bop_result7089 = add i64 %_x7087, %_abs_call7088
  store i64 %_bop_result7089, i64* %_x_decl7086
  %_x7091 = load i64, i64* %_x_decl7086
  ret i64 %_x7091
}

define i64 @abs() {
  br label %_if7077
_if7077:
  br i1 1, label %_then7078, label %_else7079
_then7078:
  ret i64 1
_else7079:
  ret i64 0
_end_if7080:
  ret i64 1
}

define i64 @abs2() {
  br label %_if7073
_if7073:
  br i1 1, label %_then7074, label %_else7075
_then7074:
  ret i64 0
_else7075:
  br label %_if7069
_if7069:
  br i1 0, label %_then7070, label %_else7071
_then7070:
  ret i64 1
_else7071:
  ret i64 7
_end_if7072:
  ret i64 1
_end_if7076:
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
