; generated from: ./sharedtests/dbernhard/mat_mult2.oat
target triple = "x86_64-unknown-linux"
@eye = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [3 x { i64, [0 x i64] }*] }* @_arr_id6488 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_arr_id6488 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id6485 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id6486 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id6487 to { i64, [0 x i64] }*) ] }
@_arr_id6485 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 0, i64 0 ] }
@_arr_id6486 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 1, i64 0 ] }
@_arr_id6487 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 0, i64 1 ] }
@_global_str6271 = global [3 x i8] c"| \00"
@_casted_array6272 = global i8* bitcast ([3 x i8]* @_global_str6271 to i8*)
@_global_str6290 = global [2 x i8] c" \00"
@_casted_array6291 = global i8* bitcast ([2 x i8]* @_global_str6290 to i8*)
@_global_str6301 = global [4 x i8] c" |
\00"
@_casted_array6302 = global i8* bitcast ([4 x i8]* @_global_str6301 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6390 = alloca i64
  %_argv6392 = alloca { i64, [0 x i8*] }*
  %_eye_decl6414 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_one_decl6415 = alloca i64
  %_mat_1_decl6438 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_mat_2_decl6468 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc6390
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6392
  %_raw_array6394 = call i64* @oat_alloc_array(i64 3)
  %_array6395 = bitcast i64* %_raw_array6394 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array6396 = call i64* @oat_alloc_array(i64 3)
  %_array6397 = bitcast i64* %_raw_array6396 to { i64, [0 x i64] }*
  %_arr_gep6398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6397, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep6398
  %_arr_gep6399 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6397, i32 0, i32 1, i32 1
  store i64 0, i64* %_arr_gep6399
  %_arr_gep6400 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6397, i32 0, i32 1, i32 2
  store i64 0, i64* %_arr_gep6400
  %_arr_gep6401 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6395, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array6397, { i64, [0 x i64] }** %_arr_gep6401
  %_raw_array6402 = call i64* @oat_alloc_array(i64 3)
  %_array6403 = bitcast i64* %_raw_array6402 to { i64, [0 x i64] }*
  %_arr_gep6404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6403, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep6404
  %_arr_gep6405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6403, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep6405
  %_arr_gep6406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6403, i32 0, i32 1, i32 2
  store i64 0, i64* %_arr_gep6406
  %_arr_gep6407 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6395, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array6403, { i64, [0 x i64] }** %_arr_gep6407
  %_raw_array6408 = call i64* @oat_alloc_array(i64 3)
  %_array6409 = bitcast i64* %_raw_array6408 to { i64, [0 x i64] }*
  %_arr_gep6410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6409, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep6410
  %_arr_gep6411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6409, i32 0, i32 1, i32 1
  store i64 0, i64* %_arr_gep6411
  %_arr_gep6412 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6409, i32 0, i32 1, i32 2
  store i64 1, i64* %_arr_gep6412
  %_arr_gep6413 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6395, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array6409, { i64, [0 x i64] }** %_arr_gep6413
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array6395, { i64, [0 x { i64, [0 x i64] }*] }** %_eye_decl6414
  store i64 1, i64* %_one_decl6415
  %_raw_array6416 = call i64* @oat_alloc_array(i64 3)
  %_array6417 = bitcast i64* %_raw_array6416 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array6418 = call i64* @oat_alloc_array(i64 3)
  %_array6419 = bitcast i64* %_raw_array6418 to { i64, [0 x i64] }*
  %_one6420 = load i64, i64* %_one_decl6415
  %_arr_gep6421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6419, i32 0, i32 1, i32 0
  store i64 %_one6420, i64* %_arr_gep6421
  %_arr_gep6422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6419, i32 0, i32 1, i32 1
  store i64 4, i64* %_arr_gep6422
  %_arr_gep6423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6419, i32 0, i32 1, i32 2
  store i64 3, i64* %_arr_gep6423
  %_arr_gep6424 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6417, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array6419, { i64, [0 x i64] }** %_arr_gep6424
  %_raw_array6425 = call i64* @oat_alloc_array(i64 3)
  %_array6426 = bitcast i64* %_raw_array6425 to { i64, [0 x i64] }*
  %_arr_gep6427 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6426, i32 0, i32 1, i32 0
  store i64 9, i64* %_arr_gep6427
  %_one6428 = load i64, i64* %_one_decl6415
  %_arr_gep6429 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6426, i32 0, i32 1, i32 1
  store i64 %_one6428, i64* %_arr_gep6429
  %_arr_gep6430 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6426, i32 0, i32 1, i32 2
  store i64 2, i64* %_arr_gep6430
  %_arr_gep6431 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6417, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array6426, { i64, [0 x i64] }** %_arr_gep6431
  %_raw_array6432 = call i64* @oat_alloc_array(i64 3)
  %_array6433 = bitcast i64* %_raw_array6432 to { i64, [0 x i64] }*
  %_arr_gep6434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6433, i32 0, i32 1, i32 0
  store i64 2, i64* %_arr_gep6434
  %_arr_gep6435 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6433, i32 0, i32 1, i32 1
  store i64 0, i64* %_arr_gep6435
  %_arr_gep6436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6433, i32 0, i32 1, i32 2
  store i64 1, i64* %_arr_gep6436
  %_arr_gep6437 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6417, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array6433, { i64, [0 x i64] }** %_arr_gep6437
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array6417, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_1_decl6438
  %_raw_array6439 = call i64* @oat_alloc_array(i64 3)
  %_array6440 = bitcast i64* %_raw_array6439 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array6441 = call i64* @oat_alloc_array(i64 3)
  %_array6442 = bitcast i64* %_raw_array6441 to { i64, [0 x i64] }*
  %_one6443 = load i64, i64* %_one_decl6415
  %_arr_gep6444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6442, i32 0, i32 1, i32 0
  store i64 %_one6443, i64* %_arr_gep6444
  %_one6445 = load i64, i64* %_one_decl6415
  %_one6446 = load i64, i64* %_one_decl6415
  %_bop_result6447 = sub i64 %_one6445, %_one6446
  %_arr_gep6448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6442, i32 0, i32 1, i32 1
  store i64 %_bop_result6447, i64* %_arr_gep6448
  %_arr_gep6449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6442, i32 0, i32 1, i32 2
  store i64 2, i64* %_arr_gep6449
  %_arr_gep6450 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6440, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array6442, { i64, [0 x i64] }** %_arr_gep6450
  %_raw_array6451 = call i64* @oat_alloc_array(i64 3)
  %_array6452 = bitcast i64* %_raw_array6451 to { i64, [0 x i64] }*
  %_arr_gep6453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6452, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep6453
  %_one6454 = load i64, i64* %_one_decl6415
  %_arr_gep6455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6452, i32 0, i32 1, i32 1
  store i64 %_one6454, i64* %_arr_gep6455
  %_one6456 = load i64, i64* %_one_decl6415
  %_one6457 = load i64, i64* %_one_decl6415
  %_bop_result6458 = add i64 %_one6456, %_one6457
  %_arr_gep6459 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6452, i32 0, i32 1, i32 2
  store i64 %_bop_result6458, i64* %_arr_gep6459
  %_arr_gep6460 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6440, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array6452, { i64, [0 x i64] }** %_arr_gep6460
  %_raw_array6461 = call i64* @oat_alloc_array(i64 3)
  %_array6462 = bitcast i64* %_raw_array6461 to { i64, [0 x i64] }*
  %_arr_gep6463 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6462, i32 0, i32 1, i32 0
  store i64 2, i64* %_arr_gep6463
  %_one6464 = load i64, i64* %_one_decl6415
  %_arr_gep6465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6462, i32 0, i32 1, i32 1
  store i64 %_one6464, i64* %_arr_gep6465
  %_arr_gep6466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6462, i32 0, i32 1, i32 2
  store i64 1, i64* %_arr_gep6466
  %_arr_gep6467 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6440, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array6462, { i64, [0 x i64] }** %_arr_gep6467
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array6440, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_2_decl6468
  %_mat_16469 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_1_decl6438
  %_mat_26470 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_2_decl6468
  %_mult_call6471 = call { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %_mat_16469, { i64, [0 x { i64, [0 x i64] }*] }* %_mat_26470)
  %_one6472 = load i64, i64* %_one_decl6415
  %_one6473 = load i64, i64* %_one_decl6415
  %_uop_result6474 = xor i64 %_one6473, -1
  %_bop_result6475 = icmp eq i64 %_one6472, %_uop_result6474
  call void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %_mult_call6471, i1 %_bop_result6475)
  br label %_if6480
