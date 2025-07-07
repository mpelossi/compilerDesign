; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_array4338 = alloca { i64, [0 x i64] }*
  %_i4340 = alloca i64
  %_len4342 = alloca i64
  %_l_decl4346 = alloca i64
  %_r_decl4349 = alloca i64
  %_tmp_decl4350 = alloca i64
  %_m_decl4352 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array4338
  store i64 %i, i64* %_i4340
  store i64 %len, i64* %_len4342
  %_i4344 = load i64, i64* %_i4340
  %_bop_result4345 = mul i64 %_i4344, 2
  store i64 %_bop_result4345, i64* %_l_decl4346
  %_i4347 = load i64, i64* %_i4340
  %_bop_result4348 = add i64 %_i4347, 1
  store i64 %_bop_result4348, i64* %_r_decl4349
  store i64 0, i64* %_tmp_decl4350
  %_i4351 = load i64, i64* %_i4340
  store i64 %_i4351, i64* %_m_decl4352
  br label %_if4371
_if4371:
  %_l4353 = load i64, i64* %_l_decl4346
  %_len4354 = load i64, i64* %_len4342
  %_bop_result4355 = icmp slt i64 %_l4353, %_len4354
  br i1 %_bop_result4355, label %_then4372, label %_end_if4374
_then4372:
  br label %_if4367
_if4367:
  %_array4356 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4338
  %_l4357 = load i64, i64* %_l_decl4346
  %_reference4358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4356, i32 0, i32 1, i64 %_l4357
  %_index4359 = load i64, i64* %_reference4358
  %_array4360 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4338
  %_m4361 = load i64, i64* %_m_decl4352
  %_reference4362 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4360, i32 0, i32 1, i64 %_m4361
  %_index4363 = load i64, i64* %_reference4362
  %_bop_result4364 = icmp sgt i64 %_index4359, %_index4363
  br i1 %_bop_result4364, label %_then4368, label %_end_if4370
_then4368:
  %_l4365 = load i64, i64* %_l_decl4346
  store i64 %_l4365, i64* %_m_decl4352
  br label %_end_if4370
_end_if4370:
  br label %_end_if4374
_end_if4374:
  br label %_if4393
_if4393:
  %_r4375 = load i64, i64* %_r_decl4349
  %_len4376 = load i64, i64* %_len4342
  %_bop_result4377 = icmp slt i64 %_r4375, %_len4376
  br i1 %_bop_result4377, label %_then4394, label %_end_if4396
_then4394:
  br label %_if4389
_if4389:
  %_array4378 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4338
  %_r4379 = load i64, i64* %_r_decl4349
  %_reference4380 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4378, i32 0, i32 1, i64 %_r4379
  %_index4381 = load i64, i64* %_reference4380
  %_array4382 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4338
  %_m4383 = load i64, i64* %_m_decl4352
  %_reference4384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4382, i32 0, i32 1, i64 %_m4383
  %_index4385 = load i64, i64* %_reference4384
  %_bop_result4386 = icmp sgt i64 %_index4381, %_index4385
  br i1 %_bop_result4386, label %_then4390, label %_end_if4392
_then4390:
  %_r4387 = load i64, i64* %_r_decl4349
  store i64 %_r4387, i64* %_m_decl4352
  br label %_end_if4392
_end_if4392:
  br label %_end_if4396
_end_if4396:
  br label %_if4422
_if4422:
  %_m4397 = load i64, i64* %_m_decl4352
  %_i4398 = load i64, i64* %_i4340
  %_bop_result4399 = icmp ne i64 %_m4397, %_i4398
  br i1 %_bop_result4399, label %_then4423, label %_end_if4425
_then4423:
  %_array4400 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4338
  %_i4401 = load i64, i64* %_i4340
  %_reference4402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4400, i32 0, i32 1, i64 %_i4401
  %_index4403 = load i64, i64* %_reference4402
  store i64 %_index4403, i64* %_tmp_decl4350
  %_array4405 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4338
  %_m4406 = load i64, i64* %_m_decl4352
  %_reference4407 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4405, i32 0, i32 1, i64 %_m4406
  %_index4408 = load i64, i64* %_reference4407
  %_array4409 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4338
  %_i4410 = load i64, i64* %_i4340
  %_gep4411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4409, i32 0, i32 1, i64 %_i4410
  store i64 %_index4408, i64* %_gep4411
  %_tmp4413 = load i64, i64* %_tmp_decl4350
  %_array4414 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4338
  %_m4415 = load i64, i64* %_m_decl4352
  %_gep4416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4414, i32 0, i32 1, i64 %_m4415
  store i64 %_tmp4413, i64* %_gep4416
  %_array4418 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4338
  %_m4419 = load i64, i64* %_m_decl4352
  %_len4420 = load i64, i64* %_len4342
  call void @min_heapify({ i64, [0 x i64] }* %_array4418, i64 %_m4419, i64 %_len4420)
  br label %_end_if4425
_end_if4425:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_array4320 = alloca { i64, [0 x i64] }*
  %_len4322 = alloca i64
  %_i_decl4325 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array4320
  store i64 %len, i64* %_len4322
  %_len4324 = load i64, i64* %_len4322
  store i64 %_len4324, i64* %_i_decl4325
  br label %_while_cond4335
_while_body4336:
  %_array4328 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4320
  %_i4329 = load i64, i64* %_i_decl4325
  %_len4330 = load i64, i64* %_len4322
  call void @min_heapify({ i64, [0 x i64] }* %_array4328, i64 %_i4329, i64 %_len4330)
  %_i4332 = load i64, i64* %_i_decl4325
  %_bop_result4333 = sub i64 %_i4332, 1
  store i64 %_bop_result4333, i64* %_i_decl4325
  br label %_while_cond4335
