; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1095 = alloca i64
  %_argv1097 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1095
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1097
  %_raw_array1099 = call i64* @oat_alloc_array(i64 3)
  %_array1100 = bitcast i64* %_raw_array1099 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_raw_array1101 = call i64* @oat_alloc_array(i64 2)
  %_array1102 = bitcast i64* %_raw_array1101 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1103 = call i64* @oat_alloc_array(i64 2)
  %_array1104 = bitcast i64* %_raw_array1103 to { i64, [0 x i64] }*
  %_arr_gep1105 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1104, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep1105
  %_arr_gep1106 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1104, i32 0, i32 1, i32 1
  store i64 2, i64* %_arr_gep1106
  %_arr_gep1107 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1102, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1104, { i64, [0 x i64] }** %_arr_gep1107
  %_raw_array1108 = call i64* @oat_alloc_array(i64 2)
  %_array1109 = bitcast i64* %_raw_array1108 to { i64, [0 x i64] }*
  %_arr_gep1110 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1109, i32 0, i32 1, i32 0
  store i64 3, i64* %_arr_gep1110
  %_arr_gep1111 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1109, i32 0, i32 1, i32 1
  store i64 4, i64* %_arr_gep1111
  %_arr_gep1112 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1102, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1109, { i64, [0 x i64] }** %_arr_gep1112
  %_arr_gep1113 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1100, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1102, { i64, [0 x { i64, [0 x i64] }*] }** %_arr_gep1113
  %_raw_array1114 = call i64* @oat_alloc_array(i64 1)
  %_array1115 = bitcast i64* %_raw_array1114 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1116 = call i64* @oat_alloc_array(i64 1)
  %_array1117 = bitcast i64* %_raw_array1116 to { i64, [0 x i64] }*
  %_arr_gep1118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1117, i32 0, i32 1, i32 0
  store i64 5, i64* %_arr_gep1118
  %_arr_gep1119 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1115, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1117, { i64, [0 x i64] }** %_arr_gep1119
  %_arr_gep1120 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1100, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1115, { i64, [0 x { i64, [0 x i64] }*] }** %_arr_gep1120
  %_raw_array1121 = call i64* @oat_alloc_array(i64 2)
  %_array1122 = bitcast i64* %_raw_array1121 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1123 = call i64* @oat_alloc_array(i64 2)
  %_array1124 = bitcast i64* %_raw_array1123 to { i64, [0 x i64] }*
  %_arr_gep1125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1124, i32 0, i32 1, i32 0
  store i64 10, i64* %_arr_gep1125
  %_arr_gep1126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1124, i32 0, i32 1, i32 1
  store i64 20, i64* %_arr_gep1126
  %_arr_gep1127 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1122, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1124, { i64, [0 x i64] }** %_arr_gep1127
  %_raw_array1128 = call i64* @oat_alloc_array(i64 2)
  %_array1129 = bitcast i64* %_raw_array1128 to { i64, [0 x i64] }*
  %_arr_gep1130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1129, i32 0, i32 1, i32 0
  store i64 30, i64* %_arr_gep1130
  %_arr_gep1131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1129, i32 0, i32 1, i32 1
  store i64 40, i64* %_arr_gep1131
  %_arr_gep1132 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1122, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1129, { i64, [0 x i64] }** %_arr_gep1132
  %_arr_gep1133 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1100, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1122, { i64, [0 x { i64, [0 x i64] }*] }** %_arr_gep1133
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1100, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_arr1135 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_reference1136 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arr1135, i32 0, i32 1, i32 2
  %_index1137 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_reference1136
  %_reference1138 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_index1137, i32 0, i32 1, i32 0
  %_index1139 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference1138
  %_reference1140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1139, i32 0, i32 1, i32 1
  %_index1141 = load i64, i64* %_reference1140
  ret i64 %_index1141
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