_if6480:
  %_one6477 = load i64, i64* %_one_decl6415
  %_one6478 = load i64, i64* %_one_decl6415
  %_bop_result6479 = icmp eq i64 %_one6477, %_one6478
  br i1 %_bop_result6479, label %_then6481, label %_end_if6483
_then6481:
  ret i64 0
_end_if6483:
  %_uop_result6484 = mul i64 1, -1
  ret i64 %_uop_result6484
}

define { i64, [0 x { i64, [0 x i64] }*] }* @new_mat() {
  %_raw_array6379 = call i64* @oat_alloc_array(i64 3)
  %_array6380 = bitcast i64* %_raw_array6379 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array6381 = call i64* @oat_alloc_array(i64 3)
  %_array6382 = bitcast i64* %_raw_array6381 to { i64, [0 x i64] }*
  %_arr_gep6383 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6380, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array6382, { i64, [0 x i64] }** %_arr_gep6383
  %_raw_array6384 = call i64* @oat_alloc_array(i64 3)
  %_array6385 = bitcast i64* %_raw_array6384 to { i64, [0 x i64] }*
  %_arr_gep6386 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6380, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array6385, { i64, [0 x i64] }** %_arr_gep6386
  %_raw_array6387 = call i64* @oat_alloc_array(i64 3)
  %_array6388 = bitcast i64* %_raw_array6387 to { i64, [0 x i64] }*
  %_arr_gep6389 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6380, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array6388, { i64, [0 x i64] }** %_arr_gep6389
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_array6380
}

define { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %mata, { i64, [0 x { i64, [0 x i64] }*] }* %matb) {
  %_mata6315 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_matb6317 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_res_decl6320 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i_decl6321 = alloca i64
  %_j_decl6324 = alloca i64
  %_k_decl6327 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %mata, { i64, [0 x { i64, [0 x i64] }*] }** %_mata6315
  store { i64, [0 x { i64, [0 x i64] }*] }* %matb, { i64, [0 x { i64, [0 x i64] }*] }** %_matb6317
  %_new_mat_call6319 = call { i64, [0 x { i64, [0 x i64] }*] }* @new_mat()
  store { i64, [0 x { i64, [0 x i64] }*] }* %_new_mat_call6319, { i64, [0 x { i64, [0 x i64] }*] }** %_res_decl6320
  store i64 0, i64* %_i_decl6321
  br label %_while_cond6375
_while_body6376:
  store i64 0, i64* %_j_decl6324
  br label %_while_cond6369
_while_body6370:
  store i64 0, i64* %_k_decl6327
  br label %_while_cond6363
_while_body6364:
  %_res6330 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_res_decl6320
  %_i6331 = load i64, i64* %_i_decl6321
  %_reference6332 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_res6330, i32 0, i32 1, i64 %_i6331
  %_index6333 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference6332
  %_j6334 = load i64, i64* %_j_decl6324
  %_reference6335 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6333, i32 0, i32 1, i64 %_j6334
  %_index6336 = load i64, i64* %_reference6335
  %_mata6337 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mata6315
  %_i6338 = load i64, i64* %_i_decl6321
  %_reference6339 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_mata6337, i32 0, i32 1, i64 %_i6338
  %_index6340 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference6339
  %_k6341 = load i64, i64* %_k_decl6327
  %_reference6342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6340, i32 0, i32 1, i64 %_k6341
  %_index6343 = load i64, i64* %_reference6342
  %_matb6344 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_matb6317
  %_k6345 = load i64, i64* %_k_decl6327
  %_reference6346 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_matb6344, i32 0, i32 1, i64 %_k6345
  %_index6347 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference6346
  %_j6348 = load i64, i64* %_j_decl6324
  %_reference6349 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6347, i32 0, i32 1, i64 %_j6348
  %_index6350 = load i64, i64* %_reference6349
  %_bop_result6351 = mul i64 %_index6343, %_index6350
  %_bop_result6352 = add i64 %_index6336, %_bop_result6351
  %_res6353 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_res_decl6320
  %_i6354 = load i64, i64* %_i_decl6321
  %_reference6355 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_res6353, i32 0, i32 1, i64 %_i6354
  %_index6356 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference6355
  %_j6357 = load i64, i64* %_j_decl6324
  %_gep6358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6356, i32 0, i32 1, i64 %_j6357
  store i64 %_bop_result6352, i64* %_gep6358
  %_k6360 = load i64, i64* %_k_decl6327
  %_bop_result6361 = add i64 %_k6360, 1
  store i64 %_bop_result6361, i64* %_k_decl6327
  br label %_while_cond6363
_while_cond6363:
  %_k6328 = load i64, i64* %_k_decl6327
  %_bop_result6329 = icmp slt i64 %_k6328, 3
  br i1 %_bop_result6329, label %_while_body6364, label %_while_end6365
_while_end6365:
  %_j6366 = load i64, i64* %_j_decl6324
  %_bop_result6367 = add i64 %_j6366, 1
  store i64 %_bop_result6367, i64* %_j_decl6324
  br label %_while_cond6369
_while_cond6369:
  %_j6325 = load i64, i64* %_j_decl6324
  %_bop_result6326 = icmp slt i64 %_j6325, 3
  br i1 %_bop_result6326, label %_while_body6370, label %_while_end6371
_while_end6371:
  %_i6372 = load i64, i64* %_i_decl6321
  %_bop_result6373 = add i64 %_i6372, 1
  store i64 %_bop_result6373, i64* %_i_decl6321
  br label %_while_cond6375
_while_cond6375:
  %_i6322 = load i64, i64* %_i_decl6321
  %_bop_result6323 = icmp slt i64 %_i6322, 3
  br i1 %_bop_result6323, label %_while_body6376, label %_while_end6377
_while_end6377:
  %_res6378 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_res_decl6320
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_res6378
}

