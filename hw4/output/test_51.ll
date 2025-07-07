; generated from: oatprograms/run4.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1039 = alloca i64
  %_argv1041 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1039
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1041
  %_raw_array1043 = call i64* @oat_alloc_array(i64 2)
  %_array1044 = bitcast i64* %_raw_array1043 to { i64, [0 x i64] }*
  %_arr_gep1045 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1044, i32 0, i32 1, i32 0
  store i64 17, i64* %_arr_gep1045
  %_arr_gep1046 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1044, i32 0, i32 1, i32 1
  store i64 42, i64* %_arr_gep1046
  store { i64, [0 x i64] }* %_array1044, { i64, [0 x i64] }** @arr
  %_arr1048 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_reference1049 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1048, i32 0, i32 1, i32 1
  %_index1050 = load i64, i64* %_reference1049
  ret i64 %_index1050
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
