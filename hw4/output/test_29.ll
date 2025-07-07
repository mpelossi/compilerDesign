; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc484 = alloca i64
  %_argv486 = alloca { i64, [0 x i8*] }*
  %_i_decl488 = alloca i64
  store i64 %argc, i64* %_argc484
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv486
  store i64 0, i64* %_i_decl488
  br label %_if491
_if491:
  %_b489 = load i1, i1* @b
  br i1 %_b489, label %_then492, label %_end_if494
_then492:
  store i64 1, i64* %_i_decl488
  br label %_end_if494
_end_if494:
  %_i495 = load i64, i64* %_i_decl488
  ret i64 %_i495
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
