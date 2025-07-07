; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2439 = alloca i64
  %_argv2441 = alloca { i64, [0 x i8*] }*
  %_arr1_decl2450 = alloca { i64, [0 x i64] }*
  %_str_decl2453 = alloca i8*
  %_arr2_decl2456 = alloca { i64, [0 x i64] }*
  %_s_decl2457 = alloca i64
  %_i_decl2458 = alloca i64
  store i64 %argc, i64* %_argc2439
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2441
  %_raw_array2443 = call i64* @oat_alloc_array(i64 5)
  %_array2444 = bitcast i64* %_raw_array2443 to { i64, [0 x i64] }*
  %_arr_gep2445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2444, i32 0, i32 1, i32 0
  store i64 111, i64* %_arr_gep2445
  %_arr_gep2446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2444, i32 0, i32 1, i32 1
  store i64 112, i64* %_arr_gep2446
  %_arr_gep2447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2444, i32 0, i32 1, i32 2
  store i64 113, i64* %_arr_gep2447
  %_arr_gep2448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2444, i32 0, i32 1, i32 3
  store i64 114, i64* %_arr_gep2448
  %_arr_gep2449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2444, i32 0, i32 1, i32 4
  store i64 115, i64* %_arr_gep2449
  store { i64, [0 x i64] }* %_array2444, { i64, [0 x i64] }** %_arr1_decl2450
  %_arr12451 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1_decl2450
  %_string_of_array_call2452 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12451)
  store i8* %_string_of_array_call2452, i8** %_str_decl2453
  %_str2454 = load i8*, i8** %_str_decl2453
  %_array_of_string_call2455 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2454)
  store { i64, [0 x i64] }* %_array_of_string_call2455, { i64, [0 x i64] }** %_arr2_decl2456
  store i64 0, i64* %_s_decl2457
  store i64 0, i64* %_i_decl2458
  br label %_while_cond2471
_while_body2472:
  %_s2461 = load i64, i64* %_s_decl2457
  %_arr22462 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2_decl2456
  %_i2463 = load i64, i64* %_i_decl2458
  %_reference2464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22462, i32 0, i32 1, i64 %_i2463
  %_index2465 = load i64, i64* %_reference2464
  %_bop_result2466 = add i64 %_s2461, %_index2465
  store i64 %_bop_result2466, i64* %_s_decl2457
  %_i2468 = load i64, i64* %_i_decl2458
  %_bop_result2469 = add i64 %_i2468, 1
  store i64 %_bop_result2469, i64* %_i_decl2458
  br label %_while_cond2471
_while_cond2471:
  %_i2459 = load i64, i64* %_i_decl2458
  %_bop_result2460 = icmp slt i64 %_i2459, 5
  br i1 %_bop_result2460, label %_while_body2472, label %_while_end2473
_while_end2473:
  %_s2474 = load i64, i64* %_s_decl2457
  ret i64 %_s2474
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
