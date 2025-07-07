; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_f2_call702 = call i64 @f2()
  ret i64 %_f2_call702
}

define i64 @f2() {
  %_f3_call701 = call i64 @f3()
  ret i64 %_f3_call701
}

define i64 @f3() {
  %_f4_call700 = call i64 @f4()
  ret i64 %_f4_call700
}

define i64 @f4() {
  %_f5_call699 = call i64 @f5()
  ret i64 %_f5_call699
}

define i64 @f5() {
  %_f6_call698 = call i64 @f6()
  ret i64 %_f6_call698
}

define i64 @f6() {
  %_f7_call697 = call i64 @f7()
  ret i64 %_f7_call697
}

define i64 @f7() {
  %_f8_call696 = call i64 @f8()
  ret i64 %_f8_call696
}

define i64 @f8() {
  %_f9_call695 = call i64 @f9()
  ret i64 %_f9_call695
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc690 = alloca i64
  %_argv692 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc690
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv692
  %_f1_call694 = call i64 @f1()
  ret i64 %_f1_call694
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
