; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id419 to { i64, [0 x i64] }*)
@_arr_id419 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id418 to { i64, [0 x i64] }*)
@_arr_id418 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x420 = alloca { i64, [0 x i64] }*
  %_y422 = alloca { i64, [0 x i64] }*
  %_b424 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x420
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y422
  store i1 %b, i1* %_b424
  br label %_if429
_if429:
  %_b426 = load i1, i1* %_b424
  br i1 %_b426, label %_then430, label %_else431
_then430:
  %_x427 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x420
  ret { i64, [0 x i64] }* %_x427
_else431:
  %_y428 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y422
  ret { i64, [0 x i64] }* %_y428
_end_if432:
  ret { i64, [0 x i64] }* %_x427
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc396 = alloca i64
  %_argv398 = alloca { i64, [0 x i8*] }*
  %_z_decl416 = alloca i64
  store i64 %argc, i64* %_argc396
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv398
  %_x400 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y401 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_f_call402 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x400, { i64, [0 x i64] }* %_y401, i1 1)
  %_gep403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_f_call402, i32 0, i32 1, i32 0
  store i64 17, i64* %_gep403
  %_x405 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y406 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_f_call407 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x405, { i64, [0 x i64] }* %_y406, i1 1)
  %_reference408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_f_call407, i32 0, i32 1, i32 0
  %_index409 = load i64, i64* %_reference408
  %_y410 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x411 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_f_call412 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_y410, { i64, [0 x i64] }* %_x411, i1 0)
  %_reference413 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_f_call412, i32 0, i32 1, i32 0
  %_index414 = load i64, i64* %_reference413
  %_bop_result415 = add i64 %_index409, %_index414
  store i64 %_bop_result415, i64* %_z_decl416
  %_z417 = load i64, i64* %_z_decl416
  ret i64 %_z417
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
