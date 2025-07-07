; generated from: ./sharedtests/dbernhard/array_indexing.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_arr_id5564 to { i64, [0 x i64] }*)
@_arr_id5564 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_arr_id5563 to { i64, [0 x i64] }*)
@_arr_id5563 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 101, i64 102, i64 103, i64 104 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5548 = alloca i64
  %_argv5550 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc5548
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5550
  %_arr25552 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_get_index_call5553 = call i64 @get_index()
  %_reference5554 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr25552, i32 0, i32 1, i64 %_get_index_call5553
  %_index5555 = load i64, i64* %_reference5554
  %_arr25556 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_arr5557 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_reference5558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5557, i32 0, i32 1, i32 0
  %_index5559 = load i64, i64* %_reference5558
  %_reference5560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr25556, i32 0, i32 1, i64 %_index5559
  %_index5561 = load i64, i64* %_reference5560
  %_bop_result5562 = add i64 %_index5555, %_index5561
  ret i64 %_bop_result5562
}

define i64 @get_index() {
  ret i64 2
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
