; generated from: ./sharedtests/nicdard/arlocal2.oat
target triple = "x86_64-unknown-linux"
@v = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [2 x { i64, [0 x i64] }*] }* @_arr_id7007 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_arr_id7007 = global { i64, [2 x { i64, [0 x i64] }*] } { i64 2, [2 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id7005 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id7006 to { i64, [0 x i64] }*) ] }
@_arr_id7005 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_arr_id7006 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 15, i64 16, i64 17 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6995 = alloca i64
  %_args6997 = alloca { i64, [0 x i8*] }*
  %_v_decl7001 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc6995
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6997
  %_raw_array6999 = call i64* @oat_alloc_array(i64 2)
  %_array7000 = bitcast i64* %_raw_array6999 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7000, { i64, [0 x i64] }** %_v_decl7001
  %_v7002 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_v_decl7001
  %_reference7003 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_v7002, i32 0, i32 1, i32 1
  %_index7004 = load i64, i64* %_reference7003
  ret i64 %_index7004
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
