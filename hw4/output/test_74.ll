; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2327 = load i64, i64* @a
  %_bop_result2328 = add i64 %_a2327, 1
  store i64 %_bop_result2328, i64* @a
  %_a2330 = load i64, i64* @a
  ret i64 %_a2330
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2302 = alloca i64
  %_argv2304 = alloca { i64, [0 x i8*] }*
  %_b_decl2309 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2302
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2304
  %_f_call2306 = call i64 @f()
  %_raw_array2307 = call i64* @oat_alloc_array(i64 %_f_call2306)
  %_array2308 = bitcast i64* %_raw_array2307 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2308, { i64, [0 x i64] }** %_b_decl2309
  %_f_call2310 = call i64 @f()
  %_b2311 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_decl2309
  %_gep2312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2311, i32 0, i32 1, i32 0
  store i64 %_f_call2310, i64* %_gep2312
  %_f_call2314 = call i64 @f()
  %_b2315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_decl2309
  %_gep2316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2315, i32 0, i32 1, i32 1
  store i64 %_f_call2314, i64* %_gep2316
  %_a2318 = load i64, i64* @a
  %_b2319 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_decl2309
  %_reference2320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2319, i32 0, i32 1, i32 0
  %_index2321 = load i64, i64* %_reference2320
  %_bop_result2322 = add i64 %_a2318, %_index2321
  %_b2323 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_decl2309
  %_reference2324 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2323, i32 0, i32 1, i32 1
  %_index2325 = load i64, i64* %_reference2324
  %_bop_result2326 = add i64 %_bop_result2322, %_index2325
  ret i64 %_bop_result2326
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
