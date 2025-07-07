; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %_a3365 = alloca { i64, [0 x i64] }*
  %_s3367 = alloca i64
  %_b3369 = alloca i64
  %_i_decl3372 = alloca i64
  %_min_decl3377 = alloca i64
  %_mi_decl3379 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3365
  store i64 %s, i64* %_s3367
  store i64 %b, i64* %_b3369
  %_s3371 = load i64, i64* %_s3367
  store i64 %_s3371, i64* %_i_decl3372
  %_a3373 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3365
  %_s3374 = load i64, i64* %_s3367
  %_reference3375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3373, i32 0, i32 1, i64 %_s3374
  %_index3376 = load i64, i64* %_reference3375
  store i64 %_index3376, i64* %_min_decl3377
  %_s3378 = load i64, i64* %_s3367
  store i64 %_s3378, i64* %_mi_decl3379
  br label %_while_cond3403
_while_body3404:
  br label %_if3396
_if3396:
  %_a3383 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3365
  %_i3384 = load i64, i64* %_i_decl3372
  %_reference3385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3383, i32 0, i32 1, i64 %_i3384
  %_index3386 = load i64, i64* %_reference3385
  %_min3387 = load i64, i64* %_min_decl3377
  %_bop_result3388 = icmp slt i64 %_index3386, %_min3387
  br i1 %_bop_result3388, label %_then3397, label %_end_if3399
_then3397:
  %_a3389 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3365
  %_i3390 = load i64, i64* %_i_decl3372
  %_reference3391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3389, i32 0, i32 1, i64 %_i3390
  %_index3392 = load i64, i64* %_reference3391
  store i64 %_index3392, i64* %_min_decl3377
  %_i3394 = load i64, i64* %_i_decl3372
  store i64 %_i3394, i64* %_mi_decl3379
  br label %_end_if3399
_end_if3399:
  %_i3400 = load i64, i64* %_i_decl3372
  %_bop_result3401 = add i64 %_i3400, 1
  store i64 %_bop_result3401, i64* %_i_decl3372
  br label %_while_cond3403
_while_cond3403:
  %_i3380 = load i64, i64* %_i_decl3372
  %_b3381 = load i64, i64* %_b3369
  %_bop_result3382 = icmp slt i64 %_i3380, %_b3381
  br i1 %_bop_result3382, label %_while_body3404, label %_while_end3405
_while_end3405:
  %_mi3406 = load i64, i64* %_mi_decl3379
  ret i64 %_mi3406
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %_a3326 = alloca { i64, [0 x i64] }*
  %_s3328 = alloca i64
  %_t_decl3330 = alloca i64
  %_mi_decl3331 = alloca i64
  %_i_decl3332 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3326
  store i64 %s, i64* %_s3328
  store i64 0, i64* %_t_decl3330
  store i64 0, i64* %_mi_decl3331
  store i64 0, i64* %_i_decl3332
  br label %_while_cond3362
_while_body3363:
  %_a3336 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3326
  %_i3337 = load i64, i64* %_i_decl3332
  %_s3338 = load i64, i64* %_s3328
  %_getminindex_call3339 = call i64 @getminindex({ i64, [0 x i64] }* %_a3336, i64 %_i3337, i64 %_s3338)
  store i64 %_getminindex_call3339, i64* %_mi_decl3331
  %_a3341 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3326
  %_i3342 = load i64, i64* %_i_decl3332
  %_reference3343 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3341, i32 0, i32 1, i64 %_i3342
  %_index3344 = load i64, i64* %_reference3343
  store i64 %_index3344, i64* %_t_decl3330
  %_a3346 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3326
  %_mi3347 = load i64, i64* %_mi_decl3331
  %_reference3348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3346, i32 0, i32 1, i64 %_mi3347
  %_index3349 = load i64, i64* %_reference3348
  %_a3350 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3326
  %_i3351 = load i64, i64* %_i_decl3332
  %_gep3352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3350, i32 0, i32 1, i64 %_i3351
  store i64 %_index3349, i64* %_gep3352
  %_t3354 = load i64, i64* %_t_decl3330
  %_a3355 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3326
  %_mi3356 = load i64, i64* %_mi_decl3331
  %_gep3357 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3355, i32 0, i32 1, i64 %_mi3356
  store i64 %_t3354, i64* %_gep3357
  %_i3359 = load i64, i64* %_i_decl3332
  %_bop_result3360 = add i64 %_i3359, 1
  store i64 %_bop_result3360, i64* %_i_decl3332
  br label %_while_cond3362
_while_cond3362:
  %_i3333 = load i64, i64* %_i_decl3332
  %_s3334 = load i64, i64* %_s3328
  %_bop_result3335 = icmp slt i64 %_i3333, %_s3334
  br i1 %_bop_result3335, label %_while_body3363, label %_while_end3364
_while_end3364:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3295 = alloca i64
  %_argv3297 = alloca { i64, [0 x i8*] }*
  %_ar_decl3309 = alloca { i64, [0 x i64] }*
  %_i_decl3312 = alloca i64
  store i64 %argc, i64* %_argc3295
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3297
  %_raw_array3299 = call i64* @oat_alloc_array(i64 8)
  %_array3300 = bitcast i64* %_raw_array3299 to { i64, [0 x i64] }*
  %_arr_gep3301 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3300, i32 0, i32 1, i32 0
  store i64 5, i64* %_arr_gep3301
  %_arr_gep3302 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3300, i32 0, i32 1, i32 1
  store i64 200, i64* %_arr_gep3302
  %_arr_gep3303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3300, i32 0, i32 1, i32 2
  store i64 1, i64* %_arr_gep3303
  %_arr_gep3304 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3300, i32 0, i32 1, i32 3
  store i64 65, i64* %_arr_gep3304
  %_arr_gep3305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3300, i32 0, i32 1, i32 4
  store i64 30, i64* %_arr_gep3305
  %_arr_gep3306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3300, i32 0, i32 1, i32 5
  store i64 99, i64* %_arr_gep3306
  %_arr_gep3307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3300, i32 0, i32 1, i32 6
  store i64 2, i64* %_arr_gep3307
  %_arr_gep3308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3300, i32 0, i32 1, i32 7
  store i64 0, i64* %_arr_gep3308
  store { i64, [0 x i64] }* %_array3300, { i64, [0 x i64] }** %_ar_decl3309
  %_ar3310 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar_decl3309
  call void @selectionsort({ i64, [0 x i64] }* %_ar3310, i64 8)
  store i64 0, i64* %_i_decl3312
  br label %_while_cond3323
_while_body3324:
  %_ar3315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar_decl3309
  %_i3316 = load i64, i64* %_i_decl3312
  %_reference3317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar3315, i32 0, i32 1, i64 %_i3316
  %_index3318 = load i64, i64* %_reference3317
  call void @print_int(i64 %_index3318)
  %_i3320 = load i64, i64* %_i_decl3312
  %_bop_result3321 = add i64 %_i3320, 1
  store i64 %_bop_result3321, i64* %_i_decl3312
  br label %_while_cond3323
_while_cond3323:
  %_i3313 = load i64, i64* %_i_decl3312
  %_bop_result3314 = icmp slt i64 %_i3313, 8
  br i1 %_bop_result3314, label %_while_body3324, label %_while_end3325
_while_end3325:
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
