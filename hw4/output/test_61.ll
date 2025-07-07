; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1563 = alloca i64
  %_argv1565 = alloca { i64, [0 x i8*] }*
  %_x_decl1567 = alloca i64
  %_a_decl1615 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b_decl1617 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1563
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1565
  store i64 10, i64* %_x_decl1567
  %_raw_array1568 = call i64* @oat_alloc_array(i64 3)
  %_array1569 = bitcast i64* %_raw_array1568 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1570 = call i64* @oat_alloc_array(i64 3)
  %_array1571 = bitcast i64* %_raw_array1570 to { i64, [0 x i64] }*
  %_x1572 = load i64, i64* %_x_decl1567
  %_bop_result1573 = add i64 %_x1572, 0
  %_bop_result1574 = add i64 %_bop_result1573, 0
  %_arr_gep1575 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1571, i32 0, i32 1, i32 0
  store i64 %_bop_result1574, i64* %_arr_gep1575
  %_x1576 = load i64, i64* %_x_decl1567
  %_bop_result1577 = add i64 %_x1576, 0
  %_bop_result1578 = add i64 %_bop_result1577, 1
  %_arr_gep1579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1571, i32 0, i32 1, i32 1
  store i64 %_bop_result1578, i64* %_arr_gep1579
  %_x1580 = load i64, i64* %_x_decl1567
  %_bop_result1581 = add i64 %_x1580, 0
  %_bop_result1582 = add i64 %_bop_result1581, 2
  %_arr_gep1583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1571, i32 0, i32 1, i32 2
  store i64 %_bop_result1582, i64* %_arr_gep1583
  %_arr_gep1584 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1569, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1571, { i64, [0 x i64] }** %_arr_gep1584
  %_raw_array1585 = call i64* @oat_alloc_array(i64 3)
  %_array1586 = bitcast i64* %_raw_array1585 to { i64, [0 x i64] }*
  %_x1587 = load i64, i64* %_x_decl1567
  %_bop_result1588 = add i64 %_x1587, 1
  %_bop_result1589 = add i64 %_bop_result1588, 0
  %_arr_gep1590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1586, i32 0, i32 1, i32 0
  store i64 %_bop_result1589, i64* %_arr_gep1590
  %_x1591 = load i64, i64* %_x_decl1567
  %_bop_result1592 = add i64 %_x1591, 1
  %_bop_result1593 = add i64 %_bop_result1592, 1
  %_arr_gep1594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1586, i32 0, i32 1, i32 1
  store i64 %_bop_result1593, i64* %_arr_gep1594
  %_x1595 = load i64, i64* %_x_decl1567
  %_bop_result1596 = add i64 %_x1595, 1
  %_bop_result1597 = add i64 %_bop_result1596, 2
  %_arr_gep1598 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1586, i32 0, i32 1, i32 2
  store i64 %_bop_result1597, i64* %_arr_gep1598
  %_arr_gep1599 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1569, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1586, { i64, [0 x i64] }** %_arr_gep1599
  %_raw_array1600 = call i64* @oat_alloc_array(i64 3)
  %_array1601 = bitcast i64* %_raw_array1600 to { i64, [0 x i64] }*
  %_x1602 = load i64, i64* %_x_decl1567
  %_bop_result1603 = add i64 %_x1602, 2
  %_bop_result1604 = add i64 %_bop_result1603, 0
  %_arr_gep1605 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1601, i32 0, i32 1, i32 0
  store i64 %_bop_result1604, i64* %_arr_gep1605
  %_x1606 = load i64, i64* %_x_decl1567
  %_bop_result1607 = add i64 %_x1606, 2
  %_bop_result1608 = add i64 %_bop_result1607, 1
  %_arr_gep1609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1601, i32 0, i32 1, i32 1
  store i64 %_bop_result1608, i64* %_arr_gep1609
  %_x1610 = load i64, i64* %_x_decl1567
  %_bop_result1611 = add i64 %_x1610, 2
  %_bop_result1612 = add i64 %_bop_result1611, 2
  %_arr_gep1613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1601, i32 0, i32 1, i32 2
  store i64 %_bop_result1612, i64* %_arr_gep1613
  %_arr_gep1614 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1569, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1601, { i64, [0 x i64] }** %_arr_gep1614
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1569, { i64, [0 x { i64, [0 x i64] }*] }** %_a_decl1615
  %_a1616 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a_decl1615
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1616, { i64, [0 x { i64, [0 x i64] }*] }** %_b_decl1617
  %_b1618 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b_decl1617
  %_reference1619 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b1618, i32 0, i32 1, i32 2
  %_index1620 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference1619
  %_reference1621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1620, i32 0, i32 1, i32 1
  %_index1622 = load i64, i64* %_reference1621
  ret i64 %_index1622
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
