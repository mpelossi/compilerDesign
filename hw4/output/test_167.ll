; generated from: ./sharedtests/nicdard/arglobal3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [3 x { i64, [0 x i64] }*] }* @_arr_id6962 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_arr_id6962 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [2 x i64] }* @_arr_id6959 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [2 x i64] }* @_arr_id6960 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [2 x i64] }* @_arr_id6961 to { i64, [0 x i64] }*) ] }
@_arr_id6959 = global { i64, [2 x i64] } { i64 2, [2 x i64] [ i64 1, i64 4 ] }
@_arr_id6960 = global { i64, [2 x i64] } { i64 2, [2 x i64] [ i64 2, i64 5 ] }
@_arr_id6961 = global { i64, [2 x i64] } { i64 2, [2 x i64] [ i64 3, i64 6 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6931 = alloca i64
  %_argv6933 = alloca { i64, [0 x i8*] }*
  %_x_decl6946 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc6931
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6933
  %_raw_array6935 = call i64* @oat_alloc_array(i64 3)
  %_array6936 = bitcast i64* %_raw_array6935 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array6937 = call i64* @oat_alloc_array(i64 2)
  %_array6938 = bitcast i64* %_raw_array6937 to { i64, [0 x i64] }*
  %_arr_gep6939 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6936, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array6938, { i64, [0 x i64] }** %_arr_gep6939
  %_raw_array6940 = call i64* @oat_alloc_array(i64 2)
  %_array6941 = bitcast i64* %_raw_array6940 to { i64, [0 x i64] }*
  %_arr_gep6942 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6936, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array6941, { i64, [0 x i64] }** %_arr_gep6942
  %_raw_array6943 = call i64* @oat_alloc_array(i64 2)
  %_array6944 = bitcast i64* %_raw_array6943 to { i64, [0 x i64] }*
  %_arr_gep6945 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6936, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array6944, { i64, [0 x i64] }** %_arr_gep6945
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array6936, { i64, [0 x { i64, [0 x i64] }*] }** %_x_decl6946
  %_x6947 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_x_decl6946
  store { i64, [0 x { i64, [0 x i64] }*] }* %_x6947, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_x6949 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_x_decl6946
  %_reference6950 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_x6949, i32 0, i32 1, i32 2
  %_index6951 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference6950
  %_gep6952 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6951, i32 0, i32 1, i32 2
  store i64 10, i64* %_gep6952
  %_arr6954 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_reference6955 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr6954, i32 0, i32 1, i32 2
  %_index6956 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference6955
  %_reference6957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6956, i32 0, i32 1, i32 2
  %_index6958 = load i64, i64* %_reference6957
  ret i64 %_index6958
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
