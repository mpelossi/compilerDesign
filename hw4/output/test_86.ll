; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_a2764 = alloca { i64, [0 x i64] }*
  %_l2766 = alloca i64
  %_r2768 = alloca i64
  %_j_decl2770 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2764
  store i64 %l, i64* %_l2766
  store i64 %r, i64* %_r2768
  store i64 0, i64* %_j_decl2770
  br label %_if2789
_if2789:
  %_l2771 = load i64, i64* %_l2766
  %_r2772 = load i64, i64* %_r2768
  %_bop_result2773 = icmp slt i64 %_l2771, %_r2772
  br i1 %_bop_result2773, label %_then2790, label %_end_if2792
_then2790:
  %_a2774 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2764
  %_l2775 = load i64, i64* %_l2766
  %_r2776 = load i64, i64* %_r2768
  %_partition_call2777 = call i64 @partition({ i64, [0 x i64] }* %_a2774, i64 %_l2775, i64 %_r2776)
  store i64 %_partition_call2777, i64* %_j_decl2770
  %_a2779 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2764
  %_l2780 = load i64, i64* %_l2766
  %_j2781 = load i64, i64* %_j_decl2770
  %_bop_result2782 = sub i64 %_j2781, 1
  call void @quick_sort({ i64, [0 x i64] }* %_a2779, i64 %_l2780, i64 %_bop_result2782)
  %_a2784 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2764
  %_j2785 = load i64, i64* %_j_decl2770
  %_bop_result2786 = add i64 %_j2785, 1
  %_r2787 = load i64, i64* %_r2768
  call void @quick_sort({ i64, [0 x i64] }* %_a2784, i64 %_bop_result2786, i64 %_r2787)
  br label %_end_if2792
_end_if2792:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_a2656 = alloca { i64, [0 x i64] }*
  %_l2658 = alloca i64
  %_r2660 = alloca i64
  %_pivot_decl2666 = alloca i64
  %_i_decl2668 = alloca i64
  %_j_decl2671 = alloca i64
  %_t_decl2672 = alloca i64
  %_done_decl2673 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2656
  store i64 %l, i64* %_l2658
  store i64 %r, i64* %_r2660
  %_a2662 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2656
  %_l2663 = load i64, i64* %_l2658
  %_reference2664 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2662, i32 0, i32 1, i64 %_l2663
  %_index2665 = load i64, i64* %_reference2664
  store i64 %_index2665, i64* %_pivot_decl2666
  %_l2667 = load i64, i64* %_l2658
  store i64 %_l2667, i64* %_i_decl2668
  %_r2669 = load i64, i64* %_r2660
  %_bop_result2670 = add i64 %_r2669, 1
  store i64 %_bop_result2670, i64* %_j_decl2671
  store i64 0, i64* %_t_decl2672
  store i64 0, i64* %_done_decl2673
  br label %_while_cond2742
_while_body2743:
  %_i2676 = load i64, i64* %_i_decl2668
  %_bop_result2677 = add i64 %_i2676, 1
  store i64 %_bop_result2677, i64* %_i_decl2668
  br label %_while_cond2692
_while_body2693:
  %_i2689 = load i64, i64* %_i_decl2668
  %_bop_result2690 = add i64 %_i2689, 1
  store i64 %_bop_result2690, i64* %_i_decl2668
  br label %_while_cond2692
_while_cond2692:
  %_a2679 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2656
  %_i2680 = load i64, i64* %_i_decl2668
  %_reference2681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2679, i32 0, i32 1, i64 %_i2680
  %_index2682 = load i64, i64* %_reference2681
  %_pivot2683 = load i64, i64* %_pivot_decl2666
  %_bop_result2684 = icmp sle i64 %_index2682, %_pivot2683
  %_i2685 = load i64, i64* %_i_decl2668
  %_r2686 = load i64, i64* %_r2660
  %_bop_result2687 = icmp sle i64 %_i2685, %_r2686
  %_bop_result2688 = and i1 %_bop_result2684, %_bop_result2687
  br i1 %_bop_result2688, label %_while_body2693, label %_while_end2694
_while_end2694:
  %_j2695 = load i64, i64* %_j_decl2671
  %_bop_result2696 = sub i64 %_j2695, 1
  store i64 %_bop_result2696, i64* %_j_decl2671
  br label %_while_cond2707
_while_body2708:
  %_j2704 = load i64, i64* %_j_decl2671
  %_bop_result2705 = sub i64 %_j2704, 1
  store i64 %_bop_result2705, i64* %_j_decl2671
  br label %_while_cond2707
_while_cond2707:
  %_a2698 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2656
  %_j2699 = load i64, i64* %_j_decl2671
  %_reference2700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2698, i32 0, i32 1, i64 %_j2699
  %_index2701 = load i64, i64* %_reference2700
  %_pivot2702 = load i64, i64* %_pivot_decl2666
  %_bop_result2703 = icmp sgt i64 %_index2701, %_pivot2702
  br i1 %_bop_result2703, label %_while_body2708, label %_while_end2709
