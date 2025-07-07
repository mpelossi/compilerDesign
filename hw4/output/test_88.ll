; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_global_str3084 = global [2 x i8] c" \00"
@_casted_array3085 = global i8* bitcast ([2 x i8]* @_global_str3084 to i8*)
@_global_str3091 = global [2 x i8] c" \00"
@_casted_array3092 = global i8* bitcast ([2 x i8]* @_global_str3091 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3061 = alloca i64
  %_argv3063 = alloca { i64, [0 x i8*] }*
  %_i_decl3065 = alloca i64
  %_a_decl3078 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3061
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3063
  store i64 0, i64* %_i_decl3065
  %_raw_array3066 = call i64* @oat_alloc_array(i64 10)
  %_array3067 = bitcast i64* %_raw_array3066 to { i64, [0 x i64] }*
  %_arr_gep3068 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3067, i32 0, i32 1, i32 0
  store i64 126, i64* %_arr_gep3068
  %_arr_gep3069 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3067, i32 0, i32 1, i32 1
  store i64 125, i64* %_arr_gep3069
  %_arr_gep3070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3067, i32 0, i32 1, i32 2
  store i64 124, i64* %_arr_gep3070
  %_arr_gep3071 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3067, i32 0, i32 1, i32 3
  store i64 123, i64* %_arr_gep3071
  %_arr_gep3072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3067, i32 0, i32 1, i32 4
  store i64 122, i64* %_arr_gep3072
  %_arr_gep3073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3067, i32 0, i32 1, i32 5
  store i64 121, i64* %_arr_gep3073
  %_arr_gep3074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3067, i32 0, i32 1, i32 6
  store i64 120, i64* %_arr_gep3074
  %_arr_gep3075 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3067, i32 0, i32 1, i32 7
  store i64 119, i64* %_arr_gep3075
  %_arr_gep3076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3067, i32 0, i32 1, i32 8
  store i64 118, i64* %_arr_gep3076
  %_arr_gep3077 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3067, i32 0, i32 1, i32 9
  store i64 117, i64* %_arr_gep3077
  store { i64, [0 x i64] }* %_array3067, { i64, [0 x i64] }** %_a_decl3078
  %_a3079 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl3078
  %_string_of_array_call3080 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3079)
  call void @print_string(i8* %_string_of_array_call3080)
  %_a3082 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl3078
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3082, i64 0, i64 9)
  %_loaded_str3086 = load i8*, i8** @_casted_array3085
  call void @print_string(i8* %_loaded_str3086)
  %_a3088 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl3078
  %_string_of_array_call3089 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3088)
  call void @print_string(i8* %_string_of_array_call3089)
  %_loaded_str3093 = load i8*, i8** @_casted_array3092
  call void @print_string(i8* %_loaded_str3093)
  %_i3095 = load i64, i64* %_i_decl3065
  ret i64 %_i3095
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_a3028 = alloca { i64, [0 x i64] }*
  %_low3030 = alloca i64
  %_high3032 = alloca i64
  %_mid_decl3034 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3028
  store i64 %low, i64* %_low3030
  store i64 %high, i64* %_high3032
  store i64 0, i64* %_mid_decl3034
  br label %_if3057
_if3057:
  %_low3035 = load i64, i64* %_low3030
  %_high3036 = load i64, i64* %_high3032
  %_bop_result3037 = icmp slt i64 %_low3035, %_high3036
  br i1 %_bop_result3037, label %_then3058, label %_end_if3060
_then3058:
  %_low3038 = load i64, i64* %_low3030
  %_high3039 = load i64, i64* %_high3032
  %_bop_result3040 = add i64 %_low3038, %_high3039
  %_bop_result3041 = lshr i64 %_bop_result3040, 1
  store i64 %_bop_result3041, i64* %_mid_decl3034
  %_a3043 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3028
  %_low3044 = load i64, i64* %_low3030
  %_mid3045 = load i64, i64* %_mid_decl3034
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3043, i64 %_low3044, i64 %_mid3045)
  %_a3047 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3028
  %_mid3048 = load i64, i64* %_mid_decl3034
  %_bop_result3049 = add i64 %_mid3048, 1
  %_high3050 = load i64, i64* %_high3032
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3047, i64 %_bop_result3049, i64 %_high3050)
  %_a3052 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3028
  %_low3053 = load i64, i64* %_low3030
  %_high3054 = load i64, i64* %_high3032
  %_mid3055 = load i64, i64* %_mid_decl3034
  call void @merge({ i64, [0 x i64] }* %_a3052, i64 %_low3053, i64 %_high3054, i64 %_mid3055)
  br label %_end_if3060
