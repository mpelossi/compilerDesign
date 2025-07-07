; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_global_str3283 = global [2 x i8] c" \00"
@_casted_array3284 = global i8* bitcast ([2 x i8]* @_global_str3283 to i8*)
@_global_str3290 = global [2 x i8] c" \00"
@_casted_array3291 = global i8* bitcast ([2 x i8]* @_global_str3290 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3260 = alloca i64
  %_argv3262 = alloca { i64, [0 x i8*] }*
  %_a_decl3276 = alloca { i64, [0 x i64] }*
  %_i_decl3277 = alloca i64
  store i64 %argc, i64* %_argc3260
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3262
  %_raw_array3264 = call i64* @oat_alloc_array(i64 10)
  %_array3265 = bitcast i64* %_raw_array3264 to { i64, [0 x i64] }*
  %_arr_gep3266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3265, i32 0, i32 1, i32 0
  store i64 126, i64* %_arr_gep3266
  %_arr_gep3267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3265, i32 0, i32 1, i32 1
  store i64 125, i64* %_arr_gep3267
  %_arr_gep3268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3265, i32 0, i32 1, i32 2
  store i64 124, i64* %_arr_gep3268
  %_arr_gep3269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3265, i32 0, i32 1, i32 3
  store i64 123, i64* %_arr_gep3269
  %_arr_gep3270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3265, i32 0, i32 1, i32 4
  store i64 122, i64* %_arr_gep3270
  %_arr_gep3271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3265, i32 0, i32 1, i32 5
  store i64 121, i64* %_arr_gep3271
  %_arr_gep3272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3265, i32 0, i32 1, i32 6
  store i64 120, i64* %_arr_gep3272
  %_arr_gep3273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3265, i32 0, i32 1, i32 7
  store i64 119, i64* %_arr_gep3273
  %_arr_gep3274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3265, i32 0, i32 1, i32 8
  store i64 118, i64* %_arr_gep3274
  %_arr_gep3275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3265, i32 0, i32 1, i32 9
  store i64 117, i64* %_arr_gep3275
  store { i64, [0 x i64] }* %_array3265, { i64, [0 x i64] }** %_a_decl3276
  store i64 0, i64* %_i_decl3277
  %_a3278 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl3276
  %_string_of_array_call3279 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3278)
  call void @print_string(i8* %_string_of_array_call3279)
  %_a3281 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl3276
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3281, i64 0, i64 9)
  %_loaded_str3285 = load i8*, i8** @_casted_array3284
  call void @print_string(i8* %_loaded_str3285)
  %_a3287 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl3276
  %_string_of_array_call3288 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3287)
  call void @print_string(i8* %_string_of_array_call3288)
  %_loaded_str3292 = load i8*, i8** @_casted_array3291
  call void @print_string(i8* %_loaded_str3292)
  %_i3294 = load i64, i64* %_i_decl3277
  ret i64 %_i3294
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_a3227 = alloca { i64, [0 x i64] }*
  %_low3229 = alloca i64
  %_high3231 = alloca i64
  %_mid_decl3233 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3227
  store i64 %low, i64* %_low3229
  store i64 %high, i64* %_high3231
  store i64 0, i64* %_mid_decl3233
  br label %_if3256
_if3256:
  %_low3234 = load i64, i64* %_low3229
  %_high3235 = load i64, i64* %_high3231
  %_bop_result3236 = icmp slt i64 %_low3234, %_high3235
  br i1 %_bop_result3236, label %_then3257, label %_end_if3259
_then3257:
  %_low3237 = load i64, i64* %_low3229
  %_high3238 = load i64, i64* %_high3231
  %_bop_result3239 = add i64 %_low3237, %_high3238
  %_bop_result3240 = lshr i64 %_bop_result3239, 1
  store i64 %_bop_result3240, i64* %_mid_decl3233
  %_a3242 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3227
  %_low3243 = load i64, i64* %_low3229
  %_mid3244 = load i64, i64* %_mid_decl3233
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3242, i64 %_low3243, i64 %_mid3244)
  %_a3246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3227
  %_mid3247 = load i64, i64* %_mid_decl3233
  %_bop_result3248 = add i64 %_mid3247, 1
  %_high3249 = load i64, i64* %_high3231
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3246, i64 %_bop_result3248, i64 %_high3249)
  %_a3251 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3227
  %_low3252 = load i64, i64* %_low3229
  %_high3253 = load i64, i64* %_high3231
  %_mid3254 = load i64, i64* %_mid_decl3233
  call void @merge({ i64, [0 x i64] }* %_a3251, i64 %_low3252, i64 %_high3253, i64 %_mid3254)
  br label %_end_if3259
