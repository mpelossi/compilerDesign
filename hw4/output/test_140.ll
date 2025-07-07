; generated from: ./sharedtests/dbernhard/update_global.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [0 x i64] }* @_arr_id6580 to { i64, [0 x i64] }*)
@_arr_id6580 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6567 = alloca i64
  %_argv6569 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6567
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6569
  %_raw_array6571 = call i64* @oat_alloc_array(i64 3)
  %_array6572 = bitcast i64* %_raw_array6571 to { i64, [0 x i64] }*
  %_arr_gep6573 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6572, i32 0, i32 1, i32 0
  store i64 10, i64* %_arr_gep6573
  %_arr_gep6574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6572, i32 0, i32 1, i32 1
  store i64 11, i64* %_arr_gep6574
  %_arr_gep6575 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6572, i32 0, i32 1, i32 2
  store i64 12, i64* %_arr_gep6575
  store { i64, [0 x i64] }* %_array6572, { i64, [0 x i64] }** @x
  %_x6577 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_reference6578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x6577, i32 0, i32 1, i32 2
  %_index6579 = load i64, i64* %_reference6578
  ret i64 %_index6579
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
