; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i_decl519 = alloca i64
  store i64 12, i64* %_i_decl519
  %_i520 = load i64, i64* %_i_decl519
  ret i64 %_i520
}

define i64 @g() {
  %_i_decl517 = alloca i64
  store i64 10, i64* %_i_decl517
  %_i518 = load i64, i64* %_i_decl517
  ret i64 %_i518
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc508 = alloca i64
  %_argv510 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc508
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv510
  %_f_call512 = call i64 @f()
  %_g_call513 = call i64 @g()
  %_bop_result514 = add i64 %_f_call512, %_g_call513
  %_i515 = load i64, i64* @i
  %_bop_result516 = add i64 %_bop_result514, %_i515
  ret i64 %_bop_result516
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
