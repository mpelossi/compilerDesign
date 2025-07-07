; generated from: oatprograms/run50.oat
target triple = "x86_64-unknown-linux"
@_global_str889 = global [6 x i8] c"abcde\00"
@_casted_array890 = global i8* bitcast ([6 x i8]* @_global_str889 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc885 = alloca i64
  %_argv887 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc885
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv887
  %_loaded_str891 = load i8*, i8** @_casted_array890
  call void @print_string(i8* %_loaded_str891)
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