_end_if3259:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_a3096 = alloca { i64, [0 x i64] }*
  %_low3098 = alloca i64
  %_high3100 = alloca i64
  %_mid3102 = alloca i64
  %_i_decl3104 = alloca i64
  %_j_decl3105 = alloca i64
  %_k_decl3106 = alloca i64
  %_c_decl3109 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3096
  store i64 %low, i64* %_low3098
  store i64 %high, i64* %_high3100
  store i64 %mid, i64* %_mid3102
  store i64 0, i64* %_i_decl3104
  store i64 0, i64* %_j_decl3105
  store i64 0, i64* %_k_decl3106
  %_raw_array3107 = call i64* @oat_alloc_array(i64 50)
  %_array3108 = bitcast i64* %_raw_array3107 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3108, { i64, [0 x i64] }** %_c_decl3109
  %_low3110 = load i64, i64* %_low3098
  store i64 %_low3110, i64* %_i_decl3104
  %_mid3112 = load i64, i64* %_mid3102
  %_bop_result3113 = add i64 %_mid3112, 1
  store i64 %_bop_result3113, i64* %_j_decl3105
  %_low3115 = load i64, i64* %_low3098
  store i64 %_low3115, i64* %_k_decl3106
  br label %_while_cond3165
_while_body3166:
  br label %_if3161
_if3161:
  %_a3124 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3096
  %_i3125 = load i64, i64* %_i_decl3104
  %_reference3126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3124, i32 0, i32 1, i64 %_i3125
  %_index3127 = load i64, i64* %_reference3126
  %_a3128 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3096
  %_j3129 = load i64, i64* %_j_decl3105
  %_reference3130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3128, i32 0, i32 1, i64 %_j3129
  %_index3131 = load i64, i64* %_reference3130
  %_bop_result3132 = icmp slt i64 %_index3127, %_index3131
  br i1 %_bop_result3132, label %_then3162, label %_else3163
_then3162:
  %_a3133 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3096
  %_i3134 = load i64, i64* %_i_decl3104
  %_reference3135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3133, i32 0, i32 1, i64 %_i3134
  %_index3136 = load i64, i64* %_reference3135
  %_c3137 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c_decl3109
  %_k3138 = load i64, i64* %_k_decl3106
  %_gep3139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3137, i32 0, i32 1, i64 %_k3138
  store i64 %_index3136, i64* %_gep3139
  %_k3141 = load i64, i64* %_k_decl3106
  %_bop_result3142 = add i64 %_k3141, 1
  store i64 %_bop_result3142, i64* %_k_decl3106
  %_i3144 = load i64, i64* %_i_decl3104
  %_bop_result3145 = add i64 %_i3144, 1
  store i64 %_bop_result3145, i64* %_i_decl3104
  br label %_end_if3164
_else3163:
  %_a3147 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3096
  %_j3148 = load i64, i64* %_j_decl3105
  %_reference3149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3147, i32 0, i32 1, i64 %_j3148
  %_index3150 = load i64, i64* %_reference3149
  %_c3151 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c_decl3109
  %_k3152 = load i64, i64* %_k_decl3106
  %_gep3153 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3151, i32 0, i32 1, i64 %_k3152
  store i64 %_index3150, i64* %_gep3153
  %_k3155 = load i64, i64* %_k_decl3106
  %_bop_result3156 = add i64 %_k3155, 1
  store i64 %_bop_result3156, i64* %_k_decl3106
  %_j3158 = load i64, i64* %_j_decl3105
  %_bop_result3159 = add i64 %_j3158, 1
  store i64 %_bop_result3159, i64* %_j_decl3105
  br label %_end_if3164
_end_if3164:
  br label %_while_cond3165
