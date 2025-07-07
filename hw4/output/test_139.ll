; generated from: ./sharedtests/dbernhard/printing.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([3 x i8]* @_gstr_id6566 to i8*)
@_gstr_id6566 = global [3 x i8] c"he\00"
@_global_str6563 = global [3 x i8] c"ll\00"
@_casted_array6564 = global i8* bitcast ([3 x i8]* @_global_str6563 to i8*)
@_global_str6559 = global [2 x i8] c"o\00"
@_casted_array6560 = global i8* bitcast ([2 x i8]* @_global_str6559 to i8*)

define i8* @get() {
  %_loaded_str6565 = load i8*, i8** @_casted_array6564
  ret i8* %_loaded_str6565
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6551 = alloca i64
  %_args6553 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6551
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6553
  %_str6555 = load i8*, i8** @str
  call void @print_string(i8* %_str6555)
  %_get_call6557 = call i8* @get()
  call void @print_string(i8* %_get_call6557)
  %_loaded_str6561 = load i8*, i8** @_casted_array6560
  call void @print_string(i8* %_loaded_str6561)
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
