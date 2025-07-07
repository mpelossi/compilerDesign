; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc668 = alloca i64
  %_argv670 = alloca { i64, [0 x i8*] }*
  %_a_decl684 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc668
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv670
  %_raw_array672 = call i64* @oat_alloc_array(i64 2)
  %_array673 = bitcast i64* %_raw_array672 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array674 = call i64* @oat_alloc_array(i64 2)
  %_array675 = bitcast i64* %_raw_array674 to { i64, [0 x i64] }*
  %_arr_gep676 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array675, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep676
  %_arr_gep677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array675, i32 0, i32 1, i32 1
  store i64 2, i64* %_arr_gep677
  %_arr_gep678 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array673, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array675, { i64, [0 x i64] }** %_arr_gep678
  %_raw_array679 = call i64* @oat_alloc_array(i64 2)
  %_array680 = bitcast i64* %_raw_array679 to { i64, [0 x i64] }*
  %_arr_gep681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array680, i32 0, i32 1, i32 0
  store i64 3, i64* %_arr_gep681
  %_arr_gep682 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array680, i32 0, i32 1, i32 1
  store i64 4, i64* %_arr_gep682
  %_arr_gep683 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array673, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array680, { i64, [0 x i64] }** %_arr_gep683
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array673, { i64, [0 x { i64, [0 x i64] }*] }** %_a_decl684
  %_a685 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a_decl684
  %_reference686 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a685, i32 0, i32 1, i32 0
  %_index687 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference686
  %_reference688 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index687, i32 0, i32 1, i32 1
  %_index689 = load i64, i64* %_reference688
  ret i64 %_index689
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
