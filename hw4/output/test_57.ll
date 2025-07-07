; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr1203 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1203
  %_arr1205 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1203
  ret { i64, [0 x i64] }* %_arr1205
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1176 = alloca i64
  %_argv1178 = alloca { i64, [0 x i8*] }*
  %_garr_decl1194 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr_decl1199 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1176
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1178
  %_raw_array1180 = call i64* @oat_alloc_array(i64 2)
  %_array1181 = bitcast i64* %_raw_array1180 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1182 = call i64* @oat_alloc_array(i64 3)
  %_array1183 = bitcast i64* %_raw_array1182 to { i64, [0 x i64] }*
  %_arr_gep1184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1183, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep1184
  %_arr_gep1185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1183, i32 0, i32 1, i32 1
  store i64 2, i64* %_arr_gep1185
  %_arr_gep1186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1183, i32 0, i32 1, i32 2
  store i64 3, i64* %_arr_gep1186
  %_arr_gep1187 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1181, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1183, { i64, [0 x i64] }** %_arr_gep1187
  %_raw_array1188 = call i64* @oat_alloc_array(i64 3)
  %_array1189 = bitcast i64* %_raw_array1188 to { i64, [0 x i64] }*
  %_arr_gep1190 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1189, i32 0, i32 1, i32 0
  store i64 4, i64* %_arr_gep1190
  %_arr_gep1191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1189, i32 0, i32 1, i32 1
  store i64 5, i64* %_arr_gep1191
  %_arr_gep1192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1189, i32 0, i32 1, i32 2
  store i64 6, i64* %_arr_gep1192
  %_arr_gep1193 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1181, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1189, { i64, [0 x i64] }** %_arr_gep1193
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1181, { i64, [0 x { i64, [0 x i64] }*] }** %_garr_decl1194
  %_garr1195 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr_decl1194
  %_reference1196 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1195, i32 0, i32 1, i32 1
  %_index1197 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference1196
  %_f_call1198 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_index1197)
  store { i64, [0 x i64] }* %_f_call1198, { i64, [0 x i64] }** %_arr_decl1199
  %_arr1200 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl1199
  %_reference1201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1200, i32 0, i32 1, i32 1
  %_index1202 = load i64, i64* %_reference1201
  ret i64 %_index1202
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
