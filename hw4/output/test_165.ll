; generated from: ./sharedtests/nicdard/arglobal.oat
target triple = "x86_64-unknown-linux"
@v = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id6923 to { i64, [0 x i64] }*)
@_arr_id6923 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6919 = alloca i64
  %_args6921 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6919
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6921
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
