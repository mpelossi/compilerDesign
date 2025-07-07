; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_global_str2376 = global [6 x i8] c"hello\00"
@_casted_array2377 = global i8* bitcast ([6 x i8]* @_global_str2376 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2372 = alloca i64
  %_argv2374 = alloca { i64, [0 x i8*] }*
  %_str_decl2379 = alloca i8*
  %_arr_decl2382 = alloca { i64, [0 x i64] }*
  %_s_decl2383 = alloca i64
  %_i_decl2384 = alloca i64
  store i64 %argc, i64* %_argc2372
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2374
  %_loaded_str2378 = load i8*, i8** @_casted_array2377
  store i8* %_loaded_str2378, i8** %_str_decl2379
  %_str2380 = load i8*, i8** %_str_decl2379
  %_array_of_string_call2381 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2380)
  store { i64, [0 x i64] }* %_array_of_string_call2381, { i64, [0 x i64] }** %_arr_decl2382
  store i64 0, i64* %_s_decl2383
  store i64 0, i64* %_i_decl2384
  br label %_while_cond2397
_while_body2398:
  %_s2387 = load i64, i64* %_s_decl2383
  %_arr2388 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl2382
  %_i2389 = load i64, i64* %_i_decl2384
  %_reference2390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2388, i32 0, i32 1, i64 %_i2389
  %_index2391 = load i64, i64* %_reference2390
  %_bop_result2392 = add i64 %_s2387, %_index2391
  store i64 %_bop_result2392, i64* %_s_decl2383
  %_i2394 = load i64, i64* %_i_decl2384
  %_bop_result2395 = add i64 %_i2394, 1
  store i64 %_bop_result2395, i64* %_i_decl2384
  br label %_while_cond2397
_while_cond2397:
  %_i2385 = load i64, i64* %_i_decl2384
  %_bop_result2386 = icmp slt i64 %_i2385, 5
  br i1 %_bop_result2386, label %_while_body2398, label %_while_end2399
_while_end2399:
  %_s2400 = load i64, i64* %_s_decl2383
  ret i64 %_s2400
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
