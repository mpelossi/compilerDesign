; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2485 = alloca i64
  %_argv2487 = alloca { i64, [0 x i8*] }*
  %_i_decl2489 = alloca i64
  store i64 %argc, i64* %_argc2485
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2487
  store i64 1, i64* %_i_decl2489
  br label %_while_cond2501
_while_body2502:
  %_argv2493 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2487
  %_i2494 = load i64, i64* %_i_decl2489
  %_reference2495 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv2493, i32 0, i32 1, i64 %_i2494
  %_index2496 = load i8*, i8** %_reference2495
  call void @print_string(i8* %_index2496)
  %_i2498 = load i64, i64* %_i_decl2489
  %_bop_result2499 = add i64 %_i2498, 1
  store i64 %_bop_result2499, i64* %_i_decl2489
  br label %_while_cond2501
_while_cond2501:
  %_i2490 = load i64, i64* %_i_decl2489
  %_argc2491 = load i64, i64* %_argc2485
  %_bop_result2492 = icmp slt i64 %_i2490, %_argc2491
  br i1 %_bop_result2492, label %_while_body2502, label %_while_end2503
_while_end2503:
  %_argc2504 = load i64, i64* %_argc2485
  ret i64 %_argc2504
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
