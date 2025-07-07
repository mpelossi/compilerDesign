; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1154 = alloca i64
  %_argv1156 = alloca { i64, [0 x i8*] }*
  %_arr_decl1170 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1154
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1156
  %_raw_array1158 = call i64* @oat_alloc_array(i64 2)
  %_array1159 = bitcast i64* %_raw_array1158 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1160 = call i64* @oat_alloc_array(i64 2)
  %_array1161 = bitcast i64* %_raw_array1160 to { i64, [0 x i64] }*
  %_arr_gep1162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1161, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep1162
  %_arr_gep1163 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1161, i32 0, i32 1, i32 1
  store i64 2, i64* %_arr_gep1163
  %_arr_gep1164 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1159, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1161, { i64, [0 x i64] }** %_arr_gep1164
  %_raw_array1165 = call i64* @oat_alloc_array(i64 2)
  %_array1166 = bitcast i64* %_raw_array1165 to { i64, [0 x i64] }*
  %_arr_gep1167 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1166, i32 0, i32 1, i32 0
  store i64 3, i64* %_arr_gep1167
  %_arr_gep1168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1166, i32 0, i32 1, i32 1
  store i64 4, i64* %_arr_gep1168
  %_arr_gep1169 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1159, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1166, { i64, [0 x i64] }** %_arr_gep1169
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1159, { i64, [0 x { i64, [0 x i64] }*] }** %_arr_decl1170
  %_arr1171 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr_decl1170
  %_reference1172 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1171, i32 0, i32 1, i32 1
  %_index1173 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference1172
  %_reference1174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1173, i32 0, i32 1, i32 1
  %_index1175 = load i64, i64* %_reference1174
  ret i64 %_index1175
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
