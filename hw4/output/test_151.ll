; generated from: ./sharedtests/nicdard/greater.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6672 = alloca i64
  %_argv6674 = alloca { i64, [0 x i8*] }*
  %_x_decl6676 = alloca i64
  %_y_decl6679 = alloca i1
  store i64 %argc, i64* %_argc6672
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6674
  store i64 10, i64* %_x_decl6676
  %_x6677 = load i64, i64* %_x_decl6676
  %_bop_result6678 = icmp sgt i64 %_x6677, 10
  store i1 %_bop_result6678, i1* %_y_decl6679
  br label %_if6681
_if6681:
  %_y6680 = load i1, i1* %_y_decl6679
  br i1 %_y6680, label %_then6682, label %_else6683
_then6682:
  ret i64 1
_else6683:
  ret i64 0
_end_if6684:
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
