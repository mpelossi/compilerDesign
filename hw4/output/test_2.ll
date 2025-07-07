; generated from: oatprograms/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc10 = alloca i64
  %_argv12 = alloca { i64, [0 x i8*] }*
  %_x_decl14 = alloca i64
  %_i_decl15 = alloca i64
  store i64 %argc, i64* %_argc10
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv12
  store i64 0, i64* %_x_decl14
  store i64 0, i64* %_i_decl15
  br label %_while_cond27
_while_body28:
  %_x18 = load i64, i64* %_x_decl14
  %_i19 = load i64, i64* %_i_decl15
  %_bop_result20 = add i64 %_x18, %_i19
  %_i21 = load i64, i64* %_i_decl15
  %_bop_result22 = mul i64 %_bop_result20, %_i21
  store i64 %_bop_result22, i64* %_x_decl14
  %_i24 = load i64, i64* %_i_decl15
  %_bop_result25 = add i64 %_i24, 1
  store i64 %_bop_result25, i64* %_i_decl15
  br label %_while_cond27
_while_cond27:
  %_i16 = load i64, i64* %_i_decl15
  %_bop_result17 = icmp slt i64 %_i16, 10
  br i1 %_bop_result17, label %_while_body28, label %_while_end29
_while_end29:
  %_x30 = load i64, i64* %_x_decl14
  ret i64 %_x30
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
