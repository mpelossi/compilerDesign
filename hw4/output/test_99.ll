; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_arr_id4645 to { i64, [0 x i1] }*)
@_arr_id4645 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_global_str4622 = global [2 x i8] c"T\00"
@_casted_array4623 = global i8* bitcast ([2 x i8]* @_global_str4622 to i8*)
@_global_str4625 = global [2 x i8] c"F\00"
@_casted_array4626 = global i8* bitcast ([2 x i8]* @_global_str4625 to i8*)
@_global_str4592 = global [2 x i8] c" \00"
@_casted_array4593 = global i8* bitcast ([2 x i8]* @_global_str4592 to i8*)

define i1 @xor(i1 %x, i1 %y) {
  %_x4632 = alloca i1
  %_y4634 = alloca i1
  store i1 %x, i1* %_x4632
  store i1 %y, i1* %_y4634
  %_x4636 = load i1, i1* %_x4632
  %_y4637 = load i1, i1* %_y4634
  %_uop_result4638 = icmp eq i1 %_y4637, 0
  %_bop_result4639 = and i1 %_x4636, %_uop_result4638
  %_x4640 = load i1, i1* %_x4632
  %_uop_result4641 = icmp eq i1 %_x4640, 0
  %_y4642 = load i1, i1* %_y4634
  %_bop_result4643 = and i1 %_uop_result4641, %_y4642
  %_bop_result4644 = or i1 %_bop_result4639, %_bop_result4643
  ret i1 %_bop_result4644
}

