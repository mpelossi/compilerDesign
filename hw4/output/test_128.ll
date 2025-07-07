; generated from: ./sharedtests/dbernhard/advanced_add.oat
target triple = "x86_64-unknown-linux"
@mat_1 = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [3 x { i64, [0 x i64] }*] }* @_arr_id5895 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_arr_id5895 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id5892 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id5893 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id5894 to { i64, [0 x i64] }*) ] }
@_arr_id5892 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 4, i64 3 ] }
@_arr_id5893 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 9, i64 1, i64 2 ] }
@_arr_id5894 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 2, i64 0, i64 1 ] }

define { i64, [0 x i64] }* @get() {
  %_mat_15889 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @mat_1
  %_reference5890 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_mat_15889, i32 0, i32 1, i32 0
  %_index5891 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference5890
  ret { i64, [0 x i64] }* %_index5891
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc5868 = alloca i64
  %_args5870 = alloca { i64, [0 x i8*] }*
  %_x_decl5887 = alloca i64
  store i64 %argc, i64* %_argc5868
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args5870
  %_mat_15872 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @mat_1
  %_reference5873 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_mat_15872, i32 0, i32 1, i32 1
  %_index5874 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference5873
  %_reference5875 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5874, i32 0, i32 1, i32 1
  %_index5876 = load i64, i64* %_reference5875
  %_mat_15877 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @mat_1
  %_reference5878 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_mat_15877, i32 0, i32 1, i32 2
  %_index5879 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference5878
  %_reference5880 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5879, i32 0, i32 1, i32 0
  %_index5881 = load i64, i64* %_reference5880
  %_bop_result5882 = add i64 %_index5876, %_index5881
  %_get_call5883 = call { i64, [0 x i64] }* @get()
  %_reference5884 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_get_call5883, i32 0, i32 1, i32 0
  %_index5885 = load i64, i64* %_reference5884
  %_bop_result5886 = add i64 %_bop_result5882, %_index5885
  store i64 %_bop_result5886, i64* %_x_decl5887
  %_x5888 = load i64, i64* %_x_decl5887
  ret i64 %_x5888
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
