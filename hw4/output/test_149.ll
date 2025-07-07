; generated from: ./sharedtests/nicdard/equality.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6646 = alloca i64
  %_argv6648 = alloca { i64, [0 x i8*] }*
  %_x_decl6650 = alloca i64
  %_y_decl6653 = alloca i1
  store i64 %argc, i64* %_argc6646
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6648
  store i64 10, i64* %_x_decl6650
  %_x6651 = load i64, i64* %_x_decl6650
  %_bop_result6652 = icmp eq i64 %_x6651, 10
  store i1 %_bop_result6652, i1* %_y_decl6653
  br label %_if6655
_if6655:
  %_y6654 = load i1, i1* %_y_decl6653
  br i1 %_y6654, label %_then6656, label %_else6657
_then6656:
  ret i64 1
_else6657:
  ret i64 0
_end_if6658:
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
