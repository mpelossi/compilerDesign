; generated from: ./sharedtests/nicdard/neg.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6597 = alloca i64
  %_argv6599 = alloca { i64, [0 x i8*] }*
  %_x_decl6601 = alloca i64
  %_y_decl6604 = alloca i64
  store i64 %argc, i64* %_argc6597
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6599
  store i64 10, i64* %_x_decl6601
  %_x6602 = load i64, i64* %_x_decl6601
  %_uop_result6603 = mul i64 %_x6602, -1
  store i64 %_uop_result6603, i64* %_y_decl6604
  %_y6605 = load i64, i64* %_y_decl6604
  ret i64 %_y6605
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
