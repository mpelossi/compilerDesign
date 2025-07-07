; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1142 = alloca i64
  %_argv1144 = alloca { i64, [0 x i8*] }*
  %_arr_decl1150 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1142
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1144
  %_raw_array1146 = call i64* @oat_alloc_array(i64 2)
  %_array1147 = bitcast i64* %_raw_array1146 to { i64, [0 x i64] }*
  %_arr_gep1148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1147, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep1148
  %_arr_gep1149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1147, i32 0, i32 1, i32 1
  store i64 2, i64* %_arr_gep1149
  store { i64, [0 x i64] }* %_array1147, { i64, [0 x i64] }** %_arr_decl1150
  %_arr1151 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl1150
  %_reference1152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1151, i32 0, i32 1, i32 1
  %_index1153 = load i64, i64* %_reference1152
  ret i64 %_index1153
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
