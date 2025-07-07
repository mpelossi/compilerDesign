; generated from: oatprograms/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc31 = alloca i64
  %_argv33 = alloca { i64, [0 x i8*] }*
  %_x_decl35 = alloca i64
  %_i_decl36 = alloca i64
  store i64 %argc, i64* %_argc31
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv33
  store i64 0, i64* %_x_decl35
  store i64 0, i64* %_i_decl36
  br label %_while_cond45
_while_body46:
  %_x39 = load i64, i64* %_x_decl35
  %_bop_result40 = add i64 %_x39, 2
  store i64 %_bop_result40, i64* %_x_decl35
  %_i42 = load i64, i64* %_i_decl36
  %_bop_result43 = add i64 %_i42, 1
  store i64 %_bop_result43, i64* %_i_decl36
  br label %_while_cond45
_while_cond45:
  %_i37 = load i64, i64* %_i_decl36
  %_bop_result38 = icmp slt i64 %_i37, 3
  br i1 %_bop_result38, label %_while_body46, label %_while_end47
_while_end47:
  %_x48 = load i64, i64* %_x_decl35
  ret i64 %_x48
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
