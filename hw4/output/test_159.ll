; generated from: ./sharedtests/nicdard/or2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6849 = alloca i64
  %_argv6851 = alloca { i64, [0 x i8*] }*
  %_x_decl6853 = alloca i64
  %_a_decl6856 = alloca i1
  %_b_decl6859 = alloca i1
  store i64 %argc, i64* %_argc6849
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6851
  store i64 10, i64* %_x_decl6853
  %_x6854 = load i64, i64* %_x_decl6853
  %_bop_result6855 = icmp eq i64 %_x6854, 10
  store i1 %_bop_result6855, i1* %_a_decl6856
  %_x6857 = load i64, i64* %_x_decl6853
  %_bop_result6858 = icmp ne i64 %_x6857, 10
  store i1 %_bop_result6858, i1* %_b_decl6859
  br label %_if6864
_if6864:
  %_a6860 = load i1, i1* %_a_decl6856
  br i1 %_a6860, label %_then6865, label %_end_if6867
_then6865:
  %_x6861 = load i64, i64* %_x_decl6853
  %_bop_result6862 = add i64 %_x6861, 1
  store i64 %_bop_result6862, i64* %_x_decl6853
  br label %_end_if6867
_end_if6867:
  br label %_if6872
_if6872:
  %_b6868 = load i1, i1* %_b_decl6859
  br i1 %_b6868, label %_then6873, label %_end_if6875
_then6873:
  %_x6869 = load i64, i64* %_x_decl6853
  %_bop_result6870 = add i64 %_x6869, 2
  store i64 %_bop_result6870, i64* %_x_decl6853
  br label %_end_if6875
_end_if6875:
  br label %_if6882
_if6882:
  %_a6876 = load i1, i1* %_a_decl6856
  %_b6877 = load i1, i1* %_b_decl6859
  %_bop_result6878 = or i1 %_a6876, %_b6877
  br i1 %_bop_result6878, label %_then6883, label %_end_if6885
_then6883:
  %_x6879 = load i64, i64* %_x_decl6853
  %_bop_result6880 = add i64 %_x6879, 15
  store i64 %_bop_result6880, i64* %_x_decl6853
  br label %_end_if6885
_end_if6885:
  %_x6886 = load i64, i64* %_x_decl6853
  ret i64 %_x6886
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
