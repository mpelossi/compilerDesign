; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_global_str3426 = global [2 x i8] c" \00"
@_casted_array3427 = global i8* bitcast ([2 x i8]* @_global_str3426 to i8*)
@_global_str3436 = global [2 x i8] c"	\00"
@_casted_array3437 = global i8* bitcast ([2 x i8]* @_global_str3436 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3582 = alloca i64
  %_argv3584 = alloca { i64, [0 x i8*] }*
  %_a_decl3600 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b_decl3624 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c_decl3641 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc3582
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3584
  %_raw_array3586 = call i64* @oat_alloc_array(i64 2)
  %_array3587 = bitcast i64* %_raw_array3586 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3588 = call i64* @oat_alloc_array(i64 3)
  %_array3589 = bitcast i64* %_raw_array3588 to { i64, [0 x i64] }*
  %_arr_gep3590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3589, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep3590
  %_arr_gep3591 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3589, i32 0, i32 1, i32 1
  store i64 3, i64* %_arr_gep3591
  %_arr_gep3592 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3589, i32 0, i32 1, i32 2
  store i64 4, i64* %_arr_gep3592
  %_arr_gep3593 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3587, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3589, { i64, [0 x i64] }** %_arr_gep3593
  %_raw_array3594 = call i64* @oat_alloc_array(i64 3)
  %_array3595 = bitcast i64* %_raw_array3594 to { i64, [0 x i64] }*
  %_arr_gep3596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3595, i32 0, i32 1, i32 0
  store i64 2, i64* %_arr_gep3596
  %_arr_gep3597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3595, i32 0, i32 1, i32 1
  store i64 0, i64* %_arr_gep3597
  %_arr_gep3598 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3595, i32 0, i32 1, i32 2
  store i64 1, i64* %_arr_gep3598
  %_arr_gep3599 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3587, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3595, { i64, [0 x i64] }** %_arr_gep3599
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3587, { i64, [0 x { i64, [0 x i64] }*] }** %_a_decl3600
  %_raw_array3601 = call i64* @oat_alloc_array(i64 3)
  %_array3602 = bitcast i64* %_raw_array3601 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3603 = call i64* @oat_alloc_array(i64 4)
  %_array3604 = bitcast i64* %_raw_array3603 to { i64, [0 x i64] }*
  %_arr_gep3605 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3604, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep3605
  %_arr_gep3606 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3604, i32 0, i32 1, i32 1
  store i64 2, i64* %_arr_gep3606
  %_arr_gep3607 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3604, i32 0, i32 1, i32 2
  store i64 3, i64* %_arr_gep3607
  %_arr_gep3608 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3604, i32 0, i32 1, i32 3
  store i64 1, i64* %_arr_gep3608
  %_arr_gep3609 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3602, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3604, { i64, [0 x i64] }** %_arr_gep3609
  %_raw_array3610 = call i64* @oat_alloc_array(i64 4)
  %_array3611 = bitcast i64* %_raw_array3610 to { i64, [0 x i64] }*
  %_arr_gep3612 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3611, i32 0, i32 1, i32 0
  store i64 2, i64* %_arr_gep3612
  %_arr_gep3613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3611, i32 0, i32 1, i32 1
  store i64 2, i64* %_arr_gep3613
  %_arr_gep3614 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3611, i32 0, i32 1, i32 2
  store i64 2, i64* %_arr_gep3614
  %_arr_gep3615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3611, i32 0, i32 1, i32 3
  store i64 2, i64* %_arr_gep3615
  %_arr_gep3616 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3602, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3611, { i64, [0 x i64] }** %_arr_gep3616
  %_raw_array3617 = call i64* @oat_alloc_array(i64 4)
  %_array3618 = bitcast i64* %_raw_array3617 to { i64, [0 x i64] }*
  %_arr_gep3619 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3618, i32 0, i32 1, i32 0
  store i64 3, i64* %_arr_gep3619
  %_arr_gep3620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3618, i32 0, i32 1, i32 1
  store i64 2, i64* %_arr_gep3620
  %_arr_gep3621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3618, i32 0, i32 1, i32 2
  store i64 1, i64* %_arr_gep3621
  %_arr_gep3622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3618, i32 0, i32 1, i32 3
  store i64 4, i64* %_arr_gep3622
  %_arr_gep3623 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3602, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3618, { i64, [0 x i64] }** %_arr_gep3623
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3602, { i64, [0 x { i64, [0 x i64] }*] }** %_b_decl3624
  %_raw_array3625 = call i64* @oat_alloc_array(i64 2)
  %_array3626 = bitcast i64* %_raw_array3625 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3627 = call i64* @oat_alloc_array(i64 4)
  %_array3628 = bitcast i64* %_raw_array3627 to { i64, [0 x i64] }*
  %_arr_gep3629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3628, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep3629
  %_arr_gep3630 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3628, i32 0, i32 1, i32 1
  store i64 0, i64* %_arr_gep3630
  %_arr_gep3631 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3628, i32 0, i32 1, i32 2
  store i64 0, i64* %_arr_gep3631
  %_arr_gep3632 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3628, i32 0, i32 1, i32 3
  store i64 0, i64* %_arr_gep3632
  %_arr_gep3633 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3626, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3628, { i64, [0 x i64] }** %_arr_gep3633
  %_raw_array3634 = call i64* @oat_alloc_array(i64 4)
  %_array3635 = bitcast i64* %_raw_array3634 to { i64, [0 x i64] }*
  %_arr_gep3636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3635, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep3636
  %_arr_gep3637 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3635, i32 0, i32 1, i32 1
  store i64 0, i64* %_arr_gep3637
  %_arr_gep3638 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3635, i32 0, i32 1, i32 2
  store i64 0, i64* %_arr_gep3638
  %_arr_gep3639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3635, i32 0, i32 1, i32 3
  store i64 0, i64* %_arr_gep3639
  %_arr_gep3640 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3626, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3635, { i64, [0 x i64] }** %_arr_gep3640
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3626, { i64, [0 x { i64, [0 x i64] }*] }** %_c_decl3641
  %_a3642 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a_decl3600
  %_b3643 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b_decl3624
  %_c3644 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c_decl3641
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a3642, { i64, [0 x { i64, [0 x i64] }*] }* %_b3643, { i64, [0 x { i64, [0 x i64] }*] }* %_c3644)
  %_c3646 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c_decl3641
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c3646, i64 2)
  %_a3648 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a_decl3600
  %_b3649 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b_decl3624
  %_c3650 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c_decl3641
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a3648, { i64, [0 x { i64, [0 x i64] }*] }* %_b3649, { i64, [0 x { i64, [0 x i64] }*] }* %_c3650)
  %_c3652 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c_decl3641
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c3652, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_a13519 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23521 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33523 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i_decl3525 = alloca i64
  %_j_decl3528 = alloca i64
  %_k_decl3531 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13519
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23521
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33523
  store i64 0, i64* %_i_decl3525
  br label %_while_cond3579
