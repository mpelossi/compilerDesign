; generated from: ./sharedtests/dbernhard/while_false.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc5510 = alloca i64
  %_args5512 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc5510
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args5512
  %_function_call5514 = call i64 @function(i64 0)
  %_function_call5515 = call i64 @function(i64 1)
  %_bop_result5516 = add i64 %_function_call5514, %_function_call5515
  %_function_call5517 = call i64 @function(i64 2)
  %_bop_result5518 = add i64 %_bop_result5516, %_function_call5517
  %_function_call5519 = call i64 @function(i64 3)
  %_bop_result5520 = add i64 %_bop_result5518, %_function_call5519
  ret i64 %_bop_result5520
}

define i64 @function(i64 %x) {
  %_x5505 = alloca i64
  store i64 %x, i64* %_x5505
  br label %_while_cond5507
_while_body5508:
  br label %_while_cond5507
_while_cond5507:
  br i1 0, label %_while_body5508, label %_while_end5509
_while_end5509:
  ret i64 1
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