_while_end2709:
  br label %_if2714
_if2714:
  %_i2710 = load i64, i64* %_i_decl2668
  %_j2711 = load i64, i64* %_j_decl2671
  %_bop_result2712 = icmp sge i64 %_i2710, %_j2711
  br i1 %_bop_result2712, label %_then2715, label %_end_if2717
_then2715:
  store i64 1, i64* %_done_decl2673
  br label %_end_if2717
_end_if2717:
  br label %_if2738
_if2738:
  %_done2718 = load i64, i64* %_done_decl2673
  %_bop_result2719 = icmp eq i64 %_done2718, 0
  br i1 %_bop_result2719, label %_then2739, label %_end_if2741
_then2739:
  %_a2720 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2656
  %_i2721 = load i64, i64* %_i_decl2668
  %_reference2722 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2720, i32 0, i32 1, i64 %_i2721
  %_index2723 = load i64, i64* %_reference2722
  store i64 %_index2723, i64* %_t_decl2672
  %_a2725 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2656
  %_j2726 = load i64, i64* %_j_decl2671
  %_reference2727 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2725, i32 0, i32 1, i64 %_j2726
  %_index2728 = load i64, i64* %_reference2727
  %_a2729 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2656
  %_i2730 = load i64, i64* %_i_decl2668
  %_gep2731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2729, i32 0, i32 1, i64 %_i2730
  store i64 %_index2728, i64* %_gep2731
  %_t2733 = load i64, i64* %_t_decl2672
  %_a2734 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2656
  %_j2735 = load i64, i64* %_j_decl2671
  %_gep2736 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2734, i32 0, i32 1, i64 %_j2735
  store i64 %_t2733, i64* %_gep2736
  br label %_end_if2741
_end_if2741:
  br label %_while_cond2742
_while_cond2742:
  %_done2674 = load i64, i64* %_done_decl2673
  %_bop_result2675 = icmp eq i64 %_done2674, 0
  br i1 %_bop_result2675, label %_while_body2743, label %_while_end2744
_while_end2744:
  %_a2745 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2656
  %_l2746 = load i64, i64* %_l2658
  %_reference2747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2745, i32 0, i32 1, i64 %_l2746
  %_index2748 = load i64, i64* %_reference2747
  store i64 %_index2748, i64* %_t_decl2672
  %_a2750 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2656
  %_j2751 = load i64, i64* %_j_decl2671
  %_reference2752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2750, i32 0, i32 1, i64 %_j2751
  %_index2753 = load i64, i64* %_reference2752
  %_a2754 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2656
  %_l2755 = load i64, i64* %_l2658
  %_gep2756 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2754, i32 0, i32 1, i64 %_l2755
  store i64 %_index2753, i64* %_gep2756
  %_t2758 = load i64, i64* %_t_decl2672
  %_a2759 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2656
  %_j2760 = load i64, i64* %_j_decl2671
  %_gep2761 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2759, i32 0, i32 1, i64 %_j2760
  store i64 %_t2758, i64* %_gep2761
  %_j2763 = load i64, i64* %_j_decl2671
  ret i64 %_j2763
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2632 = alloca i64
  %_argv2634 = alloca { i64, [0 x i8*] }*
  %_a_decl2647 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2632
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2634
  %_raw_array2636 = call i64* @oat_alloc_array(i64 9)
  %_array2637 = bitcast i64* %_raw_array2636 to { i64, [0 x i64] }*
  %_arr_gep2638 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2637, i32 0, i32 1, i32 0
  store i64 107, i64* %_arr_gep2638
  %_arr_gep2639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2637, i32 0, i32 1, i32 1
  store i64 112, i64* %_arr_gep2639
  %_arr_gep2640 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2637, i32 0, i32 1, i32 2
  store i64 121, i64* %_arr_gep2640
  %_arr_gep2641 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2637, i32 0, i32 1, i32 3
  store i64 102, i64* %_arr_gep2641
  %_arr_gep2642 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2637, i32 0, i32 1, i32 4
  store i64 123, i64* %_arr_gep2642
  %_arr_gep2643 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2637, i32 0, i32 1, i32 5
  store i64 115, i64* %_arr_gep2643
  %_arr_gep2644 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2637, i32 0, i32 1, i32 6
  store i64 104, i64* %_arr_gep2644
  %_arr_gep2645 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2637, i32 0, i32 1, i32 7
  store i64 111, i64* %_arr_gep2645
  %_arr_gep2646 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2637, i32 0, i32 1, i32 8
  store i64 109, i64* %_arr_gep2646
  store { i64, [0 x i64] }* %_array2637, { i64, [0 x i64] }** %_a_decl2647
  %_a2648 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl2647
  %_string_of_array_call2649 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2648)
  call void @print_string(i8* %_string_of_array_call2649)
  %_a2651 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl2647
  call void @quick_sort({ i64, [0 x i64] }* %_a2651, i64 0, i64 8)
  %_a2653 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl2647
  %_string_of_array_call2654 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2653)
  call void @print_string(i8* %_string_of_array_call2654)
  ret i64 255
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
