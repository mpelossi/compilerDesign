; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1623 = alloca i64
  %_argv1625 = alloca { i64, [0 x i8*] }*
  %_a_decl1632 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1623
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1625
  %_raw_array1627 = call i64* @oat_alloc_array(i64 3)
  %_array1628 = bitcast i64* %_raw_array1627 to { i64, [0 x i64] }*
  %_arr_gep1629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1628, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep1629
  %_arr_gep1630 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1628, i32 0, i32 1, i32 1
  store i64 100, i64* %_arr_gep1630
  %_arr_gep1631 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1628, i32 0, i32 1, i32 2
  store i64 999, i64* %_arr_gep1631
  store { i64, [0 x i64] }* %_array1628, { i64, [0 x i64] }** %_a_decl1632
  %_a1633 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl1632
  %_reference1634 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1633, i32 0, i32 1, i32 2
  %_index1635 = load i64, i64* %_reference1634
  ret i64 %_index1635
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