define i8* @string_of_bool(i1 %b) {
  %_b4619 = alloca i1
  store i1 %b, i1* %_b4619
  br label %_if4628
_if4628:
  %_b4621 = load i1, i1* %_b4619
  br i1 %_b4621, label %_then4629, label %_else4630
_then4629:
  %_loaded_str4624 = load i8*, i8** @_casted_array4623
  ret i8* %_loaded_str4624
_else4630:
  %_loaded_str4627 = load i8*, i8** @_casted_array4626
  ret i8* %_loaded_str4627
_end_if4631:
  ret i8* %_loaded_str4624
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_lfsr_register4599 = alloca { i64, [0 x i1] }*
  %_len4601 = alloca i64
  %_i_decl4603 = alloca i64
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register4599
  store i64 %len, i64* %_len4601
  store i64 0, i64* %_i_decl4603
  br label %_while_cond4616
_while_body4617:
  %_lfsr_register4607 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4599
  %_i4608 = load i64, i64* %_i_decl4603
  %_reference4609 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4607, i32 0, i32 1, i64 %_i4608
  %_index4610 = load i1, i1* %_reference4609
  %_string_of_bool_call4611 = call i8* @string_of_bool(i1 %_index4610)
  call void @print_string(i8* %_string_of_bool_call4611)
  %_i4613 = load i64, i64* %_i_decl4603
  %_bop_result4614 = add i64 %_i4613, 1
  store i64 %_bop_result4614, i64* %_i_decl4603
  br label %_while_cond4616
_while_cond4616:
  %_i4604 = load i64, i64* %_i_decl4603
  %_len4605 = load i64, i64* %_len4601
  %_bop_result4606 = icmp slt i64 %_i4604, %_len4605
  br i1 %_bop_result4606, label %_while_body4617, label %_while_end4618
_while_end4618:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4517 = alloca i64
  %_argv4519 = alloca { i64, [0 x i8*] }*
  %_lfsr_register_decl4524 = alloca { i64, [0 x i1] }*
  %_i_decl4525 = alloca i64
  %_i_decl4543 = alloca i64
  %_new_first_decl4558 = alloca i1
  %_j_decl4561 = alloca i64
  store i64 %argc, i64* %_argc4517
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4519
  %_lfsr_length4521 = load i64, i64* @lfsr_length
  %_raw_array4522 = call i64* @oat_alloc_array(i64 %_lfsr_length4521)
  %_array4523 = bitcast i64* %_raw_array4522 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4523, { i64, [0 x i1] }** %_lfsr_register_decl4524
  store i64 0, i64* %_i_decl4525
  br label %_while_cond4540
_while_body4541:
  %_lfsr_init_values4529 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_i4530 = load i64, i64* %_i_decl4525
  %_reference4531 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_init_values4529, i32 0, i32 1, i64 %_i4530
  %_index4532 = load i1, i1* %_reference4531
  %_lfsr_register4533 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register_decl4524
  %_i4534 = load i64, i64* %_i_decl4525
  %_gep4535 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4533, i32 0, i32 1, i64 %_i4534
  store i1 %_index4532, i1* %_gep4535
  %_i4537 = load i64, i64* %_i_decl4525
  %_bop_result4538 = add i64 %_i4537, 1
  store i64 %_bop_result4538, i64* %_i_decl4525
  br label %_while_cond4540
_while_cond4540:
  %_i4526 = load i64, i64* %_i_decl4525
  %_lfsr_length4527 = load i64, i64* @lfsr_length
  %_bop_result4528 = icmp slt i64 %_i4526, %_lfsr_length4527
  br i1 %_bop_result4528, label %_while_body4541, label %_while_end4542
_while_end4542:
  store i64 0, i64* %_i_decl4543
  br label %_while_cond4586
_while_body4587:
  %_lfsr_register4547 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register_decl4524
  %_lfsr_length4548 = load i64, i64* @lfsr_length
  %_bop_result4549 = sub i64 %_lfsr_length4548, 1
  %_reference4550 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4547, i32 0, i32 1, i64 %_bop_result4549
  %_index4551 = load i1, i1* %_reference4550
  %_lfsr_register4552 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register_decl4524
  %_lfsr_length4553 = load i64, i64* @lfsr_length
  %_bop_result4554 = sub i64 %_lfsr_length4553, 2
  %_reference4555 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4552, i32 0, i32 1, i64 %_bop_result4554
  %_index4556 = load i1, i1* %_reference4555
  %_xor_call4557 = call i1 @xor(i1 %_index4551, i1 %_index4556)
  store i1 %_xor_call4557, i1* %_new_first_decl4558
  %_lfsr_length4559 = load i64, i64* @lfsr_length
  %_bop_result4560 = sub i64 %_lfsr_length4559, 1
  store i64 %_bop_result4560, i64* %_j_decl4561
  br label %_while_cond4576
_while_body4577:
  %_lfsr_register4564 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register_decl4524
  %_j4565 = load i64, i64* %_j_decl4561
  %_bop_result4566 = sub i64 %_j4565, 1
  %_reference4567 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4564, i32 0, i32 1, i64 %_bop_result4566
  %_index4568 = load i1, i1* %_reference4567
  %_lfsr_register4569 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register_decl4524
  %_j4570 = load i64, i64* %_j_decl4561
  %_gep4571 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4569, i32 0, i32 1, i64 %_j4570
  store i1 %_index4568, i1* %_gep4571
  %_j4573 = load i64, i64* %_j_decl4561
  %_bop_result4574 = sub i64 %_j4573, 1
  store i64 %_bop_result4574, i64* %_j_decl4561
  br label %_while_cond4576
_while_cond4576:
  %_j4562 = load i64, i64* %_j_decl4561
  %_bop_result4563 = icmp sgt i64 %_j4562, 0
  br i1 %_bop_result4563, label %_while_body4577, label %_while_end4578
_while_end4578:
  %_new_first4579 = load i1, i1* %_new_first_decl4558
  %_lfsr_register4580 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register_decl4524
  %_gep4581 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4580, i32 0, i32 1, i32 0
  store i1 %_new_first4579, i1* %_gep4581
  %_i4583 = load i64, i64* %_i_decl4543
  %_bop_result4584 = add i64 %_i4583, 1
  store i64 %_bop_result4584, i64* %_i_decl4543
  br label %_while_cond4586
_while_cond4586:
  %_i4544 = load i64, i64* %_i_decl4543
  %_lfsr_iterations4545 = load i64, i64* @lfsr_iterations
  %_bop_result4546 = icmp slt i64 %_i4544, %_lfsr_iterations4545
  br i1 %_bop_result4546, label %_while_body4587, label %_while_end4588
_while_end4588:
  %_lfsr_init_values4589 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_lfsr_length4590 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_lfsr_init_values4589, i64 %_lfsr_length4590)
  %_loaded_str4594 = load i8*, i8** @_casted_array4593
  call void @print_string(i8* %_loaded_str4594)
  %_lfsr_register4596 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register_decl4524
  %_lfsr_length4597 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_lfsr_register4596, i64 %_lfsr_length4597)
  ret i64 0
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
