; generated from: ./sharedtests/dbernhard/arr_of_string.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5599 = alloca i64
  %_argv5601 = alloca { i64, [0 x i8*] }*
  %_arr_decl5607 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc5599
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5601
  %_argv5603 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv5601
  %_reference5604 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv5603, i32 0, i32 1, i32 1
  %_index5605 = load i8*, i8** %_reference5604
  %_array_of_string_call5606 = call { i64, [0 x i64] }* @array_of_string(i8* %_index5605)
  store { i64, [0 x i64] }* %_array_of_string_call5606, { i64, [0 x i64] }** %_arr_decl5607
  %_arr5608 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl5607
  %_reference5609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5608, i32 0, i32 1, i32 1
  %_index5610 = load i64, i64* %_reference5609
  ret i64 %_index5610
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
