; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_global_str3691 = global [9 x i8] c"Correct!\00"
@_casted_array3692 = global i8* bitcast ([9 x i8]* @_global_str3691 to i8*)

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_numerator3751 = alloca i64
  %_denominator3753 = alloca i64
  %_quotient_decl3766 = alloca i64
  %_remainder_decl3768 = alloca i64
  store i64 %numerator, i64* %_numerator3751
  store i64 %denominator, i64* %_denominator3753
  br label %_if3762
_if3762:
  %_denominator3755 = load i64, i64* %_denominator3753
  %_bop_result3756 = icmp slt i64 %_denominator3755, 0
  br i1 %_bop_result3756, label %_then3763, label %_end_if3765
_then3763:
  %_numerator3757 = load i64, i64* %_numerator3751
  %_denominator3758 = load i64, i64* %_denominator3753
  %_uop_result3759 = mul i64 %_denominator3758, -1
  %_euclid_division_call3760 = call i64 @euclid_division(i64 %_numerator3757, i64 %_uop_result3759)
  %_uop_result3761 = mul i64 %_euclid_division_call3760, -1
  ret i64 %_uop_result3761
_end_if3765:
  store i64 0, i64* %_quotient_decl3766
  %_numerator3767 = load i64, i64* %_numerator3751
  store i64 %_numerator3767, i64* %_remainder_decl3768
  br label %_if3798
_if3798:
  %_numerator3769 = load i64, i64* %_numerator3751
  %_bop_result3770 = icmp slt i64 %_numerator3769, 0
  br i1 %_bop_result3770, label %_then3799, label %_end_if3801
_then3799:
  %_numerator3771 = load i64, i64* %_numerator3751
  %_uop_result3772 = mul i64 %_numerator3771, -1
  store i64 %_uop_result3772, i64* %_remainder_decl3768
  br label %_while_cond3784
_while_body3785:
  %_quotient3777 = load i64, i64* %_quotient_decl3766
  %_bop_result3778 = add i64 %_quotient3777, 1
  store i64 %_bop_result3778, i64* %_quotient_decl3766
  %_remainder3780 = load i64, i64* %_remainder_decl3768
  %_denominator3781 = load i64, i64* %_denominator3753
  %_bop_result3782 = sub i64 %_remainder3780, %_denominator3781
  store i64 %_bop_result3782, i64* %_remainder_decl3768
  br label %_while_cond3784
_while_cond3784:
  %_remainder3774 = load i64, i64* %_remainder_decl3768
  %_denominator3775 = load i64, i64* %_denominator3753
  %_bop_result3776 = icmp sge i64 %_remainder3774, %_denominator3775
  br i1 %_bop_result3776, label %_while_body3785, label %_while_end3786
_while_end3786:
  br label %_if3794
_if3794:
  %_remainder3787 = load i64, i64* %_remainder_decl3768
  %_bop_result3788 = icmp eq i64 %_remainder3787, 0
  br i1 %_bop_result3788, label %_then3795, label %_else3796
_then3795:
  %_quotient3789 = load i64, i64* %_quotient_decl3766
  %_uop_result3790 = mul i64 %_quotient3789, -1
  ret i64 %_uop_result3790
_else3796:
  %_quotient3791 = load i64, i64* %_quotient_decl3766
  %_uop_result3792 = mul i64 %_quotient3791, -1
  %_bop_result3793 = sub i64 %_uop_result3792, 1
  ret i64 %_bop_result3793
_end_if3797:
  ret i64 %_uop_result3790
_end_if3801:
  br label %_while_cond3812
_while_body3813:
  %_quotient3805 = load i64, i64* %_quotient_decl3766
  %_bop_result3806 = add i64 %_quotient3805, 1
  store i64 %_bop_result3806, i64* %_quotient_decl3766
  %_remainder3808 = load i64, i64* %_remainder_decl3768
  %_denominator3809 = load i64, i64* %_denominator3753
  %_bop_result3810 = sub i64 %_remainder3808, %_denominator3809
  store i64 %_bop_result3810, i64* %_remainder_decl3768
  br label %_while_cond3812
_while_cond3812:
  %_remainder3802 = load i64, i64* %_remainder_decl3768
  %_denominator3803 = load i64, i64* %_denominator3753
  %_bop_result3804 = icmp sge i64 %_remainder3802, %_denominator3803
  br i1 %_bop_result3804, label %_while_body3813, label %_while_end3814
_while_end3814:
  %_quotient3815 = load i64, i64* %_quotient_decl3766
  ret i64 %_quotient3815
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_input3699 = alloca { i64, [0 x i64] }*
  %_key3701 = alloca i64
  %_min3703 = alloca i64
  %_max3705 = alloca i64
  %_midpt_decl3718 = alloca i64
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input3699
  store i64 %key, i64* %_key3701
  store i64 %min, i64* %_min3703
  store i64 %max, i64* %_max3705
  br label %_if3710
_if3710:
  %_max3707 = load i64, i64* %_max3705
  %_min3708 = load i64, i64* %_min3703
  %_bop_result3709 = icmp slt i64 %_max3707, %_min3708
  br i1 %_bop_result3709, label %_then3711, label %_end_if3713
_then3711:
  ret i1 0
