; generated from: ./sharedtests/nicdard/inequality.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6659 = alloca i64
  %_argv6661 = alloca { i64, [0 x i8*] }*
  %_x_decl6663 = alloca i64
  %_y_decl6666 = alloca i1
  store i64 %argc, i64* %_argc6659
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6661
  store i64 10, i64* %_x_decl6663
  %_x6664 = load i64, i64* %_x_decl6663
  %_bop_result6665 = icmp ne i64 %_x6664, 10
  store i1 %_bop_result6665, i1* %_y_decl6666
  br label %_if6668
_if6668:
  %_y6667 = load i1, i1* %_y_decl6666
  br i1 %_y6667, label %_then6669, label %_else6670
_then6669:
  ret i64 1
_else6670:
  ret i64 0
_end_if6671:
  ret i64 1
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