_while_body3580:
  store i64 0, i64* %_j_decl3528
  br label %_while_cond3573
_while_body3574:
  store i64 0, i64* %_k_decl3531
  br label %_while_cond3567
_while_body3568:
  %_a33534 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33523
  %_i3535 = load i64, i64* %_i_decl3525
  %_reference3536 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33534, i32 0, i32 1, i64 %_i3535
  %_index3537 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference3536
  %_j3538 = load i64, i64* %_j_decl3528
  %_reference3539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3537, i32 0, i32 1, i64 %_j3538
  %_index3540 = load i64, i64* %_reference3539
  %_a13541 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13519
  %_i3542 = load i64, i64* %_i_decl3525
  %_reference3543 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a13541, i32 0, i32 1, i64 %_i3542
  %_index3544 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference3543
  %_k3545 = load i64, i64* %_k_decl3531
  %_reference3546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3544, i32 0, i32 1, i64 %_k3545
  %_index3547 = load i64, i64* %_reference3546
  %_a23548 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23521
  %_k3549 = load i64, i64* %_k_decl3531
  %_reference3550 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a23548, i32 0, i32 1, i64 %_k3549
  %_index3551 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference3550
  %_j3552 = load i64, i64* %_j_decl3528
  %_reference3553 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3551, i32 0, i32 1, i64 %_j3552
  %_index3554 = load i64, i64* %_reference3553
  %_bop_result3555 = mul i64 %_index3547, %_index3554
  %_bop_result3556 = add i64 %_index3540, %_bop_result3555
  %_a33557 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33523
  %_i3558 = load i64, i64* %_i_decl3525
  %_reference3559 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33557, i32 0, i32 1, i64 %_i3558
  %_index3560 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference3559
  %_j3561 = load i64, i64* %_j_decl3528
  %_gep3562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3560, i32 0, i32 1, i64 %_j3561
  store i64 %_bop_result3556, i64* %_gep3562
  %_k3564 = load i64, i64* %_k_decl3531
  %_bop_result3565 = add i64 %_k3564, 1
  store i64 %_bop_result3565, i64* %_k_decl3531
  br label %_while_cond3567
