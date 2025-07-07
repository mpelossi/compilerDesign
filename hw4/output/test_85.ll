; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_i2615 = alloca i64
  %_r_decl2617 = alloca i64
  store i64 %i, i64* %_i2615
  store i64 0, i64* %_r_decl2617
  br label %_if2627
_if2627:
  %_i2618 = load i64, i64* %_i2615
  %_bop_result2619 = icmp eq i64 %_i2618, 0
  br i1 %_bop_result2619, label %_then2628, label %_else2629
_then2628:
  store i64 1, i64* %_r_decl2617
  br label %_end_if2630
_else2629:
  %_i2621 = load i64, i64* %_i2615
  %_i2622 = load i64, i64* %_i2615
  %_bop_result2623 = sub i64 %_i2622, 1
  %_f_call2624 = call i64 @f(i64 %_bop_result2623)
  %_bop_result2625 = mul i64 %_i2621, %_f_call2624
  store i64 %_bop_result2625, i64* %_r_decl2617
  br label %_end_if2630
_end_if2630:
  %_r2631 = load i64, i64* %_r_decl2617
  ret i64 %_r2631
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2610 = alloca i64
  %_argv2612 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc2610
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2612
  %_f_call2614 = call i64 @f(i64 5)
  ret i64 %_f_call2614
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
