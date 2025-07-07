; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1724 = alloca i64
  %_argv1726 = alloca { i64, [0 x i8*] }*
  %_a_decl1733 = alloca { i64, [0 x i64] }*
  %_str_decl1736 = alloca i8*
  store i64 %argc, i64* %_argc1724
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1726
  %_raw_array1728 = call i64* @oat_alloc_array(i64 3)
  %_array1729 = bitcast i64* %_raw_array1728 to { i64, [0 x i64] }*
  %_arr_gep1730 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1729, i32 0, i32 1, i32 0
  store i64 110, i64* %_arr_gep1730
  %_arr_gep1731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1729, i32 0, i32 1, i32 1
  store i64 110, i64* %_arr_gep1731
  %_arr_gep1732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1729, i32 0, i32 1, i32 2
  store i64 110, i64* %_arr_gep1732
  store { i64, [0 x i64] }* %_array1729, { i64, [0 x i64] }** %_a_decl1733
  %_a1734 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl1733
  %_string_of_array_call1735 = call i8* @string_of_array({ i64, [0 x i64] }* %_a1734)
  store i8* %_string_of_array_call1735, i8** %_str_decl1736
  %_str1737 = load i8*, i8** %_str_decl1736
  call void @print_string(i8* %_str1737)
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
