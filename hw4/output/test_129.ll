; generated from: ./sharedtests/dbernhard/count_primes_less_100.oat
target triple = "x86_64-unknown-linux"
@list = global { i64, [0 x i64] }* null

define i1 @isPrime(i64 %x) {
  %_x5944 = alloca i64
  %_i_decl5955 = alloca i64
  %_cur_num_decl5960 = alloca i64
  store i64 %x, i64* %_x5944
  br label %_if5951
_if5951:
  %_x5946 = load i64, i64* %_x5944
  %_bop_result5947 = icmp eq i64 %_x5946, 0
  %_x5948 = load i64, i64* %_x5944
  %_bop_result5949 = icmp eq i64 %_x5948, 1
  %_bop_result5950 = or i1 %_bop_result5947, %_bop_result5949
  br i1 %_bop_result5950, label %_then5952, label %_end_if5954
_then5952:
  ret i1 0
_end_if5954:
  store i64 2, i64* %_i_decl5955
  br label %_while_cond5980
_while_body5981:
  %_x5959 = load i64, i64* %_x5944
  store i64 %_x5959, i64* %_cur_num_decl5960
  br label %_while_cond5968
_while_body5969:
  %_cur_num5964 = load i64, i64* %_cur_num_decl5960
  %_i5965 = load i64, i64* %_i_decl5955
  %_bop_result5966 = sub i64 %_cur_num5964, %_i5965
  store i64 %_bop_result5966, i64* %_cur_num_decl5960
  br label %_while_cond5968
_while_cond5968:
  %_cur_num5961 = load i64, i64* %_cur_num_decl5960
  %_i5962 = load i64, i64* %_i_decl5955
  %_bop_result5963 = icmp sge i64 %_cur_num5961, %_i5962
  br i1 %_bop_result5963, label %_while_body5969, label %_while_end5970
_while_end5970:
  br label %_if5973
_if5973:
  %_cur_num5971 = load i64, i64* %_cur_num_decl5960
  %_bop_result5972 = icmp eq i64 %_cur_num5971, 0
  br i1 %_bop_result5972, label %_then5974, label %_end_if5976
_then5974:
  ret i1 0
_end_if5976:
  %_i5977 = load i64, i64* %_i_decl5955
  %_bop_result5978 = add i64 %_i5977, 1
  store i64 %_bop_result5978, i64* %_i_decl5955
  br label %_while_cond5980
_while_cond5980:
  %_i5956 = load i64, i64* %_i_decl5955
  %_x5957 = load i64, i64* %_x5944
  %_bop_result5958 = icmp slt i64 %_i5956, %_x5957
  br i1 %_bop_result5958, label %_while_body5981, label %_while_end5982
_while_end5982:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5896 = alloca i64
  %_argv5898 = alloca { i64, [0 x i8*] }*
  %_n_decl5900 = alloca i64
  %_i_decl5905 = alloca i64
  %_count_decl5920 = alloca i64
  %_i_decl5921 = alloca i64
  store i64 %argc, i64* %_argc5896
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5898
  store i64 100, i64* %_n_decl5900
  %_n5901 = load i64, i64* %_n_decl5900
  %_raw_array5902 = call i64* @oat_alloc_array(i64 %_n5901)
  %_array5903 = bitcast i64* %_raw_array5902 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5903, { i64, [0 x i64] }** @list
  store i64 0, i64* %_i_decl5905
  br label %_while_cond5917
_while_body5918:
  %_i5908 = load i64, i64* %_i_decl5905
  %_bop_result5909 = add i64 %_i5908, 1
  %_list5910 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @list
  %_i5911 = load i64, i64* %_i_decl5905
  %_gep5912 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_list5910, i32 0, i32 1, i64 %_i5911
  store i64 %_bop_result5909, i64* %_gep5912
  %_i5914 = load i64, i64* %_i_decl5905
  %_bop_result5915 = add i64 %_i5914, 1
  store i64 %_bop_result5915, i64* %_i_decl5905
  br label %_while_cond5917
_while_cond5917:
  %_i5906 = load i64, i64* %_i_decl5905
  %_bop_result5907 = icmp slt i64 %_i5906, 100
  br i1 %_bop_result5907, label %_while_body5918, label %_while_end5919
_while_end5919:
  store i64 0, i64* %_count_decl5920
  store i64 0, i64* %_i_decl5921
  br label %_while_cond5940
_while_body5941:
  br label %_if5933
_if5933:
  %_list5925 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @list
  %_i5926 = load i64, i64* %_i_decl5921
  %_reference5927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_list5925, i32 0, i32 1, i64 %_i5926
  %_index5928 = load i64, i64* %_reference5927
  %_isPrime_call5929 = call i1 @isPrime(i64 %_index5928)
  br i1 %_isPrime_call5929, label %_then5934, label %_end_if5936
_then5934:
  %_count5930 = load i64, i64* %_count_decl5920
  %_bop_result5931 = add i64 %_count5930, 1
  store i64 %_bop_result5931, i64* %_count_decl5920
  br label %_end_if5936
_end_if5936:
  %_i5937 = load i64, i64* %_i_decl5921
  %_bop_result5938 = add i64 %_i5937, 1
  store i64 %_bop_result5938, i64* %_i_decl5921
  br label %_while_cond5940
_while_cond5940:
  %_i5922 = load i64, i64* %_i_decl5921
  %_n5923 = load i64, i64* %_n_decl5900
  %_bop_result5924 = icmp slt i64 %_i5922, %_n5923
  br i1 %_bop_result5924, label %_while_body5941, label %_while_end5942
_while_end5942:
  %_count5943 = load i64, i64* %_count_decl5920
  ret i64 %_count5943
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