_end_if3060:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_a2897 = alloca { i64, [0 x i64] }*
  %_low2899 = alloca i64
  %_high2901 = alloca i64
  %_mid2903 = alloca i64
  %_i_decl2905 = alloca i64
  %_j_decl2906 = alloca i64
  %_k_decl2907 = alloca i64
  %_c_decl2910 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2897
  store i64 %low, i64* %_low2899
  store i64 %high, i64* %_high2901
  store i64 %mid, i64* %_mid2903
  store i64 0, i64* %_i_decl2905
  store i64 0, i64* %_j_decl2906
  store i64 0, i64* %_k_decl2907
  %_raw_array2908 = call i64* @oat_alloc_array(i64 50)
  %_array2909 = bitcast i64* %_raw_array2908 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2909, { i64, [0 x i64] }** %_c_decl2910
  %_low2911 = load i64, i64* %_low2899
  store i64 %_low2911, i64* %_i_decl2905
  %_mid2913 = load i64, i64* %_mid2903
  %_bop_result2914 = add i64 %_mid2913, 1
  store i64 %_bop_result2914, i64* %_j_decl2906
  %_low2916 = load i64, i64* %_low2899
  store i64 %_low2916, i64* %_k_decl2907
  br label %_while_cond2966
_while_body2967:
  br label %_if2962
_if2962:
  %_a2925 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2897
  %_i2926 = load i64, i64* %_i_decl2905
  %_reference2927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2925, i32 0, i32 1, i64 %_i2926
  %_index2928 = load i64, i64* %_reference2927
  %_a2929 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2897
  %_j2930 = load i64, i64* %_j_decl2906
  %_reference2931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2929, i32 0, i32 1, i64 %_j2930
  %_index2932 = load i64, i64* %_reference2931
  %_bop_result2933 = icmp slt i64 %_index2928, %_index2932
  br i1 %_bop_result2933, label %_then2963, label %_else2964
_then2963:
  %_a2934 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2897
  %_i2935 = load i64, i64* %_i_decl2905
  %_reference2936 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2934, i32 0, i32 1, i64 %_i2935
  %_index2937 = load i64, i64* %_reference2936
  %_c2938 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c_decl2910
  %_k2939 = load i64, i64* %_k_decl2907
  %_gep2940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c2938, i32 0, i32 1, i64 %_k2939
  store i64 %_index2937, i64* %_gep2940
  %_k2942 = load i64, i64* %_k_decl2907
  %_bop_result2943 = add i64 %_k2942, 1
  store i64 %_bop_result2943, i64* %_k_decl2907
  %_i2945 = load i64, i64* %_i_decl2905
  %_bop_result2946 = add i64 %_i2945, 1
  store i64 %_bop_result2946, i64* %_i_decl2905
  br label %_end_if2965
_else2964:
  %_a2948 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2897
  %_j2949 = load i64, i64* %_j_decl2906
  %_reference2950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2948, i32 0, i32 1, i64 %_j2949
  %_index2951 = load i64, i64* %_reference2950
  %_c2952 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c_decl2910
  %_k2953 = load i64, i64* %_k_decl2907
  %_gep2954 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c2952, i32 0, i32 1, i64 %_k2953
  store i64 %_index2951, i64* %_gep2954
  %_k2956 = load i64, i64* %_k_decl2907
  %_bop_result2957 = add i64 %_k2956, 1
  store i64 %_bop_result2957, i64* %_k_decl2907
  %_j2959 = load i64, i64* %_j_decl2906
  %_bop_result2960 = add i64 %_j2959, 1
  store i64 %_bop_result2960, i64* %_j_decl2906
  br label %_end_if2965
_end_if2965:
  br label %_while_cond2966
