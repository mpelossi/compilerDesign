; generated from: ./sharedtests/nicdard/and2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6777 = alloca i64
  %_argv6779 = alloca { i64, [0 x i8*] }*
  %_x_decl6781 = alloca i64
  %_a_decl6784 = alloca i1
  %_b_decl6787 = alloca i1
  store i64 %argc, i64* %_argc6777
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6779
  store i64 10, i64* %_x_decl6781
  %_x6782 = load i64, i64* %_x_decl6781
  %_bop_result6783 = icmp sge i64 %_x6782, 10
  store i1 %_bop_result6783, i1* %_a_decl6784
  %_x6785 = load i64, i64* %_x_decl6781
  %_bop_result6786 = icmp slt i64 %_x6785, 10
  store i1 %_bop_result6786, i1* %_b_decl6787
  br label %_if6792
_if6792:
  %_a6788 = load i1, i1* %_a_decl6784
  br i1 %_a6788, label %_then6793, label %_end_if6795
_then6793:
  %_x6789 = load i64, i64* %_x_decl6781
  %_bop_result6790 = add i64 %_x6789, 1
  store i64 %_bop_result6790, i64* %_x_decl6781
  br label %_end_if6795
_end_if6795:
  br label %_if6800
_if6800:
  %_b6796 = load i1, i1* %_b_decl6787
  br i1 %_b6796, label %_then6801, label %_end_if6803
_then6801:
  %_x6797 = load i64, i64* %_x_decl6781
  %_bop_result6798 = add i64 %_x6797, 2
  store i64 %_bop_result6798, i64* %_x_decl6781
  br label %_end_if6803
_end_if6803:
  br label %_if6810
_if6810:
  %_a6804 = load i1, i1* %_a_decl6784
  %_b6805 = load i1, i1* %_b_decl6787
  %_bop_result6806 = and i1 %_a6804, %_b6805
  br i1 %_bop_result6806, label %_then6811, label %_end_if6813
_then6811:
  %_x6807 = load i64, i64* %_x_decl6781
  %_bop_result6808 = add i64 %_x6807, 15
  store i64 %_bop_result6808, i64* %_x_decl6781
  br label %_end_if6813
_end_if6813:
  %_x6814 = load i64, i64* %_x_decl6781
  ret i64 %_x6814
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
