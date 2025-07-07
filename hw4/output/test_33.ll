; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc521 = alloca i64
  %_argv523 = alloca { i64, [0 x i8*] }*
  %_b_decl529 = alloca { i64, [0 x i1] }*
  %_i_decl530 = alloca i64
  store i64 %argc, i64* %_argc521
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv523
  %_raw_array525 = call i64* @oat_alloc_array(i64 2)
  %_array526 = bitcast i64* %_raw_array525 to { i64, [0 x i1] }*
  %_arr_gep527 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array526, i32 0, i32 1, i32 0
  store i1 1, i1* %_arr_gep527
  %_arr_gep528 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array526, i32 0, i32 1, i32 1
  store i1 0, i1* %_arr_gep528
  store { i64, [0 x i1] }* %_array526, { i64, [0 x i1] }** %_b_decl529
  store i64 0, i64* %_i_decl530
  br label %_if535
_if535:
  %_b531 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b_decl529
  %_reference532 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_b531, i32 0, i32 1, i32 0
  %_index533 = load i1, i1* %_reference532
  br i1 %_index533, label %_then536, label %_end_if538
_then536:
  store i64 1, i64* %_i_decl530
  br label %_end_if538
_end_if538:
  %_i539 = load i64, i64* %_i_decl530
  ret i64 %_i539
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
