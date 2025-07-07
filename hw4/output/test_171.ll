; generated from: ./sharedtests/nicdard/arlocal3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7008 = alloca i64
  %_argv7010 = alloca { i64, [0 x i8*] }*
  %_arr_decl7017 = alloca { i64, [0 x i64] }*
  %_x_decl7020 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc7008
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7010
  %_raw_array7012 = call i64* @oat_alloc_array(i64 3)
  %_array7013 = bitcast i64* %_raw_array7012 to { i64, [0 x i64] }*
  %_arr_gep7014 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7013, i32 0, i32 1, i32 0
  store i64 12, i64* %_arr_gep7014
  %_arr_gep7015 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7013, i32 0, i32 1, i32 1
  store i64 23, i64* %_arr_gep7015
  %_arr_gep7016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7013, i32 0, i32 1, i32 2
  store i64 32, i64* %_arr_gep7016
  store { i64, [0 x i64] }* %_array7013, { i64, [0 x i64] }** %_arr_decl7017
  %_raw_array7018 = call i64* @oat_alloc_array(i64 3)
  %_array7019 = bitcast i64* %_raw_array7018 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7019, { i64, [0 x i64] }** %_x_decl7020
  %_x7021 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x_decl7020
  store { i64, [0 x i64] }* %_x7021, { i64, [0 x i64] }** %_arr_decl7017
  %_x7023 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x_decl7020
  %_gep7024 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x7023, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep7024
  %_arr7026 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl7017
  %_reference7027 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr7026, i32 0, i32 1, i32 2
  %_index7028 = load i64, i64* %_reference7027
  ret i64 %_index7028
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
