; generated from: ./sharedtests/nicdard/while1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6631 = alloca i64
  %_argv6633 = alloca { i64, [0 x i8*] }*
  %_x_decl6636 = alloca i64
  store i64 %argc, i64* %_argc6631
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6633
  %_uop_result6635 = mul i64 10, -1
  store i64 %_uop_result6635, i64* %_x_decl6636
  br label %_while_cond6642
_while_body6643:
  %_x6639 = load i64, i64* %_x_decl6636
  %_bop_result6640 = add i64 %_x6639, 1
  store i64 %_bop_result6640, i64* %_x_decl6636
  br label %_while_cond6642
_while_cond6642:
  %_x6637 = load i64, i64* %_x_decl6636
  %_bop_result6638 = icmp sle i64 %_x6637, 0
  br i1 %_bop_result6638, label %_while_body6643, label %_while_end6644
_while_end6644:
  %_x6645 = load i64, i64* %_x_decl6636
  ret i64 %_x6645
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
