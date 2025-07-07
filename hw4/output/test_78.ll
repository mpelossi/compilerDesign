; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2401 = alloca i64
  %_argv2403 = alloca { i64, [0 x i8*] }*
  %_arr1_decl2412 = alloca { i64, [0 x i64] }*
  %_str_decl2415 = alloca i8*
  %_arr2_decl2418 = alloca { i64, [0 x i64] }*
  %_s_decl2419 = alloca i64
  %_i_decl2420 = alloca i64
  store i64 %argc, i64* %_argc2401
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2403
  %_raw_array2405 = call i64* @oat_alloc_array(i64 5)
  %_array2406 = bitcast i64* %_raw_array2405 to { i64, [0 x i64] }*
  %_arr_gep2407 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2406, i32 0, i32 1, i32 0
  store i64 111, i64* %_arr_gep2407
  %_arr_gep2408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2406, i32 0, i32 1, i32 1
  store i64 112, i64* %_arr_gep2408
  %_arr_gep2409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2406, i32 0, i32 1, i32 2
  store i64 113, i64* %_arr_gep2409
  %_arr_gep2410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2406, i32 0, i32 1, i32 3
  store i64 114, i64* %_arr_gep2410
  %_arr_gep2411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2406, i32 0, i32 1, i32 4
  store i64 115, i64* %_arr_gep2411
  store { i64, [0 x i64] }* %_array2406, { i64, [0 x i64] }** %_arr1_decl2412
  %_arr12413 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1_decl2412
  %_string_of_array_call2414 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12413)
  store i8* %_string_of_array_call2414, i8** %_str_decl2415
  %_str2416 = load i8*, i8** %_str_decl2415
  %_array_of_string_call2417 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2416)
  store { i64, [0 x i64] }* %_array_of_string_call2417, { i64, [0 x i64] }** %_arr2_decl2418
  store i64 0, i64* %_s_decl2419
  store i64 0, i64* %_i_decl2420
  br label %_while_cond2433
_while_body2434:
  %_s2423 = load i64, i64* %_s_decl2419
  %_arr22424 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2_decl2418
  %_i2425 = load i64, i64* %_i_decl2420
  %_reference2426 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22424, i32 0, i32 1, i64 %_i2425
  %_index2427 = load i64, i64* %_reference2426
  %_bop_result2428 = add i64 %_s2423, %_index2427
  store i64 %_bop_result2428, i64* %_s_decl2419
  %_i2430 = load i64, i64* %_i_decl2420
  %_bop_result2431 = add i64 %_i2430, 1
  store i64 %_bop_result2431, i64* %_i_decl2420
  br label %_while_cond2433
_while_cond2433:
  %_i2421 = load i64, i64* %_i_decl2420
  %_bop_result2422 = icmp slt i64 %_i2421, 5
  br i1 %_bop_result2422, label %_while_body2434, label %_while_end2435
_while_end2435:
  %_s2436 = load i64, i64* %_s_decl2419
  call void @print_int(i64 %_s2436)
  %_s2438 = load i64, i64* %_s_decl2419
  ret i64 %_s2438
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
