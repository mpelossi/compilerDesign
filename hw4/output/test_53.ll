; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1073 = alloca i64
  %_argv1075 = alloca { i64, [0 x i8*] }*
  %_arr_decl1089 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1073
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1075
  %_raw_array1077 = call i64* @oat_alloc_array(i64 2)
  %_array1078 = bitcast i64* %_raw_array1077 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1079 = call i64* @oat_alloc_array(i64 2)
  %_array1080 = bitcast i64* %_raw_array1079 to { i64, [0 x i64] }*
  %_arr_gep1081 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1080, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep1081
  %_arr_gep1082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1080, i32 0, i32 1, i32 1
  store i64 2, i64* %_arr_gep1082
  %_arr_gep1083 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1078, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1080, { i64, [0 x i64] }** %_arr_gep1083
  %_raw_array1084 = call i64* @oat_alloc_array(i64 2)
  %_array1085 = bitcast i64* %_raw_array1084 to { i64, [0 x i64] }*
  %_arr_gep1086 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1085, i32 0, i32 1, i32 0
  store i64 3, i64* %_arr_gep1086
  %_arr_gep1087 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1085, i32 0, i32 1, i32 1
  store i64 4, i64* %_arr_gep1087
  %_arr_gep1088 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1078, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1085, { i64, [0 x i64] }** %_arr_gep1088
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1078, { i64, [0 x { i64, [0 x i64] }*] }** %_arr_decl1089
  %_arr1090 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr_decl1089
  %_reference1091 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1090, i32 0, i32 1, i32 0
  %_index1092 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference1091
  %_reference1093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1092, i32 0, i32 1, i32 0
  %_index1094 = load i64, i64* %_reference1093
  ret i64 %_index1094
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
