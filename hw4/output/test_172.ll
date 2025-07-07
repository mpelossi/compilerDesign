; generated from: ./sharedtests/nicdard/if.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7029 = alloca i64
  %_argv7031 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc7029
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7031
  br label %_if7033
_if7033:
  br i1 0, label %_then7034, label %_end_if7036
_then7034:
  ret i64 1
_end_if7036:
  br label %_if7037
_if7037:
  br i1 0, label %_then7038, label %_else7039
_then7038:
  ret i64 2
_else7039:
  ret i64 3
_end_if7040:
  ret i64 2
_if7045:
  br i1 0, label %_then7046, label %_else7047
_then7046:
  ret i64 4
_else7047:
  br label %_if7041
_if7041:
  br i1 1, label %_then7042, label %_end_if7044
_then7042:
  ret i64 5
_end_if7044:
  br label %_end_if7048
_end_if7048:
  br label %_if7053
_if7053:
  br i1 0, label %_then7054, label %_else7055
_then7054:
  ret i64 6
_else7055:
  br label %_if7049
_if7049:
  br i1 1, label %_then7050, label %_else7051
_then7050:
  ret i64 7
_else7051:
  ret i64 8
_end_if7052:
  ret i64 7
_end_if7056:
  ret i64 6
_if7065:
  br i1 0, label %_then7066, label %_else7067
_then7066:
  br label %_if7057
_if7057:
  br i1 1, label %_then7058, label %_else7059
_then7058:
  ret i64 9
_else7059:
  ret i64 10
_end_if7060:
  ret i64 9
_else7067:
  br label %_if7061
_if7061:
  br i1 1, label %_then7062, label %_else7063
_then7062:
  ret i64 71
_else7063:
  ret i64 12
_end_if7064:
  ret i64 71
_end_if7068:
  ret i64 9
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
