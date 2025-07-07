; generated from: ./sharedtests/dbernhard/str_cat.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([3 x i8]* @_gstr_id5626 to i8*)
@_gstr_id5626 = global [3 x i8] c"he\00"
@_global_str5623 = global [3 x i8] c"ll\00"
@_casted_array5624 = global i8* bitcast ([3 x i8]* @_global_str5623 to i8*)
@_global_str5618 = global [2 x i8] c"o\00"
@_casted_array5619 = global i8* bitcast ([2 x i8]* @_global_str5618 to i8*)

define i8* @get() {
  %_loaded_str5625 = load i8*, i8** @_casted_array5624
  ret i8* %_loaded_str5625
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc5611 = alloca i64
  %_args5613 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc5611
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args5613
  %_str5615 = load i8*, i8** @str
  %_get_call5616 = call i8* @get()
  %_string_cat_call5617 = call i8* @string_cat(i8* %_str5615, i8* %_get_call5616)
  %_loaded_str5620 = load i8*, i8** @_casted_array5619
  %_string_cat_call5621 = call i8* @string_cat(i8* %_string_cat_call5617, i8* %_loaded_str5620)
  call void @print_string(i8* %_string_cat_call5621)
  ret i64 42
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
