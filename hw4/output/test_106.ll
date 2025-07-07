; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_arr5381 = alloca { i64, [0 x i64] }*
  %_size5383 = alloca i64
  %_maxarr_decl5388 = alloca { i64, [0 x i64] }*
  %_maxs_decl5389 = alloca i64
  %_i_decl5396 = alloca i64
  %_j_decl5400 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr5381
  store i64 %size, i64* %_size5383
  %_size5385 = load i64, i64* %_size5383
  %_raw_array5386 = call i64* @oat_alloc_array(i64 %_size5385)
  %_array5387 = bitcast i64* %_raw_array5386 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5387, { i64, [0 x i64] }** %_maxarr_decl5388
  store i64 0, i64* %_maxs_decl5389
  %_arr5390 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5381
  %_reference5391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5390, i32 0, i32 1, i32 0
  %_index5392 = load i64, i64* %_reference5391
  %_maxarr5393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr_decl5388
  %_gep5394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5393, i32 0, i32 1, i32 0
  store i64 %_index5392, i64* %_gep5394
  store i64 0, i64* %_i_decl5396
  br label %_while_cond5469
_while_body5470:
  store i64 0, i64* %_j_decl5400
  br label %_while_cond5448
_while_body5449:
  br label %_if5441
_if5441:
  %_arr5404 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5381
  %_i5405 = load i64, i64* %_i_decl5396
  %_reference5406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5404, i32 0, i32 1, i64 %_i5405
  %_index5407 = load i64, i64* %_reference5406
  %_arr5408 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5381
  %_j5409 = load i64, i64* %_j_decl5400
  %_reference5410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5408, i32 0, i32 1, i64 %_j5409
  %_index5411 = load i64, i64* %_reference5410
  %_bop_result5412 = icmp sgt i64 %_index5407, %_index5411
  %_maxarr5413 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr_decl5388
  %_i5414 = load i64, i64* %_i_decl5396
  %_reference5415 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5413, i32 0, i32 1, i64 %_i5414
  %_index5416 = load i64, i64* %_reference5415
  %_maxarr5417 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr_decl5388
  %_j5418 = load i64, i64* %_j_decl5400
  %_reference5419 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5417, i32 0, i32 1, i64 %_j5418
  %_index5420 = load i64, i64* %_reference5419
  %_arr5421 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5381
  %_i5422 = load i64, i64* %_i_decl5396
  %_reference5423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5421, i32 0, i32 1, i64 %_i5422
  %_index5424 = load i64, i64* %_reference5423
  %_bop_result5425 = add i64 %_index5420, %_index5424
  %_bop_result5426 = icmp slt i64 %_index5416, %_bop_result5425
  %_bop_result5427 = and i1 %_bop_result5412, %_bop_result5426
  br i1 %_bop_result5427, label %_then5442, label %_end_if5444
_then5442:
  %_maxarr5428 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr_decl5388
  %_j5429 = load i64, i64* %_j_decl5400
  %_reference5430 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5428, i32 0, i32 1, i64 %_j5429
  %_index5431 = load i64, i64* %_reference5430
  %_arr5432 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5381
  %_i5433 = load i64, i64* %_i_decl5396
  %_reference5434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5432, i32 0, i32 1, i64 %_i5433
  %_index5435 = load i64, i64* %_reference5434
  %_bop_result5436 = add i64 %_index5431, %_index5435
  %_maxarr5437 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr_decl5388
  %_i5438 = load i64, i64* %_i_decl5396
  %_gep5439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5437, i32 0, i32 1, i64 %_i5438
  store i64 %_bop_result5436, i64* %_gep5439
  br label %_end_if5444
_end_if5444:
  %_j5445 = load i64, i64* %_j_decl5400
  %_bop_result5446 = add i64 %_j5445, 1
  store i64 %_bop_result5446, i64* %_j_decl5400
  br label %_while_cond5448
_while_cond5448:
  %_j5401 = load i64, i64* %_j_decl5400
  %_i5402 = load i64, i64* %_i_decl5396
  %_bop_result5403 = icmp slt i64 %_j5401, %_i5402
  br i1 %_bop_result5403, label %_while_body5449, label %_while_end5450
_while_end5450:
  br label %_if5462
_if5462:
  %_maxs5451 = load i64, i64* %_maxs_decl5389
  %_maxarr5452 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr_decl5388
  %_i5453 = load i64, i64* %_i_decl5396
  %_reference5454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5452, i32 0, i32 1, i64 %_i5453
  %_index5455 = load i64, i64* %_reference5454
  %_bop_result5456 = icmp slt i64 %_maxs5451, %_index5455
  br i1 %_bop_result5456, label %_then5463, label %_end_if5465
_then5463:
  %_maxarr5457 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr_decl5388
  %_i5458 = load i64, i64* %_i_decl5396
  %_reference5459 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5457, i32 0, i32 1, i64 %_i5458
  %_index5460 = load i64, i64* %_reference5459
  store i64 %_index5460, i64* %_maxs_decl5389
  br label %_end_if5465
_end_if5465:
  %_i5466 = load i64, i64* %_i_decl5396
  %_bop_result5467 = add i64 %_i5466, 1
  store i64 %_bop_result5467, i64* %_i_decl5396
  br label %_while_cond5469
_while_cond5469:
  %_i5397 = load i64, i64* %_i_decl5396
  %_size5398 = load i64, i64* %_size5383
  %_bop_result5399 = icmp slt i64 %_i5397, %_size5398
  br i1 %_bop_result5399, label %_while_body5470, label %_while_end5471
_while_end5471:
  %_maxs5472 = load i64, i64* %_maxs_decl5389
  ret i64 %_maxs5472
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5363 = alloca i64
  %_argv5365 = alloca { i64, [0 x i8*] }*
  %_array_decl5376 = alloca { i64, [0 x i64] }*
  %_max_ans_decl5379 = alloca i64
  store i64 %argc, i64* %_argc5363
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5365
  %_raw_array5367 = call i64* @oat_alloc_array(i64 7)
  %_array5368 = bitcast i64* %_raw_array5367 to { i64, [0 x i64] }*
  %_arr_gep5369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep5369
  %_arr_gep5370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 1
  store i64 101, i64* %_arr_gep5370
  %_arr_gep5371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 2
  store i64 2, i64* %_arr_gep5371
  %_arr_gep5372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 3
  store i64 3, i64* %_arr_gep5372
  %_arr_gep5373 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 4
  store i64 101, i64* %_arr_gep5373
  %_arr_gep5374 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 5
  store i64 4, i64* %_arr_gep5374
  %_arr_gep5375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 6
  store i64 5, i64* %_arr_gep5375
  store { i64, [0 x i64] }* %_array5368, { i64, [0 x i64] }** %_array_decl5376
  %_array5377 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array_decl5376
  %_maxsum_call5378 = call i64 @maxsum({ i64, [0 x i64] }* %_array5377, i64 7)
  store i64 %_maxsum_call5378, i64* %_max_ans_decl5379
  %_max_ans5380 = load i64, i64* %_max_ans_decl5379
  ret i64 %_max_ans5380
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
