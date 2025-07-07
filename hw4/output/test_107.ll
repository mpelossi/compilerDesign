; generated from: ./sharedtests/dbernhard/simple_while.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc5473 = alloca i64
  %_args5475 = alloca { i64, [0 x i8*] }*
  %_x_decl5477 = alloca i64
  store i64 %argc, i64* %_argc5473
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args5475
  store i64 0, i64* %_x_decl5477
  br label %_while_cond5483
_while_body5484:
  %_x5480 = load i64, i64* %_x_decl5477
  %_bop_result5481 = add i64 %_x5480, 1
  store i64 %_bop_result5481, i64* %_x_decl5477
  br label %_while_cond5483
_while_cond5483:
  %_x5478 = load i64, i64* %_x_decl5477
  %_bop_result5479 = icmp slt i64 %_x5478, 10
  br i1 %_bop_result5479, label %_while_body5484, label %_while_end5485
_while_end5485:
  %_x5486 = load i64, i64* %_x_decl5477
  ret i64 %_x5486
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
