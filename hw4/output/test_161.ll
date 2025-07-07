; generated from: ./sharedtests/nicdard/sgstring.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([8 x i8]* @_gstr_id6896 to i8*)
@_gstr_id6896 = global [8 x i8] c"astring\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6892 = alloca i64
  %_argv6894 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6892
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6894
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
