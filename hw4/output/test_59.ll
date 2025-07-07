; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1388 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1388
  %_a1390 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1388
  %_reference1391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1390, i32 0, i32 1, i32 1
  %_index1392 = load i64, i64* %_reference1391
  ret i64 %_index1392
}

define i64 @g(i64 %x) {
  %_x1366 = alloca i64
  %_arr_decl1370 = alloca { i64, [0 x i64] }*
  %_i_decl1371 = alloca i64
  store i64 %x, i64* %_x1366
  %_raw_array1368 = call i64* @oat_alloc_array(i64 3)
  %_array1369 = bitcast i64* %_raw_array1368 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1369, { i64, [0 x i64] }** %_arr_decl1370
  store i64 0, i64* %_i_decl1371
  br label %_while_cond1382
_while_body1383:
  %_x1374 = load i64, i64* %_x1366
  %_arr1375 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl1370
  %_i1376 = load i64, i64* %_i_decl1371
  %_gep1377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1375, i32 0, i32 1, i64 %_i1376
  store i64 %_x1374, i64* %_gep1377
  %_i1379 = load i64, i64* %_i_decl1371
  %_bop_result1380 = add i64 %_i1379, 1
  store i64 %_bop_result1380, i64* %_i_decl1371
  br label %_while_cond1382
_while_cond1382:
  %_i1372 = load i64, i64* %_i_decl1371
  %_bop_result1373 = icmp slt i64 %_i1372, 3
  br i1 %_bop_result1373, label %_while_body1383, label %_while_end1384
_while_end1384:
  %_arr1385 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl1370
  %_reference1386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1385, i32 0, i32 1, i32 1
  %_index1387 = load i64, i64* %_reference1386
  ret i64 %_index1387
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1296 = alloca i64
  %_argv1298 = alloca { i64, [0 x i8*] }*
  %_a_decl1302 = alloca { i64, [0 x i64] }*
  %_i_decl1303 = alloca i64
  %_arr_decl1319 = alloca { i64, [0 x i64] }*
  %_i_decl1320 = alloca i64
  %_arr0_decl1338 = alloca { i64, [0 x i64] }*
  %_i_decl1339 = alloca i64
  store i64 %argc, i64* %_argc1296
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1298
  %_raw_array1300 = call i64* @oat_alloc_array(i64 3)
  %_array1301 = bitcast i64* %_raw_array1300 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1301, { i64, [0 x i64] }** %_a_decl1302
  store i64 0, i64* %_i_decl1303
  br label %_while_cond1314
_while_body1315:
  %_i1306 = load i64, i64* %_i_decl1303
  %_a1307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl1302
  %_i1308 = load i64, i64* %_i_decl1303
  %_gep1309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1307, i32 0, i32 1, i64 %_i1308
  store i64 %_i1306, i64* %_gep1309
  %_i1311 = load i64, i64* %_i_decl1303
  %_bop_result1312 = add i64 %_i1311, 1
  store i64 %_bop_result1312, i64* %_i_decl1303
  br label %_while_cond1314
_while_cond1314:
  %_i1304 = load i64, i64* %_i_decl1303
  %_bop_result1305 = icmp slt i64 %_i1304, 3
  br i1 %_bop_result1305, label %_while_body1315, label %_while_end1316
_while_end1316:
  %_raw_array1317 = call i64* @oat_alloc_array(i64 4)
  %_array1318 = bitcast i64* %_raw_array1317 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1318, { i64, [0 x i64] }** %_arr_decl1319
  store i64 0, i64* %_i_decl1320
  br label %_while_cond1333
_while_body1334:
  %_i1323 = load i64, i64* %_i_decl1320
  %_i1324 = load i64, i64* %_i_decl1320
  %_bop_result1325 = mul i64 %_i1323, %_i1324
  %_arr1326 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl1319
  %_i1327 = load i64, i64* %_i_decl1320
  %_gep1328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1326, i32 0, i32 1, i64 %_i1327
  store i64 %_bop_result1325, i64* %_gep1328
  %_i1330 = load i64, i64* %_i_decl1320
  %_bop_result1331 = add i64 %_i1330, 1
  store i64 %_bop_result1331, i64* %_i_decl1320
  br label %_while_cond1333
_while_cond1333:
  %_i1321 = load i64, i64* %_i_decl1320
  %_bop_result1322 = icmp slt i64 %_i1321, 4
  br i1 %_bop_result1322, label %_while_body1334, label %_while_end1335
_while_end1335:
  %_raw_array1336 = call i64* @oat_alloc_array(i64 3)
  %_array1337 = bitcast i64* %_raw_array1336 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1337, { i64, [0 x i64] }** %_arr0_decl1338
  store i64 0, i64* %_i_decl1339
  br label %_while_cond1351
_while_body1352:
  %_i1342 = load i64, i64* %_i_decl1339
  %_bop_result1343 = mul i64 2, %_i1342
  %_arr01344 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr0_decl1338
  %_i1345 = load i64, i64* %_i_decl1339
  %_gep1346 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr01344, i32 0, i32 1, i64 %_i1345
  store i64 %_bop_result1343, i64* %_gep1346
  %_i1348 = load i64, i64* %_i_decl1339
  %_bop_result1349 = add i64 %_i1348, 1
  store i64 %_bop_result1349, i64* %_i_decl1339
  br label %_while_cond1351
_while_cond1351:
  %_i1340 = load i64, i64* %_i_decl1339
  %_bop_result1341 = icmp slt i64 %_i1340, 3
  br i1 %_bop_result1341, label %_while_body1352, label %_while_end1353
_while_end1353:
  %_arr1354 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl1319
  %_reference1355 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1354, i32 0, i32 1, i32 3
  %_index1356 = load i64, i64* %_reference1355
  %_a1357 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl1302
  %_reference1358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1357, i32 0, i32 1, i32 1
  %_index1359 = load i64, i64* %_reference1358
  %_bop_result1360 = add i64 %_index1356, %_index1359
  %_arr01361 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr0_decl1338
  %_f_call1362 = call i64 @f({ i64, [0 x i64] }* %_arr01361)
  %_bop_result1363 = add i64 %_bop_result1360, %_f_call1362
  %_g_call1364 = call i64 @g(i64 4)
  %_bop_result1365 = add i64 %_bop_result1363, %_g_call1364
  ret i64 %_bop_result1365
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
