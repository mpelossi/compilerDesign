; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc598 = alloca i64
  %_argv600 = alloca { i64, [0 x i8*] }*
  %_s_decl626 = alloca i64
  %_i_decl627 = alloca i64
  %_j_decl630 = alloca i64
  store i64 %argc, i64* %_argc598
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv600
  %_raw_array602 = call i64* @oat_alloc_array(i64 3)
  %_array603 = bitcast i64* %_raw_array602 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array604 = call i64* @oat_alloc_array(i64 4)
  %_array605 = bitcast i64* %_raw_array604 to { i64, [0 x i64] }*
  %_arr_gep606 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array605, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep606
  %_arr_gep607 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array605, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep607
  %_arr_gep608 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array605, i32 0, i32 1, i32 2
  store i64 2, i64* %_arr_gep608
  %_arr_gep609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array605, i32 0, i32 1, i32 3
  store i64 3, i64* %_arr_gep609
  %_arr_gep610 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array603, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array605, { i64, [0 x i64] }** %_arr_gep610
  %_raw_array611 = call i64* @oat_alloc_array(i64 4)
  %_array612 = bitcast i64* %_raw_array611 to { i64, [0 x i64] }*
  %_arr_gep613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array612, i32 0, i32 1, i32 0
  store i64 4, i64* %_arr_gep613
  %_arr_gep614 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array612, i32 0, i32 1, i32 1
  store i64 5, i64* %_arr_gep614
  %_arr_gep615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array612, i32 0, i32 1, i32 2
  store i64 6, i64* %_arr_gep615
  %_arr_gep616 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array612, i32 0, i32 1, i32 3
  store i64 7, i64* %_arr_gep616
  %_arr_gep617 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array603, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array612, { i64, [0 x i64] }** %_arr_gep617
  %_raw_array618 = call i64* @oat_alloc_array(i64 4)
  %_array619 = bitcast i64* %_raw_array618 to { i64, [0 x i64] }*
  %_arr_gep620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array619, i32 0, i32 1, i32 0
  store i64 8, i64* %_arr_gep620
  %_arr_gep621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array619, i32 0, i32 1, i32 1
  store i64 9, i64* %_arr_gep621
  %_arr_gep622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array619, i32 0, i32 1, i32 2
  store i64 10, i64* %_arr_gep622
  %_arr_gep623 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array619, i32 0, i32 1, i32 3
  store i64 11, i64* %_arr_gep623
  %_arr_gep624 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array603, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array619, { i64, [0 x i64] }** %_arr_gep624
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array603, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_s_decl626
  store i64 0, i64* %_i_decl627
  br label %_while_cond652
_while_body653:
  store i64 0, i64* %_j_decl630
  br label %_while_cond646
_while_body647:
  %_s633 = load i64, i64* %_s_decl626
  %_a634 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_i635 = load i64, i64* %_i_decl627
  %_reference636 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a634, i32 0, i32 1, i64 %_i635
  %_index637 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference636
  %_j638 = load i64, i64* %_j_decl630
  %_reference639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index637, i32 0, i32 1, i64 %_j638
  %_index640 = load i64, i64* %_reference639
  %_bop_result641 = add i64 %_s633, %_index640
  store i64 %_bop_result641, i64* %_s_decl626
  %_j643 = load i64, i64* %_j_decl630
  %_bop_result644 = add i64 %_j643, 1
  store i64 %_bop_result644, i64* %_j_decl630
  br label %_while_cond646
_while_cond646:
  %_j631 = load i64, i64* %_j_decl630
  %_bop_result632 = icmp slt i64 %_j631, 4
  br i1 %_bop_result632, label %_while_body647, label %_while_end648
_while_end648:
  %_i649 = load i64, i64* %_i_decl627
  %_bop_result650 = add i64 %_i649, 1
  store i64 %_bop_result650, i64* %_i_decl627
  br label %_while_cond652
_while_cond652:
  %_i628 = load i64, i64* %_i_decl627
  %_bop_result629 = icmp slt i64 %_i628, 3
  br i1 %_bop_result629, label %_while_body653, label %_while_end654
_while_end654:
  %_s655 = load i64, i64* %_s_decl626
  ret i64 %_s655
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
