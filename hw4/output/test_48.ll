; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42

define i64 @f(i64 %x) {
  %_x991 = alloca i64
  store i64 %x, i64* %_x991
  %_x993 = load i64, i64* %_x991
  ret i64 %_x993
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_y986 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y986
  %_y988 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y986
  %_reference989 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y988, i32 0, i32 1, i32 2
  %_index990 = load i64, i64* %_reference989
  ret i64 %_index990
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc929 = alloca i64
  %_argv931 = alloca { i64, [0 x i8*] }*
  %_garr_decl945 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr_decl952 = alloca { i64, [0 x i64] }*
  %_p_decl953 = alloca i64
  %_j_decl954 = alloca i64
  store i64 %argc, i64* %_argc929
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv931
  %_raw_array933 = call i64* @oat_alloc_array(i64 2)
  %_array934 = bitcast i64* %_raw_array933 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array935 = call i64* @oat_alloc_array(i64 2)
  %_array936 = bitcast i64* %_raw_array935 to { i64, [0 x i64] }*
  %_arr_gep937 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array936, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep937
  %_arr_gep938 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array936, i32 0, i32 1, i32 1
  store i64 2, i64* %_arr_gep938
  %_arr_gep939 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array934, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array936, { i64, [0 x i64] }** %_arr_gep939
  %_raw_array940 = call i64* @oat_alloc_array(i64 2)
  %_array941 = bitcast i64* %_raw_array940 to { i64, [0 x i64] }*
  %_arr_gep942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array941, i32 0, i32 1, i32 0
  store i64 3, i64* %_arr_gep942
  %_arr_gep943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array941, i32 0, i32 1, i32 1
  store i64 4, i64* %_arr_gep943
  %_arr_gep944 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array934, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array941, { i64, [0 x i64] }** %_arr_gep944
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array934, { i64, [0 x { i64, [0 x i64] }*] }** %_garr_decl945
  %_raw_array946 = call i64* @oat_alloc_array(i64 4)
  %_array947 = bitcast i64* %_raw_array946 to { i64, [0 x i64] }*
  %_arr_gep948 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array947, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep948
  %_arr_gep949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array947, i32 0, i32 1, i32 1
  store i64 2, i64* %_arr_gep949
  %_arr_gep950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array947, i32 0, i32 1, i32 2
  store i64 3, i64* %_arr_gep950
  %_arr_gep951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array947, i32 0, i32 1, i32 3
  store i64 4, i64* %_arr_gep951
  store { i64, [0 x i64] }* %_array947, { i64, [0 x i64] }** %_arr_decl952
  store i64 0, i64* %_p_decl953
  store i64 0, i64* %_j_decl954
  br label %_while_cond963
_while_body964:
  %_p957 = load i64, i64* %_p_decl953
  %_bop_result958 = add i64 %_p957, 1
  store i64 %_bop_result958, i64* %_p_decl953
  %_j960 = load i64, i64* %_j_decl954
  %_bop_result961 = add i64 %_j960, 1
  store i64 %_bop_result961, i64* %_j_decl954
  br label %_while_cond963
_while_cond963:
  %_j955 = load i64, i64* %_j_decl954
  %_bop_result956 = icmp slt i64 %_j955, 100
  br i1 %_bop_result956, label %_while_body964, label %_while_end965
_while_end965:
  %_arr966 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl952
  %_g_call967 = call i64 @g({ i64, [0 x i64] }* %_arr966)
  %_i968 = load i64, i64* @i
  %_f_call969 = call i64 @f(i64 %_i968)
  %_bop_result970 = add i64 %_g_call967, %_f_call969
  %_arr971 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl952
  %_reference972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr971, i32 0, i32 1, i32 3
  %_index973 = load i64, i64* %_reference972
  %_f_call974 = call i64 @f(i64 %_index973)
  %_bop_result975 = add i64 %_bop_result970, %_f_call974
  %_garr976 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr_decl945
  %_reference977 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr976, i32 0, i32 1, i32 1
  %_index978 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference977
  %_reference979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index978, i32 0, i32 1, i32 1
  %_index980 = load i64, i64* %_reference979
  %_f_call981 = call i64 @f(i64 %_index980)
  %_bop_result982 = add i64 %_bop_result975, %_f_call981
  %_p983 = load i64, i64* %_p_decl953
  %_f_call984 = call i64 @f(i64 %_p983)
  %_bop_result985 = add i64 %_bop_result982, %_f_call984
  ret i64 %_bop_result985
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
