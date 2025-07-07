; generated from: oatprograms/run20.oat
target triple = "x86_64-unknown-linux"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1650 = alloca i64
  %_argv1652 = alloca { i64, [0 x i8*] }*
  %_a_decl1659 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1650
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1652
  %_raw_array1654 = call i64* @oat_alloc_array(i64 3)
  %_array1655 = bitcast i64* %_raw_array1654 to { i64, [0 x i64] }*
  %_arr_gep1656 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1655, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep1656
  %_arr_gep1657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1655, i32 0, i32 1, i32 1
  store i64 100, i64* %_arr_gep1657
  %_arr_gep1658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1655, i32 0, i32 1, i32 2
  store i64 19, i64* %_arr_gep1658
  store { i64, [0 x i64] }* %_array1655, { i64, [0 x i64] }** %_a_decl1659
  %_a1660 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl1659
  %_reference1661 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1660, i32 0, i32 1, i32 2
  %_index1662 = load i64, i64* %_reference1661
  ret i64 %_index1662
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
