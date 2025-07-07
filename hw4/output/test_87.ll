; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_global_str2827 = global [2 x i8] c" \00"
@_casted_array2828 = global i8* bitcast ([2 x i8]* @_global_str2827 to i8*)

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_numbers2837 = alloca { i64, [0 x i64] }*
  %_array_size2839 = alloca i64
  %_temp_decl2841 = alloca i64
  %_i_decl2844 = alloca i64
  %_j_decl2847 = alloca i64
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers2837
  store i64 %array_size, i64* %_array_size2839
  store i64 0, i64* %_temp_decl2841
  %_array_size2842 = load i64, i64* %_array_size2839
  %_bop_result2843 = sub i64 %_array_size2842, 1
  store i64 %_bop_result2843, i64* %_i_decl2844
  br label %_while_cond2894
_while_body2895:
  store i64 1, i64* %_j_decl2847
  br label %_while_cond2888
_while_body2889:
  br label %_if2881
_if2881:
  %_numbers2851 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2837
  %_j2852 = load i64, i64* %_j_decl2847
  %_bop_result2853 = sub i64 %_j2852, 1
  %_reference2854 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2851, i32 0, i32 1, i64 %_bop_result2853
  %_index2855 = load i64, i64* %_reference2854
  %_numbers2856 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2837
  %_i2857 = load i64, i64* %_i_decl2844
  %_reference2858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2856, i32 0, i32 1, i64 %_i2857
  %_index2859 = load i64, i64* %_reference2858
  %_bop_result2860 = icmp sgt i64 %_index2855, %_index2859
  br i1 %_bop_result2860, label %_then2882, label %_end_if2884
_then2882:
  %_numbers2861 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2837
  %_j2862 = load i64, i64* %_j_decl2847
  %_bop_result2863 = sub i64 %_j2862, 1
  %_reference2864 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2861, i32 0, i32 1, i64 %_bop_result2863
  %_index2865 = load i64, i64* %_reference2864
  store i64 %_index2865, i64* %_temp_decl2841
  %_numbers2867 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2837
  %_i2868 = load i64, i64* %_i_decl2844
  %_reference2869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2867, i32 0, i32 1, i64 %_i2868
  %_index2870 = load i64, i64* %_reference2869
  %_numbers2871 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2837
  %_j2872 = load i64, i64* %_j_decl2847
  %_bop_result2873 = sub i64 %_j2872, 1
  %_gep2874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2871, i32 0, i32 1, i64 %_bop_result2873
  store i64 %_index2870, i64* %_gep2874
  %_temp2876 = load i64, i64* %_temp_decl2841
  %_numbers2877 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2837
  %_i2878 = load i64, i64* %_i_decl2844
  %_gep2879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2877, i32 0, i32 1, i64 %_i2878
  store i64 %_temp2876, i64* %_gep2879
  br label %_end_if2884
_end_if2884:
  %_j2885 = load i64, i64* %_j_decl2847
  %_bop_result2886 = add i64 %_j2885, 1
  store i64 %_bop_result2886, i64* %_j_decl2847
  br label %_while_cond2888
_while_cond2888:
  %_j2848 = load i64, i64* %_j_decl2847
  %_i2849 = load i64, i64* %_i_decl2844
  %_bop_result2850 = icmp sle i64 %_j2848, %_i2849
  br i1 %_bop_result2850, label %_while_body2889, label %_while_end2890
_while_end2890:
  %_i2891 = load i64, i64* %_i_decl2844
  %_bop_result2892 = sub i64 %_i2891, 1
  store i64 %_bop_result2892, i64* %_i_decl2844
  br label %_while_cond2894
_while_cond2894:
  %_i2845 = load i64, i64* %_i_decl2844
  %_bop_result2846 = icmp sgt i64 %_i2845, 0
  br i1 %_bop_result2846, label %_while_body2895, label %_while_end2896
_while_end2896:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2793 = alloca i64
  %_argv2795 = alloca { i64, [0 x i8*] }*
  %_a_decl2799 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2793
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2795
  %_raw_array2797 = call i64* @oat_alloc_array(i64 8)
  %_array2798 = bitcast i64* %_raw_array2797 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2798, { i64, [0 x i64] }** %_a_decl2799
  %_a2800 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl2799
  %_gep2801 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2800, i32 0, i32 1, i32 0
  store i64 121, i64* %_gep2801
  %_a2803 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl2799
  %_gep2804 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2803, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep2804
  %_a2806 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl2799
  %_gep2807 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2806, i32 0, i32 1, i32 2
  store i64 120, i64* %_gep2807
  %_a2809 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl2799
  %_gep2810 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2809, i32 0, i32 1, i32 3
  store i64 111, i64* %_gep2810
  %_a2812 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl2799
  %_gep2813 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2812, i32 0, i32 1, i32 4
  store i64 116, i64* %_gep2813
  %_a2815 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl2799
  %_gep2816 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2815, i32 0, i32 1, i32 5
  store i64 110, i64* %_gep2816
  %_a2818 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl2799
  %_gep2819 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2818, i32 0, i32 1, i32 6
  store i64 117, i64* %_gep2819
  %_a2821 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl2799
  %_gep2822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2821, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep2822
  %_a2824 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl2799
  %_string_of_array_call2825 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2824)
  call void @print_string(i8* %_string_of_array_call2825)
  %_loaded_str2829 = load i8*, i8** @_casted_array2828
  call void @print_string(i8* %_loaded_str2829)
  %_a2831 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl2799
  call void @bubble_sort({ i64, [0 x i64] }* %_a2831, i64 8)
  %_a2833 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl2799
  %_string_of_array_call2834 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2833)
  call void @print_string(i8* %_string_of_array_call2834)
  %_uop_result2836 = mul i64 1, -1
  ret i64 %_uop_result2836
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
