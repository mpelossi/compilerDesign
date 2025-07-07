; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x325 = alloca { i64, [0 x i64] }*
  %_y327 = alloca { i64, [0 x i64] }*
  %_b329 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x325
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y327
  store i1 %b, i1* %_b329
  br label %_if334
_if334:
  %_b331 = load i1, i1* %_b329
  br i1 %_b331, label %_then335, label %_else336
_then335:
  %_x332 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x325
  ret { i64, [0 x i64] }* %_x332
_else336:
  %_y333 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y327
  ret { i64, [0 x i64] }* %_y333
_end_if337:
  ret { i64, [0 x i64] }* %_x332
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc278 = alloca i64
  %_argv280 = alloca { i64, [0 x i8*] }*
  %_x_decl284 = alloca { i64, [0 x i64] }*
  %_i_decl285 = alloca i64
  %_y_decl301 = alloca { i64, [0 x i64] }*
  %_i_decl302 = alloca i64
  store i64 %argc, i64* %_argc278
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv280
  %_raw_array282 = call i64* @oat_alloc_array(i64 3)
  %_array283 = bitcast i64* %_raw_array282 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array283, { i64, [0 x i64] }** %_x_decl284
  store i64 0, i64* %_i_decl285
  br label %_while_cond296
_while_body297:
  %_i288 = load i64, i64* %_i_decl285
  %_x289 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x_decl284
  %_i290 = load i64, i64* %_i_decl285
  %_gep291 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x289, i32 0, i32 1, i64 %_i290
  store i64 %_i288, i64* %_gep291
  %_i293 = load i64, i64* %_i_decl285
  %_bop_result294 = add i64 %_i293, 1
  store i64 %_bop_result294, i64* %_i_decl285
  br label %_while_cond296
_while_cond296:
  %_i286 = load i64, i64* %_i_decl285
  %_bop_result287 = icmp slt i64 %_i286, 3
  br i1 %_bop_result287, label %_while_body297, label %_while_end298
_while_end298:
  %_raw_array299 = call i64* @oat_alloc_array(i64 3)
  %_array300 = bitcast i64* %_raw_array299 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array300, { i64, [0 x i64] }** %_y_decl301
  store i64 0, i64* %_i_decl302
  br label %_while_cond314
_while_body315:
  %_i305 = load i64, i64* %_i_decl302
  %_bop_result306 = add i64 %_i305, 3
  %_y307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y_decl301
  %_i308 = load i64, i64* %_i_decl302
  %_gep309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y307, i32 0, i32 1, i64 %_i308
  store i64 %_bop_result306, i64* %_gep309
  %_i311 = load i64, i64* %_i_decl302
  %_bop_result312 = add i64 %_i311, 1
  store i64 %_bop_result312, i64* %_i_decl302
  br label %_while_cond314
_while_cond314:
  %_i303 = load i64, i64* %_i_decl302
  %_bop_result304 = icmp slt i64 %_i303, 3
  br i1 %_bop_result304, label %_while_body315, label %_while_end316
_while_end316:
  %_x317 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x_decl284
  %_y318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y_decl301
  %_f_call319 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x317, { i64, [0 x i64] }* %_y318, i1 1)
  %_gep320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_f_call319, i32 0, i32 1, i32 0
  store i64 17, i64* %_gep320
  %_x322 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x_decl284
  %_reference323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x322, i32 0, i32 1, i32 0
  %_index324 = load i64, i64* %_reference323
  ret i64 %_index324
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
