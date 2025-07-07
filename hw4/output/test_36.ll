; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc656 = alloca i64
  %_argv658 = alloca { i64, [0 x i8*] }*
  %_a_decl664 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc656
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv658
  %_raw_array660 = call i64* @oat_alloc_array(i64 2)
  %_array661 = bitcast i64* %_raw_array660 to { i64, [0 x i64] }*
  %_arr_gep662 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array661, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep662
  %_arr_gep663 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array661, i32 0, i32 1, i32 1
  store i64 0, i64* %_arr_gep663
  store { i64, [0 x i64] }* %_array661, { i64, [0 x i64] }** %_a_decl664
  %_a665 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl664
  %_reference666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a665, i32 0, i32 1, i32 1
  %_index667 = load i64, i64* %_reference666
  ret i64 %_index667
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
