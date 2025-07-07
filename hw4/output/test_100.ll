; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_a4679 = alloca { i64, [0 x i64] }*
  %_len4681 = alloca i64
  %_i_decl4683 = alloca i64
  %_j_decl4684 = alloca i64
  %_tmp_decl4708 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a4679
  store i64 %len, i64* %_len4681
  store i64 1, i64* %_i_decl4683
  store i64 2, i64* %_j_decl4684
  br label %_while_cond4741
_while_body4742:
  br label %_if4737
_if4737:
  %_a4688 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4679
  %_i4689 = load i64, i64* %_i_decl4683
  %_bop_result4690 = sub i64 %_i4689, 1
  %_reference4691 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4688, i32 0, i32 1, i64 %_bop_result4690
  %_index4692 = load i64, i64* %_reference4691
  %_a4693 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4679
  %_i4694 = load i64, i64* %_i_decl4683
  %_reference4695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4693, i32 0, i32 1, i64 %_i4694
  %_index4696 = load i64, i64* %_reference4695
  %_bop_result4697 = icmp sle i64 %_index4692, %_index4696
  br i1 %_bop_result4697, label %_then4738, label %_else4739
_then4738:
  %_j4698 = load i64, i64* %_j_decl4684
  store i64 %_j4698, i64* %_i_decl4683
  %_j4700 = load i64, i64* %_j_decl4684
  %_bop_result4701 = add i64 %_j4700, 1
  store i64 %_bop_result4701, i64* %_j_decl4684
  br label %_end_if4740
_else4739:
  %_a4703 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4679
  %_i4704 = load i64, i64* %_i_decl4683
  %_bop_result4705 = sub i64 %_i4704, 1
  %_reference4706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4703, i32 0, i32 1, i64 %_bop_result4705
  %_index4707 = load i64, i64* %_reference4706
  store i64 %_index4707, i64* %_tmp_decl4708
  %_a4709 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4679
  %_i4710 = load i64, i64* %_i_decl4683
  %_reference4711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4709, i32 0, i32 1, i64 %_i4710
  %_index4712 = load i64, i64* %_reference4711
  %_a4713 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4679
  %_i4714 = load i64, i64* %_i_decl4683
  %_bop_result4715 = sub i64 %_i4714, 1
  %_gep4716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4713, i32 0, i32 1, i64 %_bop_result4715
  store i64 %_index4712, i64* %_gep4716
  %_tmp4718 = load i64, i64* %_tmp_decl4708
  %_a4719 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4679
  %_i4720 = load i64, i64* %_i_decl4683
  %_gep4721 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4719, i32 0, i32 1, i64 %_i4720
  store i64 %_tmp4718, i64* %_gep4721
  %_i4723 = load i64, i64* %_i_decl4683
  %_bop_result4724 = sub i64 %_i4723, 1
  store i64 %_bop_result4724, i64* %_i_decl4683
  br label %_if4733
_if4733:
  %_i4726 = load i64, i64* %_i_decl4683
  %_bop_result4727 = icmp eq i64 %_i4726, 0
  br i1 %_bop_result4727, label %_then4734, label %_end_if4736
_then4734:
  %_j4728 = load i64, i64* %_j_decl4684
  store i64 %_j4728, i64* %_i_decl4683
  %_j4730 = load i64, i64* %_j_decl4684
  %_bop_result4731 = add i64 %_j4730, 1
  store i64 %_bop_result4731, i64* %_j_decl4684
  br label %_end_if4736
_end_if4736:
  br label %_end_if4740
_end_if4740:
  br label %_while_cond4741
_while_cond4741:
  %_i4685 = load i64, i64* %_i_decl4683
  %_len4686 = load i64, i64* %_len4681
  %_bop_result4687 = icmp slt i64 %_i4685, %_len4686
  br i1 %_bop_result4687, label %_while_body4742, label %_while_end4743
_while_end4743:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4646 = alloca i64
  %_argv4648 = alloca { i64, [0 x i8*] }*
  %_arr_decl4660 = alloca { i64, [0 x i64] }*
  %_len_decl4661 = alloca i64
  %_i_decl4665 = alloca i64
  store i64 %argc, i64* %_argc4646
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4648
  %_raw_array4650 = call i64* @oat_alloc_array(i64 8)
  %_array4651 = bitcast i64* %_raw_array4650 to { i64, [0 x i64] }*
  %_arr_gep4652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4651, i32 0, i32 1, i32 0
  store i64 5, i64* %_arr_gep4652
  %_arr_gep4653 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4651, i32 0, i32 1, i32 1
  store i64 200, i64* %_arr_gep4653
  %_arr_gep4654 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4651, i32 0, i32 1, i32 2
  store i64 1, i64* %_arr_gep4654
  %_arr_gep4655 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4651, i32 0, i32 1, i32 3
  store i64 65, i64* %_arr_gep4655
  %_arr_gep4656 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4651, i32 0, i32 1, i32 4
  store i64 30, i64* %_arr_gep4656
  %_arr_gep4657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4651, i32 0, i32 1, i32 5
  store i64 99, i64* %_arr_gep4657
  %_arr_gep4658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4651, i32 0, i32 1, i32 6
  store i64 2, i64* %_arr_gep4658
  %_arr_gep4659 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4651, i32 0, i32 1, i32 7
  store i64 0, i64* %_arr_gep4659
  store { i64, [0 x i64] }* %_array4651, { i64, [0 x i64] }** %_arr_decl4660
  store i64 8, i64* %_len_decl4661
  %_arr4662 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl4660
  %_len4663 = load i64, i64* %_len_decl4661
  call void @gnomeSort({ i64, [0 x i64] }* %_arr4662, i64 %_len4663)
  store i64 0, i64* %_i_decl4665
  br label %_while_cond4676
_while_body4677:
  %_arr4668 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl4660
  %_i4669 = load i64, i64* %_i_decl4665
  %_reference4670 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4668, i32 0, i32 1, i64 %_i4669
  %_index4671 = load i64, i64* %_reference4670
  call void @print_int(i64 %_index4671)
  %_i4673 = load i64, i64* %_i_decl4665
  %_bop_result4674 = add i64 %_i4673, 1
  store i64 %_bop_result4674, i64* %_i_decl4665
  br label %_while_cond4676
_while_cond4676:
  %_i4666 = load i64, i64* %_i_decl4665
  %_bop_result4667 = icmp slt i64 %_i4666, 8
  br i1 %_bop_result4667, label %_while_body4677, label %_while_end4678
_while_end4678:
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