_while_cond3567:
  %_k3532 = load i64, i64* %_k_decl3531
  %_bop_result3533 = icmp slt i64 %_k3532, 3
  br i1 %_bop_result3533, label %_while_body3568, label %_while_end3569
_while_end3569:
  %_j3570 = load i64, i64* %_j_decl3528
  %_bop_result3571 = add i64 %_j3570, 1
  store i64 %_bop_result3571, i64* %_j_decl3528
  br label %_while_cond3573
_while_cond3573:
  %_j3529 = load i64, i64* %_j_decl3528
  %_bop_result3530 = icmp slt i64 %_j3529, 4
  br i1 %_bop_result3530, label %_while_body3574, label %_while_end3575
_while_end3575:
  %_i3576 = load i64, i64* %_i_decl3525
  %_bop_result3577 = add i64 %_i3576, 1
  store i64 %_bop_result3577, i64* %_i_decl3525
  br label %_while_cond3579
_while_cond3579:
  %_i3526 = load i64, i64* %_i_decl3525
  %_bop_result3527 = icmp slt i64 %_i3526, 2
  br i1 %_bop_result3527, label %_while_body3580, label %_while_end3581
_while_end3581:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_a13483 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23485 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33487 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i_decl3489 = alloca i64
  %_j_decl3492 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13483
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23485
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33487
  store i64 0, i64* %_i_decl3489
  br label %_while_cond3516
_while_body3517:
  store i64 0, i64* %_j_decl3492
  br label %_while_cond3510
_while_body3511:
  %_a13495 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13483
  %_a23496 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23485
  %_i3497 = load i64, i64* %_i_decl3489
  %_j3498 = load i64, i64* %_j_decl3492
  %_dot3_call3499 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a13495, { i64, [0 x { i64, [0 x i64] }*] }* %_a23496, i64 %_i3497, i64 %_j3498)
  %_a33500 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33487
  %_i3501 = load i64, i64* %_i_decl3489
  %_reference3502 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33500, i32 0, i32 1, i64 %_i3501
  %_index3503 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference3502
  %_j3504 = load i64, i64* %_j_decl3492
  %_gep3505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3503, i32 0, i32 1, i64 %_j3504
  store i64 %_dot3_call3499, i64* %_gep3505
  %_j3507 = load i64, i64* %_j_decl3492
  %_bop_result3508 = add i64 %_j3507, 1
  store i64 %_bop_result3508, i64* %_j_decl3492
  br label %_while_cond3510
_while_cond3510:
  %_j3493 = load i64, i64* %_j_decl3492
  %_bop_result3494 = icmp slt i64 %_j3493, 4
  br i1 %_bop_result3494, label %_while_body3511, label %_while_end3512
_while_end3512:
  %_i3513 = load i64, i64* %_i_decl3489
  %_bop_result3514 = add i64 %_i3513, 1
  store i64 %_bop_result3514, i64* %_i_decl3489
  br label %_while_cond3516
_while_cond3516:
  %_i3490 = load i64, i64* %_i_decl3489
  %_bop_result3491 = icmp slt i64 %_i3490, 2
  br i1 %_bop_result3491, label %_while_body3517, label %_while_end3518
