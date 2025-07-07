; generated from: ./sharedtests/nicdard/less.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6685 = alloca i64
  %_argv6687 = alloca { i64, [0 x i8*] }*
  %_x_decl6689 = alloca i64
  %_y_decl6692 = alloca i1
  store i64 %argc, i64* %_argc6685
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6687
  store i64 10, i64* %_x_decl6689
  %_x6690 = load i64, i64* %_x_decl6689
  %_bop_result6691 = icmp slt i64 %_x6690, 10
  store i1 %_bop_result6691, i1* %_y_decl6692
  br label %_if6694
_if6694:
  %_y6693 = load i1, i1* %_y_decl6692
  br i1 %_y6693, label %_then6695, label %_else6696
_then6695:
  ret i64 1
_else6696:
  ret i64 0
_end_if6697:
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
