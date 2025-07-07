; generated from: oatprograms/run3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1027 = alloca i64
  %_argv1029 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1027
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1029
  %_raw_array1031 = call i64* @oat_alloc_array(i64 2)
  %_array1032 = bitcast i64* %_raw_array1031 to { i64, [0 x i64] }*
  %_arr_gep1033 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1032, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep1033
  %_arr_gep1034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1032, i32 0, i32 1, i32 1
  store i64 2, i64* %_arr_gep1034
  store { i64, [0 x i64] }* %_array1032, { i64, [0 x i64] }** @arr
  %_arr1036 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_reference1037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1036, i32 0, i32 1, i32 1
  %_index1038 = load i64, i64* %_reference1037
  ret i64 %_index1038
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
