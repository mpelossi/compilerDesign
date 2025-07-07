; generated from: ./sharedtests/dbernhard/while_false2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc5529 = alloca i64
  %_args5531 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc5529
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args5531
  %_function_call5533 = call { i64, [0 x i64] }* @function(i64 0)
  %_reference5534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_function_call5533, i32 0, i32 1, i32 0
  %_index5535 = load i64, i64* %_reference5534
  %_function_call5536 = call { i64, [0 x i64] }* @function(i64 1)
  %_reference5537 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_function_call5536, i32 0, i32 1, i32 0
  %_index5538 = load i64, i64* %_reference5537
  %_bop_result5539 = add i64 %_index5535, %_index5538
  %_function_call5540 = call { i64, [0 x i64] }* @function(i64 2)
  %_reference5541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_function_call5540, i32 0, i32 1, i32 0
  %_index5542 = load i64, i64* %_reference5541
  %_bop_result5543 = add i64 %_bop_result5539, %_index5542
  %_function_call5544 = call { i64, [0 x i64] }* @function(i64 3)
  %_reference5545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_function_call5544, i32 0, i32 1, i32 0
  %_index5546 = load i64, i64* %_reference5545
  %_bop_result5547 = add i64 %_bop_result5543, %_index5546
  ret i64 %_bop_result5547
}

define { i64, [0 x i64] }* @function(i64 %x) {
  %_x5521 = alloca i64
  store i64 %x, i64* %_x5521
  br label %_while_cond5523
_while_body5524:
  br label %_while_cond5523
_while_cond5523:
  br i1 0, label %_while_body5524, label %_while_end5525
_while_end5525:
  %_raw_array5526 = call i64* @oat_alloc_array(i64 1)
  %_array5527 = bitcast i64* %_raw_array5526 to { i64, [0 x i64] }*
  %_arr_gep5528 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5527, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep5528
  ret { i64, [0 x i64] }* %_array5527
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