_end_if3713:
  %_max3714 = load i64, i64* %_max3705
  %_min3715 = load i64, i64* %_min3703
  %_bop_result3716 = add i64 %_max3714, %_min3715
  %_euclid_division_call3717 = call i64 @euclid_division(i64 %_bop_result3716, i64 2)
  store i64 %_euclid_division_call3717, i64* %_midpt_decl3718
  br label %_if3731
_if3731:
  %_input3719 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3699
  %_midpt3720 = load i64, i64* %_midpt_decl3718
  %_reference3721 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input3719, i32 0, i32 1, i64 %_midpt3720
  %_index3722 = load i64, i64* %_reference3721
  %_key3723 = load i64, i64* %_key3701
  %_bop_result3724 = icmp sgt i64 %_index3722, %_key3723
  br i1 %_bop_result3724, label %_then3732, label %_end_if3734
_then3732:
  %_input3725 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3699
  %_key3726 = load i64, i64* %_key3701
  %_min3727 = load i64, i64* %_min3703
  %_midpt3728 = load i64, i64* %_midpt_decl3718
  %_bop_result3729 = sub i64 %_midpt3728, 1
  %_binary_search_call3730 = call i1 @binary_search({ i64, [0 x i64] }* %_input3725, i64 %_key3726, i64 %_min3727, i64 %_bop_result3729)
  ret i1 %_binary_search_call3730
_end_if3734:
  br label %_if3747
_if3747:
  %_input3735 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3699
  %_midpt3736 = load i64, i64* %_midpt_decl3718
  %_reference3737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input3735, i32 0, i32 1, i64 %_midpt3736
  %_index3738 = load i64, i64* %_reference3737
  %_key3739 = load i64, i64* %_key3701
  %_bop_result3740 = icmp slt i64 %_index3738, %_key3739
  br i1 %_bop_result3740, label %_then3748, label %_else3749
_then3748:
  %_input3741 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3699
  %_key3742 = load i64, i64* %_key3701
  %_midpt3743 = load i64, i64* %_midpt_decl3718
  %_bop_result3744 = add i64 %_midpt3743, 1
  %_max3745 = load i64, i64* %_max3705
  %_binary_search_call3746 = call i1 @binary_search({ i64, [0 x i64] }* %_input3741, i64 %_key3742, i64 %_bop_result3744, i64 %_max3745)
  ret i1 %_binary_search_call3746
_else3749:
  ret i1 1
_end_if3750:
  ret i1 %_binary_search_call3746
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3654 = alloca i64
  %_argv3656 = alloca { i64, [0 x i8*] }*
  %_test_array_decl3660 = alloca { i64, [0 x i64] }*
  %_i_decl3661 = alloca i64
  %_even_decl3679 = alloca i1
  %_odd_decl3682 = alloca i1
  store i64 %argc, i64* %_argc3654
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3656
  %_raw_array3658 = call i64* @oat_alloc_array(i64 100)
  %_array3659 = bitcast i64* %_raw_array3658 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3659, { i64, [0 x i64] }** %_test_array_decl3660
  store i64 0, i64* %_i_decl3661
  br label %_while_cond3674
_while_body3675:
  %_i3664 = load i64, i64* %_i_decl3661
  %_bop_result3665 = mul i64 2, %_i3664
  %_bop_result3666 = add i64 %_bop_result3665, 1
  %_test_array3667 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array_decl3660
  %_i3668 = load i64, i64* %_i_decl3661
  %_gep3669 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_test_array3667, i32 0, i32 1, i64 %_i3668
  store i64 %_bop_result3666, i64* %_gep3669
  %_i3671 = load i64, i64* %_i_decl3661
  %_bop_result3672 = add i64 %_i3671, 1
  store i64 %_bop_result3672, i64* %_i_decl3661
  br label %_while_cond3674
_while_cond3674:
  %_i3662 = load i64, i64* %_i_decl3661
  %_bop_result3663 = icmp slt i64 %_i3662, 100
  br i1 %_bop_result3663, label %_while_body3675, label %_while_end3676
_while_end3676:
  %_test_array3677 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array_decl3660
  %_binary_search_call3678 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array3677, i64 80, i64 0, i64 99)
  store i1 %_binary_search_call3678, i1* %_even_decl3679
  %_test_array3680 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array_decl3660
  %_binary_search_call3681 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array3680, i64 81, i64 0, i64 99)
  store i1 %_binary_search_call3681, i1* %_odd_decl3682
  br label %_if3695
_if3695:
  %_even3683 = load i1, i1* %_even_decl3679
  %_odd3684 = load i1, i1* %_odd_decl3682
  %_bop_result3685 = and i1 %_even3683, %_odd3684
  %_uop_result3686 = icmp eq i1 %_bop_result3685, 0
  %_even3687 = load i1, i1* %_even_decl3679
  %_odd3688 = load i1, i1* %_odd_decl3682
  %_bop_result3689 = or i1 %_even3687, %_odd3688
  %_bop_result3690 = and i1 %_uop_result3686, %_bop_result3689
  br i1 %_bop_result3690, label %_then3696, label %_end_if3698
_then3696:
  %_loaded_str3693 = load i8*, i8** @_casted_array3692
  call void @print_string(i8* %_loaded_str3693)
  br label %_end_if3698
_end_if3698:
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
