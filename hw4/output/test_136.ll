; generated from: ./sharedtests/dbernhard/null_update_global2.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6517 = alloca i64
  %_argv6519 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6517
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6519
  %_raw_array6521 = call i64* @oat_alloc_array(i64 3)
  %_array6522 = bitcast i64* %_raw_array6521 to { i64, [0 x i64] }*
  %_arr_gep6523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6522, i32 0, i32 1, i32 0
  store i64 10, i64* %_arr_gep6523
  %_arr_gep6524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6522, i32 0, i32 1, i32 1
  store i64 11, i64* %_arr_gep6524
  %_arr_gep6525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6522, i32 0, i32 1, i32 2
  store i64 12, i64* %_arr_gep6525
  store { i64, [0 x i64] }* %_array6522, { i64, [0 x i64] }** @x
  %_x6527 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_reference6528 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x6527, i32 0, i32 1, i32 2
  %_index6529 = load i64, i64* %_reference6528
  ret i64 %_index6529
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
