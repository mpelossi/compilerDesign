; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_global_str1690 = global [4 x i8] c"abc\00"
@_casted_array1691 = global i8* bitcast ([4 x i8]* @_global_str1690 to i8*)
@_global_str1694 = global [4 x i8] c"def\00"
@_casted_array1695 = global i8* bitcast ([4 x i8]* @_global_str1694 to i8*)
@_global_str1701 = global [4 x i8] c"789\00"
@_casted_array1702 = global i8* bitcast ([4 x i8]* @_global_str1701 to i8*)
@_global_str1705 = global [4 x i8] c"123\00"
@_casted_array1706 = global i8* bitcast ([4 x i8]* @_global_str1705 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1682 = alloca i64
  %_argv1684 = alloca { i64, [0 x i8*] }*
  %_strs_decl1710 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store i64 %argc, i64* %_argc1682
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1684
  %_raw_array1686 = call i64* @oat_alloc_array(i64 2)
  %_array1687 = bitcast i64* %_raw_array1686 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1688 = call i64* @oat_alloc_array(i64 2)
  %_array1689 = bitcast i64* %_raw_array1688 to { i64, [0 x i8*] }*
  %_loaded_str1692 = load i8*, i8** @_casted_array1691
  %_arr_gep1693 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1689, i32 0, i32 1, i32 0
  store i8* %_loaded_str1692, i8** %_arr_gep1693
  %_loaded_str1696 = load i8*, i8** @_casted_array1695
  %_arr_gep1697 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1689, i32 0, i32 1, i32 1
  store i8* %_loaded_str1696, i8** %_arr_gep1697
  %_arr_gep1698 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1687, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1689, { i64, [0 x i8*] }** %_arr_gep1698
  %_raw_array1699 = call i64* @oat_alloc_array(i64 2)
  %_array1700 = bitcast i64* %_raw_array1699 to { i64, [0 x i8*] }*
  %_loaded_str1703 = load i8*, i8** @_casted_array1702
  %_arr_gep1704 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1700, i32 0, i32 1, i32 0
  store i8* %_loaded_str1703, i8** %_arr_gep1704
  %_loaded_str1707 = load i8*, i8** @_casted_array1706
  %_arr_gep1708 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1700, i32 0, i32 1, i32 1
  store i8* %_loaded_str1707, i8** %_arr_gep1708
  %_arr_gep1709 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1687, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1700, { i64, [0 x i8*] }** %_arr_gep1709
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1687, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs_decl1710
  %_strs1711 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs_decl1710
  %_reference1712 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_strs1711, i32 0, i32 1, i32 1
  %_index1713 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_reference1712
  %_reference1714 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_index1713, i32 0, i32 1, i32 1
  %_index1715 = load i8*, i8** %_reference1714
  call void @print_string(i8* %_index1715)
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