_while_cond3165:
  %_i3117 = load i64, i64* %_i_decl3104
  %_mid3118 = load i64, i64* %_mid3102
  %_bop_result3119 = icmp sle i64 %_i3117, %_mid3118
  %_j3120 = load i64, i64* %_j_decl3105
  %_high3121 = load i64, i64* %_high3100
  %_bop_result3122 = icmp sle i64 %_j3120, %_high3121
  %_bop_result3123 = and i1 %_bop_result3119, %_bop_result3122
  br i1 %_bop_result3123, label %_while_body3166, label %_while_end3167
_while_end3167:
  br label %_while_cond3185
_while_body3186:
  %_a3171 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3096
  %_i3172 = load i64, i64* %_i_decl3104
  %_reference3173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3171, i32 0, i32 1, i64 %_i3172
  %_index3174 = load i64, i64* %_reference3173
  %_c3175 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c_decl3109
  %_k3176 = load i64, i64* %_k_decl3106
  %_gep3177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3175, i32 0, i32 1, i64 %_k3176
  store i64 %_index3174, i64* %_gep3177
  %_k3179 = load i64, i64* %_k_decl3106
  %_bop_result3180 = add i64 %_k3179, 1
  store i64 %_bop_result3180, i64* %_k_decl3106
  %_i3182 = load i64, i64* %_i_decl3104
  %_bop_result3183 = add i64 %_i3182, 1
  store i64 %_bop_result3183, i64* %_i_decl3104
  br label %_while_cond3185
_while_cond3185:
  %_i3168 = load i64, i64* %_i_decl3104
  %_mid3169 = load i64, i64* %_mid3102
  %_bop_result3170 = icmp sle i64 %_i3168, %_mid3169
  br i1 %_bop_result3170, label %_while_body3186, label %_while_end3187
_while_end3187:
  br label %_while_cond3205
_while_body3206:
  %_a3191 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3096
  %_j3192 = load i64, i64* %_j_decl3105
  %_reference3193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3191, i32 0, i32 1, i64 %_j3192
  %_index3194 = load i64, i64* %_reference3193
  %_c3195 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c_decl3109
  %_k3196 = load i64, i64* %_k_decl3106
  %_gep3197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3195, i32 0, i32 1, i64 %_k3196
  store i64 %_index3194, i64* %_gep3197
  %_k3199 = load i64, i64* %_k_decl3106
  %_bop_result3200 = add i64 %_k3199, 1
  store i64 %_bop_result3200, i64* %_k_decl3106
  %_j3202 = load i64, i64* %_j_decl3105
  %_bop_result3203 = add i64 %_j3202, 1
  store i64 %_bop_result3203, i64* %_j_decl3105
  br label %_while_cond3205
_while_cond3205:
  %_j3188 = load i64, i64* %_j_decl3105
  %_high3189 = load i64, i64* %_high3100
  %_bop_result3190 = icmp sle i64 %_j3188, %_high3189
  br i1 %_bop_result3190, label %_while_body3206, label %_while_end3207
_while_end3207:
  %_low3208 = load i64, i64* %_low3098
  store i64 %_low3208, i64* %_i_decl3104
  br label %_while_cond3224
_while_body3225:
  %_c3213 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c_decl3109
  %_i3214 = load i64, i64* %_i_decl3104
  %_reference3215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3213, i32 0, i32 1, i64 %_i3214
  %_index3216 = load i64, i64* %_reference3215
  %_a3217 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3096
  %_i3218 = load i64, i64* %_i_decl3104
  %_gep3219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3217, i32 0, i32 1, i64 %_i3218
  store i64 %_index3216, i64* %_gep3219
  %_i3221 = load i64, i64* %_i_decl3104
  %_bop_result3222 = add i64 %_i3221, 1
  store i64 %_bop_result3222, i64* %_i_decl3104
  br label %_while_cond3224
_while_cond3224:
  %_i3210 = load i64, i64* %_i_decl3104
  %_k3211 = load i64, i64* %_k_decl3106
  %_bop_result3212 = icmp slt i64 %_i3210, %_k3211
  br i1 %_bop_result3212, label %_while_body3225, label %_while_end3226
_while_end3226:
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
