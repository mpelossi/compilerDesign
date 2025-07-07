; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_global_str3842 = global [2 x i8] c"
\00"
@_casted_array3843 = global i8* bitcast ([2 x i8]* @_global_str3842 to i8*)

define i64 @xor(i64 %x, i64 %y) {
  %_x3887 = alloca i64
  %_y3889 = alloca i64
  store i64 %x, i64* %_x3887
  store i64 %y, i64* %_y3889
  %_x3891 = load i64, i64* %_x3887
  %_y3892 = load i64, i64* %_y3889
  %_bop_result3893 = and i64 %_x3891, %_y3892
  %_uop_result3894 = xor i64 %_bop_result3893, -1
  %_x3895 = load i64, i64* %_x3887
  %_y3896 = load i64, i64* %_y3889
  %_bop_result3897 = or i64 %_x3895, %_y3896
  %_bop_result3898 = and i64 %_uop_result3894, %_bop_result3897
  ret i64 %_bop_result3898
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_s3849 = alloca { i64, [0 x i64] }*
  %_x_decl3854 = alloca i64
  %_y_decl3858 = alloca i64
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s3849
  %_s3851 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3849
  %_reference3852 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3851, i32 0, i32 1, i32 0
  %_index3853 = load i64, i64* %_reference3852
  store i64 %_index3853, i64* %_x_decl3854
  %_s3855 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3849
  %_reference3856 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3855, i32 0, i32 1, i32 1
  %_index3857 = load i64, i64* %_reference3856
  store i64 %_index3857, i64* %_y_decl3858
  %_y3859 = load i64, i64* %_y_decl3858
  %_s3860 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3849
  %_gep3861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3860, i32 0, i32 1, i32 0
  store i64 %_y3859, i64* %_gep3861
  %_x3863 = load i64, i64* %_x_decl3854
  %_x3864 = load i64, i64* %_x_decl3854
  %_bop_result3865 = shl i64 %_x3864, 23
  %_xor_call3866 = call i64 @xor(i64 %_x3863, i64 %_bop_result3865)
  store i64 %_xor_call3866, i64* %_x_decl3854
  %_x3868 = load i64, i64* %_x_decl3854
  %_x3869 = load i64, i64* %_x_decl3854
  %_bop_result3870 = lshr i64 %_x3869, 17
  %_xor_call3871 = call i64 @xor(i64 %_x3868, i64 %_bop_result3870)
  store i64 %_xor_call3871, i64* %_x_decl3854
  %_x3873 = load i64, i64* %_x_decl3854
  %_y3874 = load i64, i64* %_y_decl3858
  %_y3875 = load i64, i64* %_y_decl3858
  %_bop_result3876 = lshr i64 %_y3875, 26
  %_xor_call3877 = call i64 @xor(i64 %_y3874, i64 %_bop_result3876)
  %_xor_call3878 = call i64 @xor(i64 %_x3873, i64 %_xor_call3877)
  store i64 %_xor_call3878, i64* %_x_decl3854
  %_x3880 = load i64, i64* %_x_decl3854
  %_s3881 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3849
  %_gep3882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3881, i32 0, i32 1, i32 1
  store i64 %_x3880, i64* %_gep3882
  %_x3884 = load i64, i64* %_x_decl3854
  %_y3885 = load i64, i64* %_y_decl3858
  %_bop_result3886 = add i64 %_x3884, %_y3885
  ret i64 %_bop_result3886
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3816 = alloca i64
  %_argv3818 = alloca { i64, [0 x i8*] }*
  %_seed_decl3822 = alloca { i64, [0 x i64] }*
  %_i_decl3823 = alloca i64
  store i64 %argc, i64* %_argc3816
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3818
  %_raw_array3820 = call i64* @oat_alloc_array(i64 2)
  %_array3821 = bitcast i64* %_raw_array3820 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3821, { i64, [0 x i64] }** %_seed_decl3822
  store i64 0, i64* %_i_decl3823
  br label %_while_cond3836
_while_body3837:
  %_i3826 = load i64, i64* %_i_decl3823
  %_bop_result3827 = add i64 %_i3826, 1
  %_bop_result3828 = mul i64 100, %_bop_result3827
  %_seed3829 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed_decl3822
  %_i3830 = load i64, i64* %_i_decl3823
  %_gep3831 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_seed3829, i32 0, i32 1, i64 %_i3830
  store i64 %_bop_result3828, i64* %_gep3831
  %_i3833 = load i64, i64* %_i_decl3823
  %_bop_result3834 = add i64 %_i3833, 1
  store i64 %_bop_result3834, i64* %_i_decl3823
  br label %_while_cond3836
_while_cond3836:
  %_i3824 = load i64, i64* %_i_decl3823
  %_bop_result3825 = icmp slt i64 %_i3824, 2
  br i1 %_bop_result3825, label %_while_body3837, label %_while_end3838
_while_end3838:
  %_seed3839 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed_decl3822
  %_xor_shift_plus_call3840 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed3839)
  call void @print_int(i64 %_xor_shift_plus_call3840)
  %_loaded_str3844 = load i8*, i8** @_casted_array3843
  call void @print_string(i8* %_loaded_str3844)
  %_seed3846 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed_decl3822
  %_xor_shift_plus_call3847 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed3846)
  call void @print_int(i64 %_xor_shift_plus_call3847)
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
