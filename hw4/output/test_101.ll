; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_arr_id4792 to { i64, [0 x i64] }*)
@_arr_id4792 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_arr_id4791 to { i64, [0 x i64] }*)
@_arr_id4791 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_ar14759 = alloca { i64, [0 x i64] }*
  %_ar24761 = alloca { i64, [0 x i64] }*
  %_len4763 = alloca i64
  %_val_decl4765 = alloca i64
  %_i_decl4766 = alloca i64
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar14759
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar24761
  store i64 %len, i64* %_len4763
  store i64 0, i64* %_val_decl4765
  store i64 0, i64* %_i_decl4766
  br label %_while_cond4787
_while_body4788:
  br label %_if4780
_if4780:
  %_ar14770 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar14759
  %_i4771 = load i64, i64* %_i_decl4766
  %_reference4772 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar14770, i32 0, i32 1, i64 %_i4771
  %_index4773 = load i64, i64* %_reference4772
  %_ar24774 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar24761
  %_i4775 = load i64, i64* %_i_decl4766
  %_reference4776 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar24774, i32 0, i32 1, i64 %_i4775
  %_index4777 = load i64, i64* %_reference4776
  %_bop_result4778 = icmp ne i64 %_index4773, %_index4777
  br i1 %_bop_result4778, label %_then4781, label %_end_if4783
_then4781:
  store i64 1, i64* %_val_decl4765
  br label %_end_if4783
_end_if4783:
  %_i4784 = load i64, i64* %_i_decl4766
  %_bop_result4785 = add i64 %_i4784, 1
  store i64 %_bop_result4785, i64* %_i_decl4766
  br label %_while_cond4787
_while_cond4787:
  %_i4767 = load i64, i64* %_i_decl4766
  %_len4768 = load i64, i64* %_len4763
  %_bop_result4769 = icmp slt i64 %_i4767, %_len4768
  br i1 %_bop_result4769, label %_while_body4788, label %_while_end4789
_while_end4789:
  %_val4790 = load i64, i64* %_val_decl4765
  ret i64 %_val4790
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4744 = alloca i64
  %_argv4746 = alloca { i64, [0 x i8*] }*
  %_val_decl4748 = alloca i64
  store i64 %argc, i64* %_argc4744
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4746
  store i64 1, i64* %_val_decl4748
  br label %_if4754
_if4754:
  %_arr14749 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr1
  %_arr24750 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_arrcheck_call4751 = call i64 @arrcheck({ i64, [0 x i64] }* %_arr14749, { i64, [0 x i64] }* %_arr24750, i64 4)
  %_bop_result4752 = icmp eq i64 %_arrcheck_call4751, 1
  br i1 %_bop_result4752, label %_then4755, label %_end_if4757
_then4755:
  store i64 0, i64* %_val_decl4748
  br label %_end_if4757
_end_if4757:
  %_val4758 = load i64, i64* %_val_decl4748
  ret i64 %_val4758
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
