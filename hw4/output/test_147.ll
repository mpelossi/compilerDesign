; generated from: ./sharedtests/nicdard/while.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6620 = alloca i64
  %_argv6622 = alloca { i64, [0 x i8*] }*
  %_x_decl6624 = alloca i64
  store i64 %argc, i64* %_argc6620
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6622
  store i64 0, i64* %_x_decl6624
  br label %_while_cond6627
_while_body6628:
  br label %_while_cond6627
_while_cond6627:
  %_x6625 = load i64, i64* %_x_decl6624
  %_bop_result6626 = icmp ne i64 %_x6625, 0
  br i1 %_bop_result6626, label %_while_body6628, label %_while_end6629
_while_end6629:
  %_x6630 = load i64, i64* %_x_decl6624
  ret i64 %_x6630
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
