; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_global_str1669 = global [4 x i8] c"abc\00"
@_casted_array1670 = global i8* bitcast ([4 x i8]* @_global_str1669 to i8*)
@_global_str1673 = global [4 x i8] c"def\00"
@_casted_array1674 = global i8* bitcast ([4 x i8]* @_global_str1673 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1663 = alloca i64
  %_argv1665 = alloca { i64, [0 x i8*] }*
  %_strs_decl1677 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1663
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1665
  %_raw_array1667 = call i64* @oat_alloc_array(i64 2)
  %_array1668 = bitcast i64* %_raw_array1667 to { i64, [0 x i8*] }*
  %_loaded_str1671 = load i8*, i8** @_casted_array1670
  %_arr_gep1672 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1668, i32 0, i32 1, i32 0
  store i8* %_loaded_str1671, i8** %_arr_gep1672
  %_loaded_str1675 = load i8*, i8** @_casted_array1674
  %_arr_gep1676 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1668, i32 0, i32 1, i32 1
  store i8* %_loaded_str1675, i8** %_arr_gep1676
  store { i64, [0 x i8*] }* %_array1668, { i64, [0 x i8*] }** %_strs_decl1677
  %_strs1678 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_strs_decl1677
  %_reference1679 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_strs1678, i32 0, i32 1, i32 0
  %_index1680 = load i8*, i8** %_reference1679
  call void @print_string(i8* %_index1680)
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