_while_end3518:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_a13446 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23448 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row3450 = alloca i64
  %_col3452 = alloca i64
  %_sum_decl3454 = alloca i64
  %_k_decl3455 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13446
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23448
  store i64 %row, i64* %_row3450
  store i64 %col, i64* %_col3452
  store i64 0, i64* %_sum_decl3454
  store i64 0, i64* %_k_decl3455
  br label %_while_cond3479
_while_body3480:
  %_sum3458 = load i64, i64* %_sum_decl3454
  %_a13459 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13446
  %_row3460 = load i64, i64* %_row3450
  %_reference3461 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a13459, i32 0, i32 1, i64 %_row3460
  %_index3462 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference3461
  %_k3463 = load i64, i64* %_k_decl3455
  %_reference3464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3462, i32 0, i32 1, i64 %_k3463
  %_index3465 = load i64, i64* %_reference3464
  %_a23466 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23448
  %_k3467 = load i64, i64* %_k_decl3455
  %_reference3468 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a23466, i32 0, i32 1, i64 %_k3467
  %_index3469 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference3468
  %_col3470 = load i64, i64* %_col3452
  %_reference3471 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3469, i32 0, i32 1, i64 %_col3470
  %_index3472 = load i64, i64* %_reference3471
  %_bop_result3473 = mul i64 %_index3465, %_index3472
  %_bop_result3474 = add i64 %_sum3458, %_bop_result3473
  store i64 %_bop_result3474, i64* %_sum_decl3454
  %_k3476 = load i64, i64* %_k_decl3455
  %_bop_result3477 = add i64 %_k3476, 1
  store i64 %_bop_result3477, i64* %_k_decl3455
  br label %_while_cond3479
_while_cond3479:
  %_k3456 = load i64, i64* %_k_decl3455
  %_bop_result3457 = icmp slt i64 %_k3456, 3
  br i1 %_bop_result3457, label %_while_body3480, label %_while_end3481
_while_end3481:
  %_sum3482 = load i64, i64* %_sum_decl3454
  ret i64 %_sum3482
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_ar3407 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n3409 = alloca i64
  %_i_decl3411 = alloca i64
  %_j_decl3415 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3407
  store i64 %n, i64* %_n3409
  store i64 0, i64* %_i_decl3411
  br label %_while_cond3443
_while_body3444:
  store i64 0, i64* %_j_decl3415
  br label %_while_cond3433
_while_body3434:
  %_ar3418 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3407
  %_i3419 = load i64, i64* %_i_decl3411
  %_reference3420 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_ar3418, i32 0, i32 1, i64 %_i3419
  %_index3421 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference3420
  %_j3422 = load i64, i64* %_j_decl3415
  %_reference3423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3421, i32 0, i32 1, i64 %_j3422
  %_index3424 = load i64, i64* %_reference3423
  call void @print_int(i64 %_index3424)
  %_loaded_str3428 = load i8*, i8** @_casted_array3427
  call void @print_string(i8* %_loaded_str3428)
  %_j3430 = load i64, i64* %_j_decl3415
  %_bop_result3431 = add i64 %_j3430, 1
  store i64 %_bop_result3431, i64* %_j_decl3415
  br label %_while_cond3433
_while_cond3433:
  %_j3416 = load i64, i64* %_j_decl3415
  %_bop_result3417 = icmp slt i64 %_j3416, 4
  br i1 %_bop_result3417, label %_while_body3434, label %_while_end3435
_while_end3435:
  %_loaded_str3438 = load i8*, i8** @_casted_array3437
  call void @print_string(i8* %_loaded_str3438)
  %_i3440 = load i64, i64* %_i_decl3411
  %_bop_result3441 = add i64 %_i3440, 1
  store i64 %_bop_result3441, i64* %_i_decl3411
  br label %_while_cond3443
_while_cond3443:
  %_i3412 = load i64, i64* %_i_decl3411
  %_n3413 = load i64, i64* %_n3409
  %_bop_result3414 = icmp slt i64 %_i3412, %_n3413
  br i1 %_bop_result3414, label %_while_body3444, label %_while_end3445
_while_end3445:
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
