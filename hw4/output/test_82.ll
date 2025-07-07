; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_global_str2509 = global [11 x i8] c"1234967890\00"
@_casted_array2510 = global i8* bitcast ([11 x i8]* @_global_str2509 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2505 = alloca i64
  %_argv2507 = alloca { i64, [0 x i8*] }*
  %_arr_decl2513 = alloca { i64, [0 x i64] }*
  %_sum_decl2514 = alloca i64
  %_i_decl2515 = alloca i64
  %_i_decl2529 = alloca i64
  store i64 %argc, i64* %_argc2505
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2507
  %_loaded_str2511 = load i8*, i8** @_casted_array2510
  %_array_of_string_call2512 = call { i64, [0 x i64] }* @array_of_string(i8* %_loaded_str2511)
  store { i64, [0 x i64] }* %_array_of_string_call2512, { i64, [0 x i64] }** %_arr_decl2513
  store i64 0, i64* %_sum_decl2514
  store i64 0, i64* %_i_decl2515
  br label %_while_cond2526
_while_body2527:
  %_i2518 = load i64, i64* %_i_decl2515
  %_arr2519 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl2513
  %_i2520 = load i64, i64* %_i_decl2515
  %_gep2521 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2519, i32 0, i32 1, i64 %_i2520
  store i64 %_i2518, i64* %_gep2521
  %_i2523 = load i64, i64* %_i_decl2515
  %_bop_result2524 = add i64 %_i2523, 1
  store i64 %_bop_result2524, i64* %_i_decl2515
  br label %_while_cond2526
_while_cond2526:
  %_i2516 = load i64, i64* %_i_decl2515
  %_bop_result2517 = icmp slt i64 %_i2516, 10
  br i1 %_bop_result2517, label %_while_body2527, label %_while_end2528
_while_end2528:
  store i64 0, i64* %_i_decl2529
  br label %_while_cond2542
_while_body2543:
  %_sum2532 = load i64, i64* %_sum_decl2514
  %_arr2533 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl2513
  %_i2534 = load i64, i64* %_i_decl2529
  %_reference2535 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2533, i32 0, i32 1, i64 %_i2534
  %_index2536 = load i64, i64* %_reference2535
  %_bop_result2537 = add i64 %_sum2532, %_index2536
  store i64 %_bop_result2537, i64* %_sum_decl2514
  %_i2539 = load i64, i64* %_i_decl2529
  %_bop_result2540 = add i64 %_i2539, 1
  store i64 %_bop_result2540, i64* %_i_decl2529
  br label %_while_cond2542
_while_cond2542:
  %_i2530 = load i64, i64* %_i_decl2529
  %_bop_result2531 = icmp slt i64 %_i2530, 10
  br i1 %_bop_result2531, label %_while_body2543, label %_while_end2544
_while_end2544:
  %_sum2545 = load i64, i64* %_sum_decl2514
  ret i64 %_sum2545
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
