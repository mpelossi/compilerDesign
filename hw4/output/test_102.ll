; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_a4820 = alloca i64
  %_b4822 = alloca i64
  %_t_decl4827 = alloca i64
  store i64 %a, i64* %_a4820
  store i64 %b, i64* %_b4822
  br label %_while_cond4834
_while_body4835:
  %_b4826 = load i64, i64* %_b4822
  store i64 %_b4826, i64* %_t_decl4827
  %_a4828 = load i64, i64* %_a4820
  %_b4829 = load i64, i64* %_b4822
  %_mod_call4830 = call i64 @mod(i64 %_a4828, i64 %_b4829)
  store i64 %_mod_call4830, i64* %_b4822
  %_t4832 = load i64, i64* %_t_decl4827
  store i64 %_t4832, i64* %_a4820
  br label %_while_cond4834
_while_cond4834:
  %_b4824 = load i64, i64* %_b4822
  %_bop_result4825 = icmp ne i64 %_b4824, 0
  br i1 %_bop_result4825, label %_while_body4835, label %_while_end4836
_while_end4836:
  %_a4837 = load i64, i64* %_a4820
  ret i64 %_a4837
}

define i64 @mod(i64 %a, i64 %b) {
  %_a4802 = alloca i64
  %_b4804 = alloca i64
  %_t_decl4807 = alloca i64
  store i64 %a, i64* %_a4802
  store i64 %b, i64* %_b4804
  %_a4806 = load i64, i64* %_a4802
  store i64 %_a4806, i64* %_t_decl4807
  br label %_while_cond4816
_while_body4817:
  %_t4812 = load i64, i64* %_t_decl4807
  %_b4813 = load i64, i64* %_b4804
  %_bop_result4814 = sub i64 %_t4812, %_b4813
  store i64 %_bop_result4814, i64* %_t_decl4807
  br label %_while_cond4816
_while_cond4816:
  %_t4808 = load i64, i64* %_t_decl4807
  %_b4809 = load i64, i64* %_b4804
  %_bop_result4810 = sub i64 %_t4808, %_b4809
  %_bop_result4811 = icmp sge i64 %_bop_result4810, 0
  br i1 %_bop_result4811, label %_while_body4817, label %_while_end4818
_while_end4818:
  %_t4819 = load i64, i64* %_t_decl4807
  ret i64 %_t4819
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4793 = alloca i64
  %_argv4795 = alloca { i64, [0 x i8*] }*
  %_a_decl4797 = alloca i64
  %_b_decl4798 = alloca i64
  store i64 %argc, i64* %_argc4793
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4795
  store i64 64, i64* %_a_decl4797
  store i64 48, i64* %_b_decl4798
  %_a4799 = load i64, i64* %_a_decl4797
  %_b4800 = load i64, i64* %_b_decl4798
  %_gcd_call4801 = call i64 @gcd(i64 %_a4799, i64 %_b4800)
  ret i64 %_gcd_call4801
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
