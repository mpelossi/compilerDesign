; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id351 to { i64, [0 x i64] }*)
@_arr_id351 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id350 to { i64, [0 x i64] }*)
@_arr_id350 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x352 = alloca { i64, [0 x i64] }*
  %_y354 = alloca { i64, [0 x i64] }*
  %_b356 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x352
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y354
  store i1 %b, i1* %_b356
  br label %_if361
_if361:
  %_b358 = load i1, i1* %_b356
  br i1 %_b358, label %_then362, label %_else363
_then362:
  %_x359 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x352
  ret { i64, [0 x i64] }* %_x359
_else363:
  %_y360 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y354
  ret { i64, [0 x i64] }* %_y360
_end_if364:
  ret { i64, [0 x i64] }* %_x359
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc338 = alloca i64
  %_argv340 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc338
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv340
  %_x342 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y343 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_f_call344 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x342, { i64, [0 x i64] }* %_y343, i1 1)
  %_gep345 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_f_call344, i32 0, i32 1, i32 0
  store i64 17, i64* %_gep345
  %_x347 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_reference348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x347, i32 0, i32 1, i32 0
  %_index349 = load i64, i64* %_reference348
  ret i64 %_index349
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
