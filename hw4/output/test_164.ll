; generated from: ./sharedtests/nicdard/shoisted2.oat
target triple = "x86_64-unknown-linux"
@_global_str6915 = global [13 x i8] c"local string\00"
@_casted_array6916 = global i8* bitcast ([13 x i8]* @_global_str6915 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6911 = alloca i64
  %_argv6913 = alloca { i64, [0 x i8*] }*
  %_s_decl6918 = alloca i8*
  store i64 %argc, i64* %_argc6911
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6913
  %_loaded_str6917 = load i8*, i8** @_casted_array6916
  store i8* %_loaded_str6917, i8** %_s_decl6918
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
