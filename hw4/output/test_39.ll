; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i740 = alloca i64
  store i64 %i, i64* %_i740
  %_i742 = load i64, i64* %_i740
  %_f2_call743 = call i64 @f2(i64 %_i742)
  ret i64 %_f2_call743
}

define i64 @f2(i64 %i) {
  %_i736 = alloca i64
  store i64 %i, i64* %_i736
  %_i738 = load i64, i64* %_i736
  %_f3_call739 = call i64 @f3(i64 %_i738)
  ret i64 %_f3_call739
}

define i64 @f3(i64 %i) {
  %_i732 = alloca i64
  store i64 %i, i64* %_i732
  %_i734 = load i64, i64* %_i732
  %_f4_call735 = call i64 @f4(i64 %_i734)
  ret i64 %_f4_call735
}

define i64 @f4(i64 %i) {
  %_i728 = alloca i64
  store i64 %i, i64* %_i728
  %_i730 = load i64, i64* %_i728
  %_f5_call731 = call i64 @f5(i64 %_i730)
  ret i64 %_f5_call731
}

define i64 @f5(i64 %i) {
  %_i724 = alloca i64
  store i64 %i, i64* %_i724
  %_i726 = load i64, i64* %_i724
  %_f6_call727 = call i64 @f6(i64 %_i726)
  ret i64 %_f6_call727
}

define i64 @f6(i64 %i) {
  %_i720 = alloca i64
  store i64 %i, i64* %_i720
  %_i722 = load i64, i64* %_i720
  %_f7_call723 = call i64 @f7(i64 %_i722)
  ret i64 %_f7_call723
}

define i64 @f7(i64 %i) {
  %_i716 = alloca i64
  store i64 %i, i64* %_i716
  %_i718 = load i64, i64* %_i716
  %_f8_call719 = call i64 @f8(i64 %_i718)
  ret i64 %_f8_call719
}

define i64 @f8(i64 %i) {
  %_i712 = alloca i64
  store i64 %i, i64* %_i712
  %_i714 = load i64, i64* %_i712
  %_f9_call715 = call i64 @f9(i64 %_i714)
  ret i64 %_f9_call715
}

define i64 @f9(i64 %i) {
  %_i709 = alloca i64
  store i64 %i, i64* %_i709
  %_i711 = load i64, i64* %_i709
  ret i64 %_i711
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc703 = alloca i64
  %_argv705 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc703
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv705
  %_argc707 = load i64, i64* %_argc703
  %_f1_call708 = call i64 @f1(i64 %_argc707)
  ret i64 %_f1_call708
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