_while_cond2966:
  %_i2918 = load i64, i64* %_i_decl2905
  %_mid2919 = load i64, i64* %_mid2903
  %_bop_result2920 = icmp sle i64 %_i2918, %_mid2919
  %_j2921 = load i64, i64* %_j_decl2906
  %_high2922 = load i64, i64* %_high2901
  %_bop_result2923 = icmp sle i64 %_j2921, %_high2922
  %_bop_result2924 = and i1 %_bop_result2920, %_bop_result2923
  br i1 %_bop_result2924, label %_while_body2967, label %_while_end2968
_while_end2968:
  br label %_while_cond2986
_while_body2987:
  %_a2972 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2897
  %_i2973 = load i64, i64* %_i_decl2905
  %_reference2974 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2972, i32 0, i32 1, i64 %_i2973
  %_index2975 = load i64, i64* %_reference2974
  %_c2976 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c_decl2910
  %_k2977 = load i64, i64* %_k_decl2907
  %_gep2978 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c2976, i32 0, i32 1, i64 %_k2977
  store i64 %_index2975, i64* %_gep2978
  %_k2980 = load i64, i64* %_k_decl2907
  %_bop_result2981 = add i64 %_k2980, 1
  store i64 %_bop_result2981, i64* %_k_decl2907
  %_i2983 = load i64, i64* %_i_decl2905
  %_bop_result2984 = add i64 %_i2983, 1
  store i64 %_bop_result2984, i64* %_i_decl2905
  br label %_while_cond2986
_while_cond2986:
  %_i2969 = load i64, i64* %_i_decl2905
  %_mid2970 = load i64, i64* %_mid2903
  %_bop_result2971 = icmp sle i64 %_i2969, %_mid2970
  br i1 %_bop_result2971, label %_while_body2987, label %_while_end2988
_while_end2988:
  br label %_while_cond3006
_while_body3007:
  %_a2992 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2897
  %_j2993 = load i64, i64* %_j_decl2906
  %_reference2994 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2992, i32 0, i32 1, i64 %_j2993
  %_index2995 = load i64, i64* %_reference2994
  %_c2996 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c_decl2910
  %_k2997 = load i64, i64* %_k_decl2907
  %_gep2998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c2996, i32 0, i32 1, i64 %_k2997
  store i64 %_index2995, i64* %_gep2998
  %_k3000 = load i64, i64* %_k_decl2907
  %_bop_result3001 = add i64 %_k3000, 1
  store i64 %_bop_result3001, i64* %_k_decl2907
  %_j3003 = load i64, i64* %_j_decl2906
  %_bop_result3004 = add i64 %_j3003, 1
  store i64 %_bop_result3004, i64* %_j_decl2906
  br label %_while_cond3006
_while_cond3006:
  %_j2989 = load i64, i64* %_j_decl2906
  %_high2990 = load i64, i64* %_high2901
  %_bop_result2991 = icmp sle i64 %_j2989, %_high2990
  br i1 %_bop_result2991, label %_while_body3007, label %_while_end3008
_while_end3008:
  %_low3009 = load i64, i64* %_low2899
  store i64 %_low3009, i64* %_i_decl2905
  br label %_while_cond3025
_while_body3026:
  %_c3014 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c_decl2910
  %_i3015 = load i64, i64* %_i_decl2905
  %_reference3016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3014, i32 0, i32 1, i64 %_i3015
  %_index3017 = load i64, i64* %_reference3016
  %_a3018 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2897
  %_i3019 = load i64, i64* %_i_decl2905
  %_gep3020 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3018, i32 0, i32 1, i64 %_i3019
  store i64 %_index3017, i64* %_gep3020
  %_i3022 = load i64, i64* %_i_decl2905
  %_bop_result3023 = add i64 %_i3022, 1
  store i64 %_bop_result3023, i64* %_i_decl2905
  br label %_while_cond3025
_while_cond3025:
  %_i3011 = load i64, i64* %_i_decl2905
  %_k3012 = load i64, i64* %_k_decl2907
  %_bop_result3013 = icmp slt i64 %_i3011, %_k3012
  br i1 %_bop_result3013, label %_while_body3026, label %_while_end3027
_while_end3027:
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
