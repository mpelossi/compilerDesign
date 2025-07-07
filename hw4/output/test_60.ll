; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1556 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1556
  %_a1558 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1556
  %_reference1559 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1558, i32 0, i32 1, i32 1
  %_index1560 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference1559
  %_reference1561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1560, i32 0, i32 1, i32 1
  %_index1562 = load i64, i64* %_reference1561
  ret i64 %_index1562
}

define i64 @g(i64 %x) {
  %_x1519 = alloca i64
  %_arr_decl1550 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %x, i64* %_x1519
  %_raw_array1521 = call i64* @oat_alloc_array(i64 3)
  %_array1522 = bitcast i64* %_raw_array1521 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1523 = call i64* @oat_alloc_array(i64 3)
  %_array1524 = bitcast i64* %_raw_array1523 to { i64, [0 x i64] }*
  %_x1525 = load i64, i64* %_x1519
  %_arr_gep1526 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1524, i32 0, i32 1, i32 0
  store i64 %_x1525, i64* %_arr_gep1526
  %_x1527 = load i64, i64* %_x1519
  %_arr_gep1528 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1524, i32 0, i32 1, i32 1
  store i64 %_x1527, i64* %_arr_gep1528
  %_x1529 = load i64, i64* %_x1519
  %_arr_gep1530 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1524, i32 0, i32 1, i32 2
  store i64 %_x1529, i64* %_arr_gep1530
  %_arr_gep1531 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1522, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1524, { i64, [0 x i64] }** %_arr_gep1531
  %_raw_array1532 = call i64* @oat_alloc_array(i64 3)
  %_array1533 = bitcast i64* %_raw_array1532 to { i64, [0 x i64] }*
  %_x1534 = load i64, i64* %_x1519
  %_arr_gep1535 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 0
  store i64 %_x1534, i64* %_arr_gep1535
  %_x1536 = load i64, i64* %_x1519
  %_arr_gep1537 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 1
  store i64 %_x1536, i64* %_arr_gep1537
  %_x1538 = load i64, i64* %_x1519
  %_arr_gep1539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 2
  store i64 %_x1538, i64* %_arr_gep1539
  %_arr_gep1540 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1522, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1533, { i64, [0 x i64] }** %_arr_gep1540
  %_raw_array1541 = call i64* @oat_alloc_array(i64 3)
  %_array1542 = bitcast i64* %_raw_array1541 to { i64, [0 x i64] }*
  %_x1543 = load i64, i64* %_x1519
  %_arr_gep1544 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1542, i32 0, i32 1, i32 0
  store i64 %_x1543, i64* %_arr_gep1544
  %_x1545 = load i64, i64* %_x1519
  %_arr_gep1546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1542, i32 0, i32 1, i32 1
  store i64 %_x1545, i64* %_arr_gep1546
  %_x1547 = load i64, i64* %_x1519
  %_arr_gep1548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1542, i32 0, i32 1, i32 2
  store i64 %_x1547, i64* %_arr_gep1548
  %_arr_gep1549 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1522, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1542, { i64, [0 x i64] }** %_arr_gep1549
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1522, { i64, [0 x { i64, [0 x i64] }*] }** %_arr_decl1550
  %_arr1551 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr_decl1550
  %_reference1552 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1551, i32 0, i32 1, i32 1
  %_index1553 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference1552
  %_reference1554 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1553, i32 0, i32 1, i32 1
  %_index1555 = load i64, i64* %_reference1554
  ret i64 %_index1555
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1393 = alloca i64
  %_argv1395 = alloca { i64, [0 x i8*] }*
  %_a_decl1417 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr_decl1472 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr0_decl1502 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1393
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1395
  %_raw_array1397 = call i64* @oat_alloc_array(i64 3)
  %_array1398 = bitcast i64* %_raw_array1397 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1399 = call i64* @oat_alloc_array(i64 3)
  %_array1400 = bitcast i64* %_raw_array1399 to { i64, [0 x i64] }*
  %_arr_gep1401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1400, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep1401
  %_arr_gep1402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1400, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep1402
  %_arr_gep1403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1400, i32 0, i32 1, i32 2
  store i64 2, i64* %_arr_gep1403
  %_arr_gep1404 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1398, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1400, { i64, [0 x i64] }** %_arr_gep1404
  %_raw_array1405 = call i64* @oat_alloc_array(i64 3)
  %_array1406 = bitcast i64* %_raw_array1405 to { i64, [0 x i64] }*
  %_arr_gep1407 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1406, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep1407
  %_arr_gep1408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1406, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep1408
  %_arr_gep1409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1406, i32 0, i32 1, i32 2
  store i64 2, i64* %_arr_gep1409
  %_arr_gep1410 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1398, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1406, { i64, [0 x i64] }** %_arr_gep1410
  %_raw_array1411 = call i64* @oat_alloc_array(i64 3)
  %_array1412 = bitcast i64* %_raw_array1411 to { i64, [0 x i64] }*
  %_arr_gep1413 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1412, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep1413
  %_arr_gep1414 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1412, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep1414
  %_arr_gep1415 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1412, i32 0, i32 1, i32 2
  store i64 2, i64* %_arr_gep1415
  %_arr_gep1416 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1398, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1412, { i64, [0 x i64] }** %_arr_gep1416
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1398, { i64, [0 x { i64, [0 x i64] }*] }** %_a_decl1417
  %_raw_array1418 = call i64* @oat_alloc_array(i64 4)
  %_array1419 = bitcast i64* %_raw_array1418 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1420 = call i64* @oat_alloc_array(i64 5)
  %_array1421 = bitcast i64* %_raw_array1420 to { i64, [0 x i64] }*
  %_bop_result1422 = mul i64 0, 0
  %_arr_gep1423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1421, i32 0, i32 1, i32 0
  store i64 %_bop_result1422, i64* %_arr_gep1423
  %_bop_result1424 = mul i64 0, 1
  %_arr_gep1425 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1421, i32 0, i32 1, i32 1
  store i64 %_bop_result1424, i64* %_arr_gep1425
  %_bop_result1426 = mul i64 0, 2
  %_arr_gep1427 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1421, i32 0, i32 1, i32 2
  store i64 %_bop_result1426, i64* %_arr_gep1427
  %_bop_result1428 = mul i64 0, 3
  %_arr_gep1429 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1421, i32 0, i32 1, i32 3
  store i64 %_bop_result1428, i64* %_arr_gep1429
  %_bop_result1430 = mul i64 0, 4
  %_arr_gep1431 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1421, i32 0, i32 1, i32 4
  store i64 %_bop_result1430, i64* %_arr_gep1431
  %_arr_gep1432 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1419, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1421, { i64, [0 x i64] }** %_arr_gep1432
  %_raw_array1433 = call i64* @oat_alloc_array(i64 5)
  %_array1434 = bitcast i64* %_raw_array1433 to { i64, [0 x i64] }*
  %_bop_result1435 = mul i64 1, 0
  %_arr_gep1436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1434, i32 0, i32 1, i32 0
  store i64 %_bop_result1435, i64* %_arr_gep1436
  %_bop_result1437 = mul i64 1, 1
  %_arr_gep1438 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1434, i32 0, i32 1, i32 1
  store i64 %_bop_result1437, i64* %_arr_gep1438
  %_bop_result1439 = mul i64 1, 2
  %_arr_gep1440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1434, i32 0, i32 1, i32 2
  store i64 %_bop_result1439, i64* %_arr_gep1440
  %_bop_result1441 = mul i64 1, 3
  %_arr_gep1442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1434, i32 0, i32 1, i32 3
  store i64 %_bop_result1441, i64* %_arr_gep1442
  %_bop_result1443 = mul i64 1, 4
  %_arr_gep1444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1434, i32 0, i32 1, i32 4
  store i64 %_bop_result1443, i64* %_arr_gep1444
  %_arr_gep1445 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1419, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1434, { i64, [0 x i64] }** %_arr_gep1445
  %_raw_array1446 = call i64* @oat_alloc_array(i64 5)
  %_array1447 = bitcast i64* %_raw_array1446 to { i64, [0 x i64] }*
  %_bop_result1448 = mul i64 2, 0
  %_arr_gep1449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1447, i32 0, i32 1, i32 0
  store i64 %_bop_result1448, i64* %_arr_gep1449
  %_bop_result1450 = mul i64 2, 1
  %_arr_gep1451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1447, i32 0, i32 1, i32 1
  store i64 %_bop_result1450, i64* %_arr_gep1451
  %_bop_result1452 = mul i64 2, 2
  %_arr_gep1453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1447, i32 0, i32 1, i32 2
  store i64 %_bop_result1452, i64* %_arr_gep1453
  %_bop_result1454 = mul i64 2, 3
  %_arr_gep1455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1447, i32 0, i32 1, i32 3
  store i64 %_bop_result1454, i64* %_arr_gep1455
  %_bop_result1456 = mul i64 2, 4
  %_arr_gep1457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1447, i32 0, i32 1, i32 4
  store i64 %_bop_result1456, i64* %_arr_gep1457
  %_arr_gep1458 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1419, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1447, { i64, [0 x i64] }** %_arr_gep1458
  %_raw_array1459 = call i64* @oat_alloc_array(i64 5)
  %_array1460 = bitcast i64* %_raw_array1459 to { i64, [0 x i64] }*
  %_bop_result1461 = mul i64 3, 0
  %_arr_gep1462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1460, i32 0, i32 1, i32 0
  store i64 %_bop_result1461, i64* %_arr_gep1462
  %_bop_result1463 = mul i64 3, 1
  %_arr_gep1464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1460, i32 0, i32 1, i32 1
  store i64 %_bop_result1463, i64* %_arr_gep1464
  %_bop_result1465 = mul i64 3, 2
  %_arr_gep1466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1460, i32 0, i32 1, i32 2
  store i64 %_bop_result1465, i64* %_arr_gep1466
  %_bop_result1467 = mul i64 3, 3
  %_arr_gep1468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1460, i32 0, i32 1, i32 3
  store i64 %_bop_result1467, i64* %_arr_gep1468
  %_bop_result1469 = mul i64 3, 4
  %_arr_gep1470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1460, i32 0, i32 1, i32 4
  store i64 %_bop_result1469, i64* %_arr_gep1470
  %_arr_gep1471 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1419, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1460, { i64, [0 x i64] }** %_arr_gep1471
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1419, { i64, [0 x { i64, [0 x i64] }*] }** %_arr_decl1472
  %_raw_array1473 = call i64* @oat_alloc_array(i64 3)
  %_array1474 = bitcast i64* %_raw_array1473 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1475 = call i64* @oat_alloc_array(i64 3)
  %_array1476 = bitcast i64* %_raw_array1475 to { i64, [0 x i64] }*
  %_bop_result1477 = mul i64 0, 0
  %_arr_gep1478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1476, i32 0, i32 1, i32 0
  store i64 %_bop_result1477, i64* %_arr_gep1478
  %_bop_result1479 = mul i64 0, 1
  %_arr_gep1480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1476, i32 0, i32 1, i32 1
  store i64 %_bop_result1479, i64* %_arr_gep1480
  %_bop_result1481 = mul i64 0, 2
  %_arr_gep1482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1476, i32 0, i32 1, i32 2
  store i64 %_bop_result1481, i64* %_arr_gep1482
  %_arr_gep1483 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1474, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1476, { i64, [0 x i64] }** %_arr_gep1483
  %_raw_array1484 = call i64* @oat_alloc_array(i64 3)
  %_array1485 = bitcast i64* %_raw_array1484 to { i64, [0 x i64] }*
  %_bop_result1486 = mul i64 1, 0
  %_arr_gep1487 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1485, i32 0, i32 1, i32 0
  store i64 %_bop_result1486, i64* %_arr_gep1487
  %_bop_result1488 = mul i64 1, 1
  %_arr_gep1489 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1485, i32 0, i32 1, i32 1
  store i64 %_bop_result1488, i64* %_arr_gep1489
  %_bop_result1490 = mul i64 1, 2
  %_arr_gep1491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1485, i32 0, i32 1, i32 2
  store i64 %_bop_result1490, i64* %_arr_gep1491
  %_arr_gep1492 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1474, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1485, { i64, [0 x i64] }** %_arr_gep1492
  %_raw_array1493 = call i64* @oat_alloc_array(i64 3)
  %_array1494 = bitcast i64* %_raw_array1493 to { i64, [0 x i64] }*
  %_bop_result1495 = mul i64 2, 0
  %_arr_gep1496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1494, i32 0, i32 1, i32 0
  store i64 %_bop_result1495, i64* %_arr_gep1496
  %_bop_result1497 = mul i64 2, 1
  %_arr_gep1498 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1494, i32 0, i32 1, i32 1
  store i64 %_bop_result1497, i64* %_arr_gep1498
  %_bop_result1499 = mul i64 2, 2
  %_arr_gep1500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1494, i32 0, i32 1, i32 2
  store i64 %_bop_result1499, i64* %_arr_gep1500
  %_arr_gep1501 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1474, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1494, { i64, [0 x i64] }** %_arr_gep1501
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1474, { i64, [0 x { i64, [0 x i64] }*] }** %_arr0_decl1502
  %_arr1503 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr_decl1472
  %_reference1504 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1503, i32 0, i32 1, i32 3
  %_index1505 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference1504
  %_reference1506 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1505, i32 0, i32 1, i32 4
  %_index1507 = load i64, i64* %_reference1506
  %_a1508 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a_decl1417
  %_reference1509 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1508, i32 0, i32 1, i32 1
  %_index1510 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference1509
  %_reference1511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1510, i32 0, i32 1, i32 2
  %_index1512 = load i64, i64* %_reference1511
  %_bop_result1513 = add i64 %_index1507, %_index1512
  %_arr01514 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr0_decl1502
  %_f_call1515 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_arr01514)
  %_bop_result1516 = add i64 %_bop_result1513, %_f_call1515
  %_g_call1517 = call i64 @g(i64 4)
  %_bop_result1518 = add i64 %_bop_result1516, %_g_call1517
  ret i64 %_bop_result1518
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
