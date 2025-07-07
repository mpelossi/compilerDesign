; generated from: ./sharedtests/nicdard/or1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6815 = alloca i64
  %_argv6817 = alloca { i64, [0 x i8*] }*
  %_x_decl6819 = alloca i64
  %_a_decl6820 = alloca i1
  %_b_decl6821 = alloca i1
  store i64 %argc, i64* %_argc6815
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6817
  store i64 10, i64* %_x_decl6819
  store i1 1, i1* %_a_decl6820
  store i1 0, i1* %_b_decl6821
  br label %_if6826
_if6826:
  %_a6822 = load i1, i1* %_a_decl6820
  br i1 %_a6822, label %_then6827, label %_end_if6829
_then6827:
  %_x6823 = load i64, i64* %_x_decl6819
  %_bop_result6824 = add i64 %_x6823, 1
  store i64 %_bop_result6824, i64* %_x_decl6819
  br label %_end_if6829
_end_if6829:
  br label %_if6834
_if6834:
  %_b6830 = load i1, i1* %_b_decl6821
  br i1 %_b6830, label %_then6835, label %_end_if6837
_then6835:
  %_x6831 = load i64, i64* %_x_decl6819
  %_bop_result6832 = add i64 %_x6831, 2
  store i64 %_bop_result6832, i64* %_x_decl6819
  br label %_end_if6837
_end_if6837:
  br label %_if6844
_if6844:
  %_a6838 = load i1, i1* %_a_decl6820
  %_b6839 = load i1, i1* %_b_decl6821
  %_bop_result6840 = or i1 %_a6838, %_b6839
  br i1 %_bop_result6840, label %_then6845, label %_end_if6847
_then6845:
  %_x6841 = load i64, i64* %_x_decl6819
  %_bop_result6842 = add i64 %_x6841, 15
  store i64 %_bop_result6842, i64* %_x_decl6819
  br label %_end_if6847
_end_if6847:
  %_x6848 = load i64, i64* %_x_decl6819
  ret i64 %_x6848
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
