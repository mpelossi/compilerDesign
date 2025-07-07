; generated from: ./sharedtests/dbernhard/str_of_arr.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5627 = alloca i64
  %_argv5629 = alloca { i64, [0 x i8*] }*
  %_x_decl5636 = alloca { i64, [0 x i64] }*
  %_z_decl5639 = alloca i8*
  store i64 %argc, i64* %_argc5627
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5629
  %_raw_array5631 = call i64* @oat_alloc_array(i64 3)
  %_array5632 = bitcast i64* %_raw_array5631 to { i64, [0 x i64] }*
  %_arr_gep5633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5632, i32 0, i32 1, i32 0
  store i64 98, i64* %_arr_gep5633
  %_arr_gep5634 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5632, i32 0, i32 1, i32 1
  store i64 99, i64* %_arr_gep5634
  %_arr_gep5635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5632, i32 0, i32 1, i32 2
  store i64 100, i64* %_arr_gep5635
  store { i64, [0 x i64] }* %_array5632, { i64, [0 x i64] }** %_x_decl5636
  %_x5637 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x_decl5636
  %_string_of_array_call5638 = call i8* @string_of_array({ i64, [0 x i64] }* %_x5637)
  store i8* %_string_of_array_call5638, i8** %_z_decl5639
  %_z5640 = load i8*, i8** %_z_decl5639
  call void @print_string(i8* %_z5640)
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
