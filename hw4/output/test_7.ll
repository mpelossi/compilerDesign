; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc100 = alloca i64
  %_argv102 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc100
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv102
  br label %_if112
_if112:
  %_bop_result104 = icmp ne i64 6, 5
  br i1 %_bop_result104, label %_then113, label %_else114
_then113:
  %_bop_result105 = shl i64 5, 17
  %_bop_result106 = lshr i64 %_bop_result105, 2
  %_bop_result107 = ashr i64 %_bop_result106, 10
  %_uop_result108 = xor i64 %_bop_result107, -1
  %_bop_result109 = mul i64 %_uop_result108, 2
  %_bop_result110 = sub i64 %_bop_result109, 100
  %_bop_result111 = add i64 %_bop_result110, 6
  ret i64 %_bop_result111
_else114:
  ret i64 2
_end_if115:
  ret i64 %_bop_result111
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
