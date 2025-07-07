; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc465 = alloca i64
  %_argv467 = alloca { i64, [0 x i8*] }*
  %_i_decl469 = alloca i64
  %_j_decl473 = alloca i64
  store i64 %argc, i64* %_argc465
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv467
  store i64 9, i64* %_i_decl469
  %_i470 = load i64, i64* %_i_decl469
  %_i471 = load i64, i64* %_i_decl469
  %_bop_result472 = add i64 %_i470, %_i471
  store i64 %_bop_result472, i64* %_j_decl473
  %_i474 = load i64, i64* %_i_decl469
  %_i475 = load i64, i64* %_i_decl469
  %_i476 = load i64, i64* %_i_decl469
  %_bop_result477 = mul i64 %_i475, %_i476
  %_bop_result478 = add i64 %_i474, %_bop_result477
  %_j479 = load i64, i64* %_j_decl473
  %_bop_result480 = sub i64 %_bop_result478, %_j479
  %_bop_result481 = lshr i64 %_bop_result480, 2
  %_bop_result482 = shl i64 %_bop_result481, 2
  %_bop_result483 = ashr i64 %_bop_result482, 2
  ret i64 %_bop_result483
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
