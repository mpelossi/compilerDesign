; generated from: ./sharedtests/nicdard/arlocal1.oat
target triple = "x86_64-unknown-linux"
@v = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [2 x { i64, [0 x i64] }*] }* @_arr_id6994 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_arr_id6994 = global { i64, [2 x { i64, [0 x i64] }*] } { i64 2, [2 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id6992 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id6993 to { i64, [0 x i64] }*) ] }
@_arr_id6992 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_arr_id6993 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 15, i64 16, i64 17 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6973 = alloca i64
  %_args6975 = alloca { i64, [0 x i8*] }*
  %_v_decl6991 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc6973
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6975
  %_raw_array6977 = call i64* @oat_alloc_array(i64 2)
  %_array6978 = bitcast i64* %_raw_array6977 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array6979 = call i64* @oat_alloc_array(i64 3)
  %_array6980 = bitcast i64* %_raw_array6979 to { i64, [0 x i64] }*
  %_arr_gep6981 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6980, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep6981
  %_arr_gep6982 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6980, i32 0, i32 1, i32 1
  store i64 2, i64* %_arr_gep6982
  %_arr_gep6983 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6980, i32 0, i32 1, i32 2
  store i64 3, i64* %_arr_gep6983
  %_arr_gep6984 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6978, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array6980, { i64, [0 x i64] }** %_arr_gep6984
  %_raw_array6985 = call i64* @oat_alloc_array(i64 3)
  %_array6986 = bitcast i64* %_raw_array6985 to { i64, [0 x i64] }*
  %_arr_gep6987 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6986, i32 0, i32 1, i32 0
  store i64 15, i64* %_arr_gep6987
  %_arr_gep6988 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6986, i32 0, i32 1, i32 1
  store i64 16, i64* %_arr_gep6988
  %_arr_gep6989 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6986, i32 0, i32 1, i32 2
  store i64 17, i64* %_arr_gep6989
  %_arr_gep6990 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6978, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array6986, { i64, [0 x i64] }** %_arr_gep6990
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array6978, { i64, [0 x { i64, [0 x i64] }*] }** %_v_decl6991
  ret i64 15
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
