; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1636 = alloca i64
  %_argv1638 = alloca { i64, [0 x i8*] }*
  %_i_decl1640 = alloca i64
  %_a_decl1646 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1636
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1638
  store i64 999, i64* %_i_decl1640
  %_raw_array1641 = call i64* @oat_alloc_array(i64 3)
  %_array1642 = bitcast i64* %_raw_array1641 to { i64, [0 x i64] }*
  %_arr_gep1643 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1642, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep1643
  %_arr_gep1644 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1642, i32 0, i32 1, i32 1
  store i64 100, i64* %_arr_gep1644
  %_arr_gep1645 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1642, i32 0, i32 1, i32 2
  store i64 999, i64* %_arr_gep1645
  store { i64, [0 x i64] }* %_array1642, { i64, [0 x i64] }** %_a_decl1646
  %_a1647 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl1646
  %_reference1648 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1647, i32 0, i32 1, i32 2
  %_index1649 = load i64, i64* %_reference1648
  ret i64 %_index1649
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
