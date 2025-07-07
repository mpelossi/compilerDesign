; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_str2575 = alloca i8*
  %_start2577 = alloca i64
  %_len2579 = alloca i64
  %_arr_decl2583 = alloca { i64, [0 x i64] }*
  %_r_decl2587 = alloca { i64, [0 x i64] }*
  %_i_decl2588 = alloca i64
  store i8* %str, i8** %_str2575
  store i64 %start, i64* %_start2577
  store i64 %len, i64* %_len2579
  %_str2581 = load i8*, i8** %_str2575
  %_array_of_string_call2582 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2581)
  store { i64, [0 x i64] }* %_array_of_string_call2582, { i64, [0 x i64] }** %_arr_decl2583
  %_len2584 = load i64, i64* %_len2579
  %_raw_array2585 = call i64* @oat_alloc_array(i64 %_len2584)
  %_array2586 = bitcast i64* %_raw_array2585 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2586, { i64, [0 x i64] }** %_r_decl2587
  store i64 0, i64* %_i_decl2588
  br label %_while_cond2605
_while_body2606:
  %_arr2592 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl2583
  %_i2593 = load i64, i64* %_i_decl2588
  %_start2594 = load i64, i64* %_start2577
  %_bop_result2595 = add i64 %_i2593, %_start2594
  %_reference2596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2592, i32 0, i32 1, i64 %_bop_result2595
  %_index2597 = load i64, i64* %_reference2596
  %_r2598 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r_decl2587
  %_i2599 = load i64, i64* %_i_decl2588
  %_gep2600 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_r2598, i32 0, i32 1, i64 %_i2599
  store i64 %_index2597, i64* %_gep2600
  %_i2602 = load i64, i64* %_i_decl2588
  %_bop_result2603 = add i64 %_i2602, 1
  store i64 %_bop_result2603, i64* %_i_decl2588
  br label %_while_cond2605
_while_cond2605:
  %_i2589 = load i64, i64* %_i_decl2588
  %_len2590 = load i64, i64* %_len2579
  %_bop_result2591 = icmp slt i64 %_i2589, %_len2590
  br i1 %_bop_result2591, label %_while_body2606, label %_while_end2607
_while_end2607:
  %_r2608 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r_decl2587
  %_string_of_array_call2609 = call i8* @string_of_array({ i64, [0 x i64] }* %_r2608)
  ret i8* %_string_of_array_call2609
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2566 = alloca i64
  %_argv2568 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc2566
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2568
  %_argv2570 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2568
  %_reference2571 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv2570, i32 0, i32 1, i32 1
  %_index2572 = load i8*, i8** %_reference2571
  %_sub_call2573 = call i8* @sub(i8* %_index2572, i64 3, i64 5)
  call void @print_string(i8* %_sub_call2573)
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
