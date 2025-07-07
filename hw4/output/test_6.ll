; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc88 = alloca i64
  %_argv90 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc88
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv90
  br label %_if96
_if96:
  %_uop_result92 = xor i64 5, -1
  %_bop_result93 = and i64 %_uop_result92, 6
  %_bop_result94 = or i64 2, 0
  %_bop_result95 = icmp sge i64 %_bop_result93, %_bop_result94
  br i1 %_bop_result95, label %_then97, label %_else98
_then97:
  ret i64 23
_else98:
  ret i64 46
_end_if99:
  ret i64 23
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
