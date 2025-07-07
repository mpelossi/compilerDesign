; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %_n3906 = alloca i64
  %_arr_decl3911 = alloca { i64, [0 x i1] }*
  %_i_decl3912 = alloca i64
  %_i_decl3932 = alloca i64
  %_j_decl3942 = alloca i64
  %_count_decl3967 = alloca i64
  %_i_decl3968 = alloca i64
  store i64 %n, i64* %_n3906
  %_n3908 = load i64, i64* %_n3906
  %_raw_array3909 = call i64* @oat_alloc_array(i64 %_n3908)
  %_array3910 = bitcast i64* %_raw_array3909 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3910, { i64, [0 x i1] }** %_arr_decl3911
  store i64 0, i64* %_i_decl3912
  br label %_while_cond3923
_while_body3924:
  %_arr3916 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr_decl3911
  %_i3917 = load i64, i64* %_i_decl3912
  %_gep3918 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr3916, i32 0, i32 1, i64 %_i3917
  store i1 1, i1* %_gep3918
  %_i3920 = load i64, i64* %_i_decl3912
  %_bop_result3921 = add i64 %_i3920, 1
  store i64 %_bop_result3921, i64* %_i_decl3912
  br label %_while_cond3923
_while_cond3923:
  %_i3913 = load i64, i64* %_i_decl3912
  %_n3914 = load i64, i64* %_n3906
  %_bop_result3915 = icmp slt i64 %_i3913, %_n3914
  br i1 %_bop_result3915, label %_while_body3924, label %_while_end3925
_while_end3925:
  %_arr3926 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr_decl3911
  %_gep3927 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr3926, i32 0, i32 1, i32 0
  store i1 0, i1* %_gep3927
  %_arr3929 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr_decl3911
  %_gep3930 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr3929, i32 0, i32 1, i32 1
  store i1 0, i1* %_gep3930
  store i64 0, i64* %_i_decl3932
  br label %_while_cond3964
_while_body3965:
  br label %_if3957
_if3957:
  %_arr3936 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr_decl3911
  %_i3937 = load i64, i64* %_i_decl3932
  %_reference3938 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr3936, i32 0, i32 1, i64 %_i3937
  %_index3939 = load i1, i1* %_reference3938
  br i1 %_index3939, label %_then3958, label %_end_if3960
_then3958:
  %_i3940 = load i64, i64* %_i_decl3932
  %_bop_result3941 = mul i64 %_i3940, 2
  store i64 %_bop_result3941, i64* %_j_decl3942
  br label %_while_cond3954
_while_body3955:
  %_arr3946 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr_decl3911
  %_j3947 = load i64, i64* %_j_decl3942
  %_gep3948 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr3946, i32 0, i32 1, i64 %_j3947
  store i1 0, i1* %_gep3948
  %_j3950 = load i64, i64* %_j_decl3942
  %_i3951 = load i64, i64* %_i_decl3932
  %_bop_result3952 = add i64 %_j3950, %_i3951
  store i64 %_bop_result3952, i64* %_j_decl3942
  br label %_while_cond3954
_while_cond3954:
  %_j3943 = load i64, i64* %_j_decl3942
  %_n3944 = load i64, i64* %_n3906
  %_bop_result3945 = icmp slt i64 %_j3943, %_n3944
  br i1 %_bop_result3945, label %_while_body3955, label %_while_end3956
_while_end3956:
  br label %_end_if3960
_end_if3960:
  %_i3961 = load i64, i64* %_i_decl3932
  %_bop_result3962 = add i64 %_i3961, 1
  store i64 %_bop_result3962, i64* %_i_decl3932
  br label %_while_cond3964
_while_cond3964:
  %_i3933 = load i64, i64* %_i_decl3932
  %_n3934 = load i64, i64* %_n3906
  %_bop_result3935 = icmp slt i64 %_i3933, %_n3934
  br i1 %_bop_result3935, label %_while_body3965, label %_while_end3966
_while_end3966:
  store i64 0, i64* %_count_decl3967
  store i64 0, i64* %_i_decl3968
  br label %_while_cond3986
_while_body3987:
  br label %_if3979
_if3979:
  %_arr3972 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr_decl3911
  %_i3973 = load i64, i64* %_i_decl3968
  %_reference3974 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr3972, i32 0, i32 1, i64 %_i3973
  %_index3975 = load i1, i1* %_reference3974
  br i1 %_index3975, label %_then3980, label %_end_if3982
_then3980:
  %_count3976 = load i64, i64* %_count_decl3967
  %_bop_result3977 = add i64 %_count3976, 1
  store i64 %_bop_result3977, i64* %_count_decl3967
  br label %_end_if3982
_end_if3982:
  %_i3983 = load i64, i64* %_i_decl3968
  %_bop_result3984 = add i64 %_i3983, 1
  store i64 %_bop_result3984, i64* %_i_decl3968
  br label %_while_cond3986
_while_cond3986:
  %_i3969 = load i64, i64* %_i_decl3968
  %_n3970 = load i64, i64* %_n3906
  %_bop_result3971 = icmp slt i64 %_i3969, %_n3970
  br i1 %_bop_result3971, label %_while_body3987, label %_while_end3988
_while_end3988:
  %_count3989 = load i64, i64* %_count_decl3967
  ret i64 %_count3989
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3899 = alloca i64
  %_argv3901 = alloca { i64, [0 x i8*] }*
  %_n_decl3903 = alloca i64
  store i64 %argc, i64* %_argc3899
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3901
  store i64 100, i64* %_n_decl3903
  %_n3904 = load i64, i64* %_n_decl3903
  %_sieve_call3905 = call i64 @sieve(i64 %_n3904)
  ret i64 %_sieve_call3905
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
