; generated from: ./sharedtests/nicdard/whileterminator1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7092 = alloca i64
  %_argv7094 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc7092
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7094
  br label %_while_cond7096
_while_body7097:
  ret i64 0
_while_cond7096:
  br i1 0, label %_while_body7097, label %_while_end7098
_while_end7098:
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
