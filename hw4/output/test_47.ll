; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_x913 = alloca i64
  %_acc_decl915 = alloca i64
  store i64 %x, i64* %_x913
  store i64 1, i64* %_acc_decl915
  br label %_while_cond925
_while_body926:
  %_acc918 = load i64, i64* %_acc_decl915
  %_x919 = load i64, i64* %_x913
  %_bop_result920 = mul i64 %_acc918, %_x919
  store i64 %_bop_result920, i64* %_acc_decl915
  %_x922 = load i64, i64* %_x913
  %_bop_result923 = sub i64 %_x922, 1
  store i64 %_bop_result923, i64* %_x913
  br label %_while_cond925
_while_cond925:
  %_x916 = load i64, i64* %_x913
  %_bop_result917 = icmp sgt i64 %_x916, 0
  br i1 %_bop_result917, label %_while_body926, label %_while_end927
_while_end927:
  %_acc928 = load i64, i64* %_acc_decl915
  ret i64 %_acc928
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc906 = alloca i64
  %_argv908 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc906
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv908
  %_fact_call910 = call i64 @fact(i64 5)
  %_string_of_int_call911 = call i8* @string_of_int(i64 %_fact_call910)
  call void @print_string(i8* %_string_of_int_call911)
  ret i64 0
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
