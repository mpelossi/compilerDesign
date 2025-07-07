; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2331 = alloca i64
  %_argv2333 = alloca { i64, [0 x i8*] }*
  %_str_decl2341 = alloca i8*
  store i64 %argc, i64* %_argc2331
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2333
  %_raw_array2335 = call i64* @oat_alloc_array(i64 3)
  %_array2336 = bitcast i64* %_raw_array2335 to { i64, [0 x i64] }*
  %_arr_gep2337 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2336, i32 0, i32 1, i32 0
  store i64 110, i64* %_arr_gep2337
  %_arr_gep2338 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2336, i32 0, i32 1, i32 1
  store i64 110, i64* %_arr_gep2338
  %_arr_gep2339 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2336, i32 0, i32 1, i32 2
  store i64 110, i64* %_arr_gep2339
  %_string_of_array_call2340 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2336)
  store i8* %_string_of_array_call2340, i8** %_str_decl2341
  %_str2342 = load i8*, i8** %_str_decl2341
  call void @print_string(i8* %_str2342)
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
