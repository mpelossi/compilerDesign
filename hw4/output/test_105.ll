; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_partial5263 = alloca { i64, [0 x i64] }*
  %_len5265 = alloca i64
  %_insertee5267 = alloca i64
  %_inserted_decl5273 = alloca { i64, [0 x i64] }*
  %_i_decl5274 = alloca i64
  %_not_yet_inserted_decl5290 = alloca i1
  %_i_decl5305 = alloca i64
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_partial5263
  store i64 %len, i64* %_len5265
  store i64 %insertee, i64* %_insertee5267
  %_len5269 = load i64, i64* %_len5265
  %_bop_result5270 = add i64 %_len5269, 1
  %_raw_array5271 = call i64* @oat_alloc_array(i64 %_bop_result5270)
  %_array5272 = bitcast i64* %_raw_array5271 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5272, { i64, [0 x i64] }** %_inserted_decl5273
  store i64 0, i64* %_i_decl5274
  br label %_while_cond5287
_while_body5288:
  %_uop_result5279 = mul i64 1, -1
  %_inserted5280 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted_decl5273
  %_i5281 = load i64, i64* %_i_decl5274
  %_gep5282 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5280, i32 0, i32 1, i64 %_i5281
  store i64 %_uop_result5279, i64* %_gep5282
  %_i5284 = load i64, i64* %_i_decl5274
  %_bop_result5285 = add i64 %_i5284, 1
  store i64 %_bop_result5285, i64* %_i_decl5274
  br label %_while_cond5287
_while_cond5287:
  %_i5275 = load i64, i64* %_i_decl5274
  %_len5276 = load i64, i64* %_len5265
  %_bop_result5277 = add i64 %_len5276, 1
  %_bop_result5278 = icmp slt i64 %_i5275, %_bop_result5277
  br i1 %_bop_result5278, label %_while_body5288, label %_while_end5289
_while_end5289:
  store i1 1, i1* %_not_yet_inserted_decl5290
  br label %_if5301
_if5301:
  %_insertee5291 = load i64, i64* %_insertee5267
  %_partial5292 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5263
  %_reference5293 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5292, i32 0, i32 1, i32 0
  %_index5294 = load i64, i64* %_reference5293
  %_bop_result5295 = icmp slt i64 %_insertee5291, %_index5294
  br i1 %_bop_result5295, label %_then5302, label %_end_if5304
_then5302:
  store i1 0, i1* %_not_yet_inserted_decl5290
  %_insertee5297 = load i64, i64* %_insertee5267
  %_inserted5298 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted_decl5273
  %_gep5299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5298, i32 0, i32 1, i32 0
  store i64 %_insertee5297, i64* %_gep5299
  br label %_end_if5304
_end_if5304:
  store i64 0, i64* %_i_decl5305
  br label %_while_cond5359
_while_body5360:
  br label %_if5352
_if5352:
  %_not_yet_inserted5309 = load i1, i1* %_not_yet_inserted_decl5290
  br i1 %_not_yet_inserted5309, label %_then5353, label %_else5354
_then5353:
  br label %_if5339
_if5339:
  %_insertee5310 = load i64, i64* %_insertee5267
  %_partial5311 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5263
  %_i5312 = load i64, i64* %_i_decl5305
  %_reference5313 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5311, i32 0, i32 1, i64 %_i5312
  %_index5314 = load i64, i64* %_reference5313
  %_bop_result5315 = icmp sgt i64 %_insertee5310, %_index5314
  br i1 %_bop_result5315, label %_then5340, label %_else5341
_then5340:
  store i1 0, i1* %_not_yet_inserted_decl5290
  %_insertee5317 = load i64, i64* %_insertee5267
  %_inserted5318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted_decl5273
  %_i5319 = load i64, i64* %_i_decl5305
  %_bop_result5320 = add i64 %_i5319, 1
  %_gep5321 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5318, i32 0, i32 1, i64 %_bop_result5320
  store i64 %_insertee5317, i64* %_gep5321
  %_partial5323 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5263
  %_i5324 = load i64, i64* %_i_decl5305
  %_reference5325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5323, i32 0, i32 1, i64 %_i5324
  %_index5326 = load i64, i64* %_reference5325
  %_inserted5327 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted_decl5273
  %_i5328 = load i64, i64* %_i_decl5305
  %_gep5329 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5327, i32 0, i32 1, i64 %_i5328
  store i64 %_index5326, i64* %_gep5329
  br label %_end_if5342
_else5341:
  %_partial5331 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5263
  %_i5332 = load i64, i64* %_i_decl5305
  %_reference5333 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5331, i32 0, i32 1, i64 %_i5332
  %_index5334 = load i64, i64* %_reference5333
  %_inserted5335 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted_decl5273
  %_i5336 = load i64, i64* %_i_decl5305
  %_gep5337 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5335, i32 0, i32 1, i64 %_i5336
  store i64 %_index5334, i64* %_gep5337
  br label %_end_if5342
_end_if5342:
  br label %_end_if5355