_while_cond4335:
  %_i4326 = load i64, i64* %_i_decl4325
  %_bop_result4327 = icmp sge i64 %_i4326, 1
  br i1 %_bop_result4327, label %_while_body4336, label %_while_end4337
_while_end4337:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4261 = alloca i64
  %_argv4263 = alloca { i64, [0 x i8*] }*
  %_array_decl4278 = alloca { i64, [0 x i64] }*
  %_end_result_decl4292 = alloca { i64, [0 x i64] }*
  %_same_decl4295 = alloca i64
  %_i_decl4296 = alloca i64
  store i64 %argc, i64* %_argc4261
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4263
  %_raw_array4265 = call i64* @oat_alloc_array(i64 11)
  %_array4266 = bitcast i64* %_raw_array4265 to { i64, [0 x i64] }*
  %_arr_gep4267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4266, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep4267
  %_arr_gep4268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4266, i32 0, i32 1, i32 1
  store i64 9, i64* %_arr_gep4268
  %_arr_gep4269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4266, i32 0, i32 1, i32 2
  store i64 1, i64* %_arr_gep4269
  %_arr_gep4270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4266, i32 0, i32 1, i32 3
  store i64 2, i64* %_arr_gep4270
  %_arr_gep4271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4266, i32 0, i32 1, i32 4
  store i64 8, i64* %_arr_gep4271
  %_arr_gep4272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4266, i32 0, i32 1, i32 5
  store i64 10, i64* %_arr_gep4272
  %_arr_gep4273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4266, i32 0, i32 1, i32 6
  store i64 7, i64* %_arr_gep4273
  %_arr_gep4274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4266, i32 0, i32 1, i32 7
  store i64 3, i64* %_arr_gep4274
  %_arr_gep4275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4266, i32 0, i32 1, i32 8
  store i64 6, i64* %_arr_gep4275
  %_arr_gep4276 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4266, i32 0, i32 1, i32 9
  store i64 4, i64* %_arr_gep4276
  %_arr_gep4277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4266, i32 0, i32 1, i32 10
  store i64 5, i64* %_arr_gep4277
  store { i64, [0 x i64] }* %_array4266, { i64, [0 x i64] }** %_array_decl4278
  %_raw_array4279 = call i64* @oat_alloc_array(i64 11)
  %_array4280 = bitcast i64* %_raw_array4279 to { i64, [0 x i64] }*
  %_arr_gep4281 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4280, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep4281
  %_arr_gep4282 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4280, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep4282
  %_arr_gep4283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4280, i32 0, i32 1, i32 2
  store i64 4, i64* %_arr_gep4283
  %_arr_gep4284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4280, i32 0, i32 1, i32 3
  store i64 2, i64* %_arr_gep4284
  %_arr_gep4285 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4280, i32 0, i32 1, i32 4
  store i64 8, i64* %_arr_gep4285
  %_arr_gep4286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4280, i32 0, i32 1, i32 5
  store i64 5, i64* %_arr_gep4286
  %_arr_gep4287 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4280, i32 0, i32 1, i32 6
  store i64 7, i64* %_arr_gep4287
  %_arr_gep4288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4280, i32 0, i32 1, i32 7
  store i64 3, i64* %_arr_gep4288
  %_arr_gep4289 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4280, i32 0, i32 1, i32 8
  store i64 6, i64* %_arr_gep4289
  %_arr_gep4290 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4280, i32 0, i32 1, i32 9
  store i64 9, i64* %_arr_gep4290
  %_arr_gep4291 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4280, i32 0, i32 1, i32 10
  store i64 10, i64* %_arr_gep4291
  store { i64, [0 x i64] }* %_array4280, { i64, [0 x i64] }** %_end_result_decl4292
  %_array4293 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array_decl4278
  call void @make_min_heap({ i64, [0 x i64] }* %_array4293, i64 10)
  store i64 0, i64* %_same_decl4295
  store i64 0, i64* %_i_decl4296
  br label %_while_cond4316
_while_body4317:
  br label %_if4309
_if4309:
  %_array4299 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array_decl4278
  %_i4300 = load i64, i64* %_i_decl4296
  %_reference4301 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4299, i32 0, i32 1, i64 %_i4300
  %_index4302 = load i64, i64* %_reference4301
  %_end_result4303 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_end_result_decl4292
  %_i4304 = load i64, i64* %_i_decl4296
  %_reference4305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_end_result4303, i32 0, i32 1, i64 %_i4304
  %_index4306 = load i64, i64* %_reference4305
  %_bop_result4307 = icmp ne i64 %_index4302, %_index4306
  br i1 %_bop_result4307, label %_then4310, label %_end_if4312
_then4310:
  store i64 1, i64* %_same_decl4295
  br label %_end_if4312
_end_if4312:
  %_i4313 = load i64, i64* %_i_decl4296
  %_bop_result4314 = add i64 %_i4313, 1
  store i64 %_bop_result4314, i64* %_i_decl4296
  br label %_while_cond4316
_while_cond4316:
  %_i4297 = load i64, i64* %_i_decl4296
  %_bop_result4298 = icmp slt i64 %_i4297, 11
  br i1 %_bop_result4298, label %_while_body4317, label %_while_end4318
_while_end4318:
  %_same4319 = load i64, i64* %_same_decl4295
  ret i64 %_same4319
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
