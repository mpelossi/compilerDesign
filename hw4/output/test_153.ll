; generated from: ./sharedtests/nicdard/greatereq.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6698 = alloca i64
  %_argv6700 = alloca { i64, [0 x i8*] }*
  %_x_decl6702 = alloca i64
  %_y_decl6705 = alloca i1
  store i64 %argc, i64* %_argc6698
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6700
  store i64 10, i64* %_x_decl6702
  %_x6703 = load i64, i64* %_x_decl6702
  %_bop_result6704 = icmp sge i64 %_x6703, 10
  store i1 %_bop_result6704, i1* %_y_decl6705
  br label %_if6707
_if6707:
  %_y6706 = load i1, i1* %_y_decl6705
  br i1 %_y6706, label %_then6708, label %_else6709
_then6708:
  ret i64 1
_else6709:
  ret i64 0
_end_if6710:
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
