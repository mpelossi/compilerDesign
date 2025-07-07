; generated from: ./sharedtests/dbernhard/array_indexing2.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_arr_id5588 to { i64, [0 x i64] }*)
@_arr_id5588 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_arr_id5587 to { i64, [0 x i64] }*)
@_arr_id5587 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 101, i64 102, i64 103, i64 104 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5565 = alloca i64
  %_argv5567 = alloca { i64, [0 x i8*] }*
  %_darr_decl5575 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc5565
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5567
  %_raw_array5569 = call i64* @oat_alloc_array(i64 2)
  %_array5570 = bitcast i64* %_raw_array5569 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr25571 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_arr_gep5572 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5570, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_arr25571, { i64, [0 x i64] }** %_arr_gep5572
  %_arr5573 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_arr_gep5574 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5570, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_arr5573, { i64, [0 x i64] }** %_arr_gep5574
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5570, { i64, [0 x { i64, [0 x i64] }*] }** %_darr_decl5575
  %_darr5576 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_darr_decl5575
  %_reference5577 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_darr5576, i32 0, i32 1, i32 0
  %_index5578 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference5577
  %_reference5579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5578, i32 0, i32 1, i32 1
  %_index5580 = load i64, i64* %_reference5579
  %_darr5581 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_darr_decl5575
  %_reference5582 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_darr5581, i32 0, i32 1, i32 1
  %_index5583 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference5582
  %_reference5584 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5583, i32 0, i32 1, i32 2
  %_index5585 = load i64, i64* %_reference5584
  %_bop_result5586 = add i64 %_index5580, %_index5585
  ret i64 %_bop_result5586
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
