; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc72 = alloca i64
  %_argv74 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc72
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv74
  br label %_if84
_if84:
  %_uop_result76 = icmp eq i1 1, 0
  %_uop_result77 = mul i64 4, -1
  %_bop_result78 = add i64 %_uop_result77, 5
  %_bop_result79 = icmp sgt i64 %_bop_result78, 0
  %_bop_result80 = mul i64 6, 4
  %_bop_result81 = icmp slt i64 %_bop_result80, 25
  %_bop_result82 = and i1 %_bop_result79, %_bop_result81
  %_bop_result83 = or i1 %_uop_result76, %_bop_result82
  br i1 %_bop_result83, label %_then85, label %_else86
_then85:
  ret i64 9
_else86:
  ret i64 4
_end_if87:
  ret i64 9
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
