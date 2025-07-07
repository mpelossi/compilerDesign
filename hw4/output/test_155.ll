; generated from: ./sharedtests/nicdard/for.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6724 = alloca i64
  %_argv6726 = alloca { i64, [0 x i8*] }*
  %_counter_decl6728 = alloca i64
  %_x_decl6729 = alloca i64
  %_y_decl6730 = alloca i64
  store i64 %argc, i64* %_argc6724
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6726
  store i64 0, i64* %_counter_decl6728
  store i64 0, i64* %_x_decl6729
  store i64 10, i64* %_y_decl6730
  br label %_while_cond6739
_while_body6740:
  %_counter6733 = load i64, i64* %_counter_decl6728
  %_bop_result6734 = add i64 %_counter6733, 1
  store i64 %_bop_result6734, i64* %_counter_decl6728
  %_x6736 = load i64, i64* %_x_decl6729
  %_bop_result6737 = add i64 %_x6736, 2
  store i64 %_bop_result6737, i64* %_x_decl6729
  br label %_while_cond6739
_while_cond6739:
  %_x6731 = load i64, i64* %_x_decl6729
  %_bop_result6732 = icmp slt i64 %_x6731, 10
  br i1 %_bop_result6732, label %_while_body6740, label %_while_end6741
_while_end6741:
  %_counter6742 = load i64, i64* %_counter_decl6728
  ret i64 %_counter6742
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
