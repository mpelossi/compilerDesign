; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x383 = alloca { i64, [0 x i64] }*
  %_y385 = alloca { i64, [0 x i64] }*
  %_b387 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x383
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y385
  store i1 %b, i1* %_b387
  br label %_if392
_if392:
  %_b389 = load i1, i1* %_b387
  br i1 %_b389, label %_then393, label %_else394
_then393:
  %_x390 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x383
  ret { i64, [0 x i64] }* %_x390
_else394:
  %_y391 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y385
  ret { i64, [0 x i64] }* %_y391
_end_if395:
  ret { i64, [0 x i64] }* %_x390
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc365 = alloca i64
  %_argv367 = alloca { i64, [0 x i8*] }*
  %_x_decl371 = alloca { i64, [0 x i64] }*
  %_y_decl374 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc365
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv367
  %_raw_array369 = call i64* @oat_alloc_array(i64 3)
  %_array370 = bitcast i64* %_raw_array369 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array370, { i64, [0 x i64] }** %_x_decl371
  %_raw_array372 = call i64* @oat_alloc_array(i64 3)
  %_array373 = bitcast i64* %_raw_array372 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array373, { i64, [0 x i64] }** %_y_decl374
  %_x375 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x_decl371
  %_y376 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y_decl374
  %_f_call377 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x375, { i64, [0 x i64] }* %_y376, i1 1)
  %_gep378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_f_call377, i32 0, i32 1, i32 0
  store i64 17, i64* %_gep378
  %_x380 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x_decl371
  %_reference381 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x380, i32 0, i32 1, i32 0
  %_index382 = load i64, i64* %_reference381
  ret i64 %_index382
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
