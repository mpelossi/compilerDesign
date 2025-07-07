; generated from: ./sharedtests/nicdard/and1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6743 = alloca i64
  %_argv6745 = alloca { i64, [0 x i8*] }*
  %_x_decl6747 = alloca i64
  %_a_decl6748 = alloca i1
  %_b_decl6749 = alloca i1
  store i64 %argc, i64* %_argc6743
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6745
  store i64 10, i64* %_x_decl6747
  store i1 1, i1* %_a_decl6748
  store i1 0, i1* %_b_decl6749
  br label %_if6754
_if6754:
  %_a6750 = load i1, i1* %_a_decl6748
  br i1 %_a6750, label %_then6755, label %_end_if6757
_then6755:
  %_x6751 = load i64, i64* %_x_decl6747
  %_bop_result6752 = add i64 %_x6751, 1
  store i64 %_bop_result6752, i64* %_x_decl6747
  br label %_end_if6757
_end_if6757:
  br label %_if6762
_if6762:
  %_b6758 = load i1, i1* %_b_decl6749
  br i1 %_b6758, label %_then6763, label %_end_if6765
_then6763:
  %_x6759 = load i64, i64* %_x_decl6747
  %_bop_result6760 = add i64 %_x6759, 2
  store i64 %_bop_result6760, i64* %_x_decl6747
  br label %_end_if6765
_end_if6765:
  br label %_if6772
_if6772:
  %_a6766 = load i1, i1* %_a_decl6748
  %_b6767 = load i1, i1* %_b_decl6749
  %_bop_result6768 = and i1 %_a6766, %_b6767
  br i1 %_bop_result6768, label %_then6773, label %_end_if6775
_then6773:
  %_x6769 = load i64, i64* %_x_decl6747
  %_bop_result6770 = add i64 %_x6769, 15
  store i64 %_bop_result6770, i64* %_x_decl6747
  br label %_end_if6775
_end_if6775:
  %_x6776 = load i64, i64* %_x_decl6747
  ret i64 %_x6776
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