define void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %mat, i1 %pretty) {
  %_mat6263 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_pretty6265 = alloca i1
  %_i_decl6267 = alloca i64
  %_j_decl6279 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %mat, { i64, [0 x { i64, [0 x i64] }*] }** %_mat6263
  store i1 %pretty, i1* %_pretty6265
  store i64 0, i64* %_i_decl6267
  br label %_while_cond6312
_while_body6313:
  br label %_if6275
_if6275:
  %_pretty6270 = load i1, i1* %_pretty6265
  br i1 %_pretty6270, label %_then6276, label %_end_if6278
_then6276:
  %_loaded_str6273 = load i8*, i8** @_casted_array6272
  call void @print_string(i8* %_loaded_str6273)
  br label %_end_if6278
_end_if6278:
  store i64 0, i64* %_j_decl6279
  br label %_while_cond6297
_while_body6298:
  %_mat6282 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mat6263
  %_i6283 = load i64, i64* %_i_decl6267
  %_reference6284 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_mat6282, i32 0, i32 1, i64 %_i6283
  %_index6285 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference6284
  %_j6286 = load i64, i64* %_j_decl6279
  %_reference6287 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6285, i32 0, i32 1, i64 %_j6286
  %_index6288 = load i64, i64* %_reference6287
  call void @print_int(i64 %_index6288)
  %_loaded_str6292 = load i8*, i8** @_casted_array6291
  call void @print_string(i8* %_loaded_str6292)
  %_j6294 = load i64, i64* %_j_decl6279
  %_bop_result6295 = add i64 %_j6294, 1
  store i64 %_bop_result6295, i64* %_j_decl6279
  br label %_while_cond6297
_while_cond6297:
  %_j6280 = load i64, i64* %_j_decl6279
  %_bop_result6281 = icmp slt i64 %_j6280, 3
  br i1 %_bop_result6281, label %_while_body6298, label %_while_end6299
_while_end6299:
  br label %_if6305
_if6305:
  %_pretty6300 = load i1, i1* %_pretty6265
  br i1 %_pretty6300, label %_then6306, label %_end_if6308
_then6306:
  %_loaded_str6303 = load i8*, i8** @_casted_array6302
  call void @print_string(i8* %_loaded_str6303)
  br label %_end_if6308
_end_if6308:
  %_i6309 = load i64, i64* %_i_decl6267
  %_bop_result6310 = add i64 %_i6309, 1
  store i64 %_bop_result6310, i64* %_i_decl6267
  br label %_while_cond6312
_while_cond6312:
  %_i6268 = load i64, i64* %_i_decl6267
  %_bop_result6269 = icmp slt i64 %_i6268, 3
  br i1 %_bop_result6269, label %_while_body6313, label %_while_end6314
_while_end6314:
  ret void
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
