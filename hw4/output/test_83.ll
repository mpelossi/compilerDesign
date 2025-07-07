; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2546 = alloca i64
  %_argv2548 = alloca { i64, [0 x i8*] }*
  %_a_decl2562 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2546
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2548
  %_raw_array2550 = call i64* @oat_alloc_array(i64 10)
  %_array2551 = bitcast i64* %_raw_array2550 to { i64, [0 x i64] }*
  %_arr_gep2552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2551, i32 0, i32 1, i32 0
  store i64 126, i64* %_arr_gep2552
  %_arr_gep2553 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2551, i32 0, i32 1, i32 1
  store i64 125, i64* %_arr_gep2553
  %_arr_gep2554 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2551, i32 0, i32 1, i32 2
  store i64 124, i64* %_arr_gep2554
  %_arr_gep2555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2551, i32 0, i32 1, i32 3
  store i64 123, i64* %_arr_gep2555
  %_arr_gep2556 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2551, i32 0, i32 1, i32 4
  store i64 122, i64* %_arr_gep2556
  %_arr_gep2557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2551, i32 0, i32 1, i32 5
  store i64 121, i64* %_arr_gep2557
  %_arr_gep2558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2551, i32 0, i32 1, i32 6
  store i64 120, i64* %_arr_gep2558
  %_arr_gep2559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2551, i32 0, i32 1, i32 7
  store i64 119, i64* %_arr_gep2559
  %_arr_gep2560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2551, i32 0, i32 1, i32 8
  store i64 118, i64* %_arr_gep2560
  %_arr_gep2561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2551, i32 0, i32 1, i32 9
  store i64 117, i64* %_arr_gep2561
  store { i64, [0 x i64] }* %_array2551, { i64, [0 x i64] }** %_a_decl2562
  %_a2563 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_decl2562
  %_string_of_array_call2564 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2563)
  call void @print_string(i8* %_string_of_array_call2564)
  ret i64 0
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
