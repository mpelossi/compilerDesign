; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc540 = alloca i64
  %_argv542 = alloca { i64, [0 x i8*] }*
  %_a_decl567 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_s_decl568 = alloca i64
  %_i_decl569 = alloca i64
  %_j_decl572 = alloca i64
  store i64 %argc, i64* %_argc540
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv542
  %_raw_array544 = call i64* @oat_alloc_array(i64 3)
  %_array545 = bitcast i64* %_raw_array544 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array546 = call i64* @oat_alloc_array(i64 4)
  %_array547 = bitcast i64* %_raw_array546 to { i64, [0 x i64] }*
  %_arr_gep548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array547, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep548
  %_arr_gep549 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array547, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep549
  %_arr_gep550 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array547, i32 0, i32 1, i32 2
  store i64 2, i64* %_arr_gep550
  %_arr_gep551 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array547, i32 0, i32 1, i32 3
  store i64 3, i64* %_arr_gep551
  %_arr_gep552 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array545, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array547, { i64, [0 x i64] }** %_arr_gep552
  %_raw_array553 = call i64* @oat_alloc_array(i64 4)
  %_array554 = bitcast i64* %_raw_array553 to { i64, [0 x i64] }*
  %_arr_gep555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array554, i32 0, i32 1, i32 0
  store i64 4, i64* %_arr_gep555
  %_arr_gep556 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array554, i32 0, i32 1, i32 1
  store i64 5, i64* %_arr_gep556
  %_arr_gep557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array554, i32 0, i32 1, i32 2
  store i64 6, i64* %_arr_gep557
  %_arr_gep558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array554, i32 0, i32 1, i32 3
  store i64 7, i64* %_arr_gep558
  %_arr_gep559 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array545, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array554, { i64, [0 x i64] }** %_arr_gep559
  %_raw_array560 = call i64* @oat_alloc_array(i64 4)
  %_array561 = bitcast i64* %_raw_array560 to { i64, [0 x i64] }*
  %_arr_gep562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array561, i32 0, i32 1, i32 0
  store i64 8, i64* %_arr_gep562
  %_arr_gep563 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array561, i32 0, i32 1, i32 1
  store i64 9, i64* %_arr_gep563
  %_arr_gep564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array561, i32 0, i32 1, i32 2
  store i64 10, i64* %_arr_gep564
  %_arr_gep565 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array561, i32 0, i32 1, i32 3
  store i64 11, i64* %_arr_gep565
  %_arr_gep566 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array545, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array561, { i64, [0 x i64] }** %_arr_gep566
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array545, { i64, [0 x { i64, [0 x i64] }*] }** %_a_decl567
  store i64 0, i64* %_s_decl568
  store i64 0, i64* %_i_decl569
  br label %_while_cond594
_while_body595:
  store i64 0, i64* %_j_decl572
  br label %_while_cond588
_while_body589:
  %_s575 = load i64, i64* %_s_decl568
  %_a576 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a_decl567
  %_i577 = load i64, i64* %_i_decl569
  %_reference578 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a576, i32 0, i32 1, i64 %_i577
  %_index579 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference578
  %_j580 = load i64, i64* %_j_decl572
  %_reference581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index579, i32 0, i32 1, i64 %_j580
  %_index582 = load i64, i64* %_reference581
  %_bop_result583 = add i64 %_s575, %_index582
  store i64 %_bop_result583, i64* %_s_decl568
  %_j585 = load i64, i64* %_j_decl572
  %_bop_result586 = add i64 %_j585, 1
  store i64 %_bop_result586, i64* %_j_decl572
  br label %_while_cond588
_while_cond588:
  %_j573 = load i64, i64* %_j_decl572
  %_bop_result574 = icmp slt i64 %_j573, 4
  br i1 %_bop_result574, label %_while_body589, label %_while_end590
_while_end590:
  %_i591 = load i64, i64* %_i_decl569
  %_bop_result592 = add i64 %_i591, 1
  store i64 %_bop_result592, i64* %_i_decl569
  br label %_while_cond594
_while_cond594:
  %_i570 = load i64, i64* %_i_decl569
  %_bop_result571 = icmp slt i64 %_i570, 3
  br i1 %_bop_result571, label %_while_body595, label %_while_end596
_while_end596:
  %_s597 = load i64, i64* %_s_decl568
  ret i64 %_s597
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
