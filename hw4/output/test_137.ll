; generated from: ./sharedtests/dbernhard/ret_null.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @call_empty() {
  ret { i64, [0 x i64] }* null
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6530 = alloca i64
  %_argv6532 = alloca { i64, [0 x i8*] }*
  %_arr_decl6535 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc6530
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6532
  %_call_empty_call6534 = call { i64, [0 x i64] }* @call_empty()
  store { i64, [0 x i64] }* %_call_empty_call6534, { i64, [0 x i64] }** %_arr_decl6535
  %_raw_array6536 = call i64* @oat_alloc_array(i64 10)
  %_array6537 = bitcast i64* %_raw_array6536 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6537, { i64, [0 x i64] }** %_arr_decl6535
  %_arr6539 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl6535
  %_gep6540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6539, i32 0, i32 1, i32 1
  store i64 5, i64* %_gep6540
  %_arr6542 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl6535
  %_reference6543 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6542, i32 0, i32 1, i32 1
  %_index6544 = load i64, i64* %_reference6543
  ret i64 %_index6544
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
