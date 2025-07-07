; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc49 = alloca i64
  %_argv51 = alloca { i64, [0 x i8*] }*
  %_x_decl54 = alloca i64
  %_y_decl56 = alloca i64
  store i64 %argc, i64* %_argc49
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv51
  %_bop_result53 = lshr i64 100, 3
  store i64 %_bop_result53, i64* %_x_decl54
  %_bop_result55 = shl i64 100, 3
  store i64 %_bop_result55, i64* %_y_decl56
  br label %_if68
_if68:
  %_x57 = load i64, i64* %_x_decl54
  %_y58 = load i64, i64* %_y_decl56
  %_bop_result59 = sub i64 %_x57, %_y58
  %_bop_result60 = icmp sle i64 %_bop_result59, 0
  br i1 %_bop_result60, label %_then69, label %_else70
_then69:
  %_x61 = load i64, i64* %_x_decl54
  %_uop_result62 = mul i64 %_x61, -1
  %_y63 = load i64, i64* %_y_decl56
  %_bop_result64 = sub i64 %_uop_result62, %_y63
  ret i64 %_bop_result64
_else70:
  %_x65 = load i64, i64* %_x_decl54
  %_y66 = load i64, i64* %_y_decl56
  %_bop_result67 = sub i64 %_x65, %_y66
  ret i64 %_bop_result67
_end_if71:
  ret i64 %_bop_result64
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