_else5354:
  %_partial5343 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5263
  %_i5344 = load i64, i64* %_i_decl5305
  %_reference5345 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5343, i32 0, i32 1, i64 %_i5344
  %_index5346 = load i64, i64* %_reference5345
  %_inserted5347 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted_decl5273
  %_i5348 = load i64, i64* %_i_decl5305
  %_bop_result5349 = add i64 %_i5348, 1
  %_gep5350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5347, i32 0, i32 1, i64 %_bop_result5349
  store i64 %_index5346, i64* %_gep5350
  br label %_end_if5355
_end_if5355:
  %_i5356 = load i64, i64* %_i_decl5305
  %_bop_result5357 = add i64 %_i5356, 1
  store i64 %_bop_result5357, i64* %_i_decl5305
  br label %_while_cond5359
_while_cond5359:
  %_i5306 = load i64, i64* %_i_decl5305
  %_len5307 = load i64, i64* %_len5265
  %_bop_result5308 = icmp slt i64 %_i5306, %_len5307
  br i1 %_bop_result5308, label %_while_body5360, label %_while_end5361
_while_end5361:
  %_inserted5362 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted_decl5273
  ret { i64, [0 x i64] }* %_inserted5362
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_unsorted5230 = alloca { i64, [0 x i64] }*
  %_len5232 = alloca i64
  %_out_decl5237 = alloca { i64, [0 x i64] }*
  %_i_decl5244 = alloca i64
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_unsorted5230
  store i64 %len, i64* %_len5232
  %_raw_array5234 = call i64* @oat_alloc_array(i64 1)
  %_array5235 = bitcast i64* %_raw_array5234 to { i64, [0 x i64] }*
  %_arr_gep5236 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5235, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep5236
  store { i64, [0 x i64] }* %_array5235, { i64, [0 x i64] }** %_out_decl5237
  %_unsorted5238 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5230
  %_reference5239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted5238, i32 0, i32 1, i32 0
  %_index5240 = load i64, i64* %_reference5239
  %_out5241 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out_decl5237
  %_gep5242 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out5241, i32 0, i32 1, i32 0
  store i64 %_index5240, i64* %_gep5242
  store i64 1, i64* %_i_decl5244
  br label %_while_cond5259
_while_body5260:
  %_out5248 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out_decl5237
  %_i5249 = load i64, i64* %_i_decl5244
  %_unsorted5250 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5230
  %_i5251 = load i64, i64* %_i_decl5244
  %_reference5252 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted5250, i32 0, i32 1, i64 %_i5251
  %_index5253 = load i64, i64* %_reference5252
  %_insert_call5254 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_out5248, i64 %_i5249, i64 %_index5253)
  store { i64, [0 x i64] }* %_insert_call5254, { i64, [0 x i64] }** %_out_decl5237
  %_i5256 = load i64, i64* %_i_decl5244
  %_bop_result5257 = add i64 %_i5256, 1
  store i64 %_bop_result5257, i64* %_i_decl5244
  br label %_while_cond5259
_while_cond5259:
  %_i5245 = load i64, i64* %_i_decl5244
  %_len5246 = load i64, i64* %_len5232
  %_bop_result5247 = icmp slt i64 %_i5245, %_len5246
  br i1 %_bop_result5247, label %_while_body5260, label %_while_end5261
_while_end5261:
  %_out5262 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out_decl5237
  ret { i64, [0 x i64] }* %_out5262
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5211 = alloca i64
  %_argv5213 = alloca { i64, [0 x i8*] }*
  %_array_decl5223 = alloca { i64, [0 x i64] }*
  %_result_decl5226 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc5211
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5213
  %_raw_array5215 = call i64* @oat_alloc_array(i64 6)
  %_array5216 = bitcast i64* %_raw_array5215 to { i64, [0 x i64] }*
  %_arr_gep5217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5216, i32 0, i32 1, i32 0
  store i64 13, i64* %_arr_gep5217
  %_arr_gep5218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5216, i32 0, i32 1, i32 1
  store i64 42, i64* %_arr_gep5218
  %_arr_gep5219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5216, i32 0, i32 1, i32 2
  store i64 32, i64* %_arr_gep5219
  %_arr_gep5220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5216, i32 0, i32 1, i32 3
  store i64 3, i64* %_arr_gep5220
  %_arr_gep5221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5216, i32 0, i32 1, i32 4
  store i64 2, i64* %_arr_gep5221
  %_arr_gep5222 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5216, i32 0, i32 1, i32 5
  store i64 6, i64* %_arr_gep5222
  store { i64, [0 x i64] }* %_array5216, { i64, [0 x i64] }** %_array_decl5223
  %_array5224 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array_decl5223
  %_insort_call5225 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_array5224, i64 6)
  store { i64, [0 x i64] }* %_insort_call5225, { i64, [0 x i64] }** %_result_decl5226
  %_result5227 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_result_decl5226
  %_reference5228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result5227, i32 0, i32 1, i32 5
  %_index5229 = load i64, i64* %_reference5228
  ret i64 %_index5229
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
