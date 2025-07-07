; generated from: ./sharedtests/nicdard/lesseq.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6711 = alloca i64
  %_argv6713 = alloca { i64, [0 x i8*] }*
  %_x_decl6715 = alloca i64
  %_y_decl6718 = alloca i1
  store i64 %argc, i64* %_argc6711
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6713
  store i64 10, i64* %_x_decl6715
  %_x6716 = load i64, i64* %_x_decl6715
  %_bop_result6717 = icmp sle i64 %_x6716, 10
  store i1 %_bop_result6717, i1* %_y_decl6718
  br label %_if6720
_if6720:
  %_y6719 = load i1, i1* %_y_decl6718
  br i1 %_y6719, label %_then6721, label %_else6722
_then6721:
  ret i64 1
_else6722:
  ret i64 0
_end_if6723:
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
