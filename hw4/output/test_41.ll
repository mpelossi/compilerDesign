; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1762 = alloca i64
  %_x2764 = alloca i64
  %_x3766 = alloca i64
  %_x4768 = alloca i64
  %_x5770 = alloca i64
  %_x6772 = alloca i64
  %_x7774 = alloca i64
  %_x8776 = alloca i64
  store i64 %x1, i64* %_x1762
  store i64 %x2, i64* %_x2764
  store i64 %x3, i64* %_x3766
  store i64 %x4, i64* %_x4768
  store i64 %x5, i64* %_x5770
  store i64 %x6, i64* %_x6772
  store i64 %x7, i64* %_x7774
  store i64 %x8, i64* %_x8776
  %_x1778 = load i64, i64* %_x1762
  %_x2779 = load i64, i64* %_x2764
  %_bop_result780 = add i64 %_x1778, %_x2779
  %_x3781 = load i64, i64* %_x3766
  %_bop_result782 = add i64 %_bop_result780, %_x3781
  %_x4783 = load i64, i64* %_x4768
  %_bop_result784 = add i64 %_bop_result782, %_x4783
  %_x5785 = load i64, i64* %_x5770
  %_bop_result786 = add i64 %_bop_result784, %_x5785
  %_x6787 = load i64, i64* %_x6772
  %_bop_result788 = add i64 %_bop_result786, %_x6787
  %_x7789 = load i64, i64* %_x7774
  %_bop_result790 = add i64 %_bop_result788, %_x7789
  %_x8791 = load i64, i64* %_x8776
  %_bop_result792 = add i64 %_bop_result790, %_x8791
  ret i64 %_bop_result792
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc754 = alloca i64
  %_argv756 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc754
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv756
  %_uop_result758 = mul i64 5, -1
  %_uop_result759 = mul i64 4, -1
  %_uop_result760 = mul i64 3, -1
  %_f_call761 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop_result758, i64 %_uop_result759, i64 %_uop_result760)
  ret i64 %_f_call761
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
