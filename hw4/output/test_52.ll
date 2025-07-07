; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1051 = alloca i64
  %_argv1053 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1051
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1053
  %_raw_array1055 = call i64* @oat_alloc_array(i64 2)
  %_array1056 = bitcast i64* %_raw_array1055 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1057 = call i64* @oat_alloc_array(i64 2)
  %_array1058 = bitcast i64* %_raw_array1057 to { i64, [0 x i64] }*
  %_arr_gep1059 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1058, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep1059
  %_arr_gep1060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1058, i32 0, i32 1, i32 1
  store i64 2, i64* %_arr_gep1060
  %_arr_gep1061 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1056, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1058, { i64, [0 x i64] }** %_arr_gep1061
  %_raw_array1062 = call i64* @oat_alloc_array(i64 2)
  %_array1063 = bitcast i64* %_raw_array1062 to { i64, [0 x i64] }*
  %_arr_gep1064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1063, i32 0, i32 1, i32 0
  store i64 3, i64* %_arr_gep1064
  %_arr_gep1065 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1063, i32 0, i32 1, i32 1
  store i64 4, i64* %_arr_gep1065
  %_arr_gep1066 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1056, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1063, { i64, [0 x i64] }** %_arr_gep1066
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1056, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_arr1068 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_reference1069 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1068, i32 0, i32 1, i32 1
  %_index1070 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference1069
  %_reference1071 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1070, i32 0, i32 1, i32 1
  %_index1072 = load i64, i64* %_reference1071
  ret i64 %_index1072
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
