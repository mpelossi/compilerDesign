; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2298 = load i64, i64* @a
  %_bop_result2299 = add i64 %_a2298, 1
  store i64 %_bop_result2299, i64* @a
  %_a2301 = load i64, i64* @a
  ret i64 %_a2301
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2275 = alloca i64
  %_argv2277 = alloca { i64, [0 x i8*] }*
  %_b_decl2282 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2275
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2277
  %_f_call2279 = call i64 @f()
  %_raw_array2280 = call i64* @oat_alloc_array(i64 %_f_call2279)
  %_array2281 = bitcast i64* %_raw_array2280 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2281, { i64, [0 x i64] }** %_b_decl2282
  %_b2283 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_decl2282
  %_gep2284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2283, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep2284
  %_b2286 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_decl2282
  %_gep2287 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2286, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep2287
  %_a2289 = load i64, i64* @a
  %_b2290 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_decl2282
  %_reference2291 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2290, i32 0, i32 1, i32 0
  %_index2292 = load i64, i64* %_reference2291
  %_bop_result2293 = add i64 %_a2289, %_index2292
  %_b2294 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_decl2282
  %_reference2295 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2294, i32 0, i32 1, i32 1
  %_index2296 = load i64, i64* %_reference2295
  %_bop_result2297 = add i64 %_bop_result2293, %_index2296
  ret i64 %_bop_result2297
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
