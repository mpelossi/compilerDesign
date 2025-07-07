; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([6 x i8]* @_gstr_id2371 to i8*)
@_gstr_id2371 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2344 = alloca i64
  %_argv2346 = alloca { i64, [0 x i8*] }*
  %_arr_decl2350 = alloca { i64, [0 x i64] }*
  %_s_decl2351 = alloca i64
  %_i_decl2352 = alloca i64
  store i64 %argc, i64* %_argc2344
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2346
  %_str2348 = load i8*, i8** @str
  %_array_of_string_call2349 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2348)
  store { i64, [0 x i64] }* %_array_of_string_call2349, { i64, [0 x i64] }** %_arr_decl2350
  store i64 0, i64* %_s_decl2351
  store i64 0, i64* %_i_decl2352
  br label %_while_cond2365
_while_body2366:
  %_s2355 = load i64, i64* %_s_decl2351
  %_arr2356 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl2350
  %_i2357 = load i64, i64* %_i_decl2352
  %_reference2358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2356, i32 0, i32 1, i64 %_i2357
  %_index2359 = load i64, i64* %_reference2358
  %_bop_result2360 = add i64 %_s2355, %_index2359
  store i64 %_bop_result2360, i64* %_s_decl2351
  %_i2362 = load i64, i64* %_i_decl2352
  %_bop_result2363 = add i64 %_i2362, 1
  store i64 %_bop_result2363, i64* %_i_decl2352
  br label %_while_cond2365
_while_cond2365:
  %_i2353 = load i64, i64* %_i_decl2352
  %_bop_result2354 = icmp slt i64 %_i2353, 5
  br i1 %_bop_result2354, label %_while_body2366, label %_while_end2367
_while_end2367:
  %_s2368 = load i64, i64* %_s_decl2351
  call void @print_int(i64 %_s2368)
  %_s2370 = load i64, i64* %_s_decl2351
  ret i64 %_s2370
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
