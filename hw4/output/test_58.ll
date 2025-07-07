; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1291 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1291
  %_arr1293 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1291
  %_reference1294 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1293, i32 0, i32 1, i32 3
  %_index1295 = load i64, i64* %_reference1294
  ret i64 %_index1295
}

define { i64, [0 x i64] }* @g() {
  %_arr_decl1289 = alloca { i64, [0 x i64] }*
  %_raw_array1283 = call i64* @oat_alloc_array(i64 4)
  %_array1284 = bitcast i64* %_raw_array1283 to { i64, [0 x i64] }*
  %_arr_gep1285 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1284, i32 0, i32 1, i32 0
  store i64 99, i64* %_arr_gep1285
  %_arr_gep1286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1284, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep1286
  %_arr_gep1287 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1284, i32 0, i32 1, i32 2
  store i64 99, i64* %_arr_gep1287
  %_arr_gep1288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1284, i32 0, i32 1, i32 3
  store i64 99, i64* %_arr_gep1288
  store { i64, [0 x i64] }* %_array1284, { i64, [0 x i64] }** %_arr_decl1289
  %_arr1290 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl1289
  ret { i64, [0 x i64] }* %_arr1290
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1206 = alloca i64
  %_argv1208 = alloca { i64, [0 x i8*] }*
  %_arr1_decl1215 = alloca { i64, [0 x i64] }*
  %_arr2_decl1236 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c_decl1237 = alloca i64
  %_arr4_decl1239 = alloca { i64, [0 x i64] }*
  %_arr3_decl1246 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1206
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1208
  %_raw_array1210 = call i64* @oat_alloc_array(i64 3)
  %_array1211 = bitcast i64* %_raw_array1210 to { i64, [0 x i64] }*
  %_arr_gep1212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1211, i32 0, i32 1, i32 0
  store i64 99, i64* %_arr_gep1212
  %_arr_gep1213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1211, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep1213
  %_arr_gep1214 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1211, i32 0, i32 1, i32 2
  store i64 99, i64* %_arr_gep1214
  store { i64, [0 x i64] }* %_array1211, { i64, [0 x i64] }** %_arr1_decl1215
  %_raw_array1216 = call i64* @oat_alloc_array(i64 3)
  %_array1217 = bitcast i64* %_raw_array1216 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1218 = call i64* @oat_alloc_array(i64 3)
  %_array1219 = bitcast i64* %_raw_array1218 to { i64, [0 x i64] }*
  %_arr_gep1220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1219, i32 0, i32 1, i32 0
  store i64 99, i64* %_arr_gep1220
  %_arr_gep1221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1219, i32 0, i32 1, i32 1
  store i64 99, i64* %_arr_gep1221
  %_arr_gep1222 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1219, i32 0, i32 1, i32 2
  store i64 99, i64* %_arr_gep1222
  %_arr_gep1223 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1217, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1219, { i64, [0 x i64] }** %_arr_gep1223
  %_raw_array1224 = call i64* @oat_alloc_array(i64 3)
  %_array1225 = bitcast i64* %_raw_array1224 to { i64, [0 x i64] }*
  %_arr_gep1226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1225, i32 0, i32 1, i32 0
  store i64 99, i64* %_arr_gep1226
  %_arr_gep1227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1225, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep1227
  %_arr_gep1228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1225, i32 0, i32 1, i32 2
  store i64 99, i64* %_arr_gep1228
  %_arr_gep1229 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1217, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1225, { i64, [0 x i64] }** %_arr_gep1229
  %_raw_array1230 = call i64* @oat_alloc_array(i64 3)
  %_array1231 = bitcast i64* %_raw_array1230 to { i64, [0 x i64] }*
  %_arr_gep1232 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1231, i32 0, i32 1, i32 0
  store i64 99, i64* %_arr_gep1232
  %_arr_gep1233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1231, i32 0, i32 1, i32 1
  store i64 99, i64* %_arr_gep1233
  %_arr_gep1234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1231, i32 0, i32 1, i32 2
  store i64 99, i64* %_arr_gep1234
  %_arr_gep1235 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1217, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1231, { i64, [0 x i64] }** %_arr_gep1235
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1217, { i64, [0 x { i64, [0 x i64] }*] }** %_arr2_decl1236
  store i64 1, i64* %_c_decl1237
  %_g_call1238 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_g_call1238, { i64, [0 x i64] }** %_arr4_decl1239
  %_raw_array1240 = call i64* @oat_alloc_array(i64 4)
  %_array1241 = bitcast i64* %_raw_array1240 to { i64, [0 x i64] }*
  %_arr_gep1242 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1241, i32 0, i32 1, i32 0
  store i64 99, i64* %_arr_gep1242
  %_arr_gep1243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1241, i32 0, i32 1, i32 1
  store i64 99, i64* %_arr_gep1243
  %_arr_gep1244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1241, i32 0, i32 1, i32 2
  store i64 99, i64* %_arr_gep1244
  %_arr_gep1245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1241, i32 0, i32 1, i32 3
  store i64 1, i64* %_arr_gep1245
  store { i64, [0 x i64] }* %_array1241, { i64, [0 x i64] }** %_arr3_decl1246
  %_c1247 = load i64, i64* %_c_decl1237
  %_i1248 = load i64, i64* @i
  %_bop_result1249 = add i64 %_c1247, %_i1248
  store i64 %_bop_result1249, i64* %_c_decl1237
  %_c1251 = load i64, i64* %_c_decl1237
  %_arr11252 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1_decl1215
  %_reference1253 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr11252, i32 0, i32 1, i32 1
  %_index1254 = load i64, i64* %_reference1253
  %_bop_result1255 = add i64 %_c1251, %_index1254
  store i64 %_bop_result1255, i64* %_c_decl1237
  %_c1257 = load i64, i64* %_c_decl1237
  %_arr21258 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr2_decl1236
  %_reference1259 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr21258, i32 0, i32 1, i32 1
  %_index1260 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference1259
  %_reference1261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1260, i32 0, i32 1, i32 1
  %_index1262 = load i64, i64* %_reference1261
  %_bop_result1263 = add i64 %_c1257, %_index1262
  store i64 %_bop_result1263, i64* %_c_decl1237
  %_c1265 = load i64, i64* %_c_decl1237
  %_arr31266 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3_decl1246
  %_reference1267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr31266, i32 0, i32 1, i32 3
  %_index1268 = load i64, i64* %_reference1267
  %_bop_result1269 = add i64 %_c1265, %_index1268
  store i64 %_bop_result1269, i64* %_c_decl1237
  %_c1271 = load i64, i64* %_c_decl1237
  %_arr31272 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3_decl1246
  %_f_call1273 = call i64 @f({ i64, [0 x i64] }* %_arr31272)
  %_bop_result1274 = add i64 %_c1271, %_f_call1273
  store i64 %_bop_result1274, i64* %_c_decl1237
  %_c1276 = load i64, i64* %_c_decl1237
  %_arr41277 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4_decl1239
  %_reference1278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr41277, i32 0, i32 1, i32 1
  %_index1279 = load i64, i64* %_reference1278
  %_bop_result1280 = add i64 %_c1276, %_index1279
  store i64 %_bop_result1280, i64* %_c_decl1237
  %_c1282 = load i64, i64* %_c_decl1237
  ret i64 %_c1282
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
