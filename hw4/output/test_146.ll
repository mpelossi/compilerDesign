; generated from: ./sharedtests/nicdard/assign.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6611 = alloca i64
  %_argv6613 = alloca { i64, [0 x i8*] }*
  %_x_decl6615 = alloca i64
  store i64 %argc, i64* %_argc6611
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6613
  store i64 10, i64* %_x_decl6615
  %_x6616 = load i64, i64* %_x_decl6615
  %_uop_result6617 = mul i64 %_x6616, -1
  store i64 %_uop_result6617, i64* %_x_decl6615
  %_x6619 = load i64, i64* %_x_decl6615
  ret i64 %_x6619
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
