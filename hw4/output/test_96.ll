; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n4240 = alloca i64
  store i64 %n, i64* %_n4240
  br label %_if4244
_if4244:
  %_n4242 = load i64, i64* %_n4240
  %_bop_result4243 = icmp eq i64 %_n4242, 0
  br i1 %_bop_result4243, label %_then4245, label %_end_if4247
_then4245:
  ret i64 0
_end_if4247:
  br label %_if4250
_if4250:
  %_n4248 = load i64, i64* %_n4240
  %_bop_result4249 = icmp eq i64 %_n4248, 1
  br i1 %_bop_result4249, label %_then4251, label %_end_if4253
_then4251:
  ret i64 1
_end_if4253:
  %_n4254 = load i64, i64* %_n4240
  %_bop_result4255 = sub i64 %_n4254, 1
  %_fibR_call4256 = call i64 @fibR(i64 %_bop_result4255)
  %_n4257 = load i64, i64* %_n4240
  %_bop_result4258 = sub i64 %_n4257, 2
  %_fibR_call4259 = call i64 @fibR(i64 %_bop_result4258)
  %_bop_result4260 = add i64 %_fibR_call4256, %_fibR_call4259
  ret i64 %_bop_result4260
}

define i64 @fibI(i64 %n) {
  %_n4202 = alloca i64
  %_a_decl4204 = alloca i64
  %_b_decl4205 = alloca i64
  %_old_decl4224 = alloca i64
  store i64 %n, i64* %_n4202
  store i64 0, i64* %_a_decl4204
  store i64 1, i64* %_b_decl4205
  br label %_if4209
_if4209:
  %_n4206 = load i64, i64* %_n4202
  %_bop_result4207 = icmp eq i64 %_n4206, 0
  br i1 %_bop_result4207, label %_then4210, label %_end_if4212
_then4210:
  %_a4208 = load i64, i64* %_a_decl4204
  ret i64 %_a4208
_end_if4212:
  br label %_if4216
_if4216:
  %_n4213 = load i64, i64* %_n4202
  %_bop_result4214 = icmp eq i64 %_n4213, 1
  br i1 %_bop_result4214, label %_then4217, label %_end_if4219
_then4217:
  %_b4215 = load i64, i64* %_b_decl4205
  ret i64 %_b4215
_end_if4219:
  br label %_while_cond4234
_while_body4235:
  %_b4223 = load i64, i64* %_b_decl4205
  store i64 %_b4223, i64* %_old_decl4224
  %_b4225 = load i64, i64* %_b_decl4205
  %_a4226 = load i64, i64* %_a_decl4204
  %_bop_result4227 = add i64 %_b4225, %_a4226
  store i64 %_bop_result4227, i64* %_b_decl4205
  %_old4229 = load i64, i64* %_old_decl4224
  store i64 %_old4229, i64* %_a_decl4204
  %_n4231 = load i64, i64* %_n4202
  %_bop_result4232 = sub i64 %_n4231, 1
  store i64 %_bop_result4232, i64* %_n4202
  br label %_while_cond4234
_while_cond4234:
  %_n4220 = load i64, i64* %_n4202
  %_bop_result4221 = sub i64 %_n4220, 2
  %_bop_result4222 = icmp sgt i64 %_bop_result4221, 0
  br i1 %_bop_result4222, label %_while_body4235, label %_while_end4236
_while_end4236:
  %_a4237 = load i64, i64* %_a_decl4204
  %_b4238 = load i64, i64* %_b_decl4205
  %_bop_result4239 = add i64 %_a4237, %_b4238
  ret i64 %_bop_result4239
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4186 = alloca i64
  %_argv4188 = alloca { i64, [0 x i8*] }*
  %_val_decl4190 = alloca i64
  store i64 %argc, i64* %_argc4186
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4188
  store i64 1, i64* %_val_decl4190
  br label %_if4197
_if4197:
  %_fibR_call4191 = call i64 @fibR(i64 12)
  %_bop_result4192 = icmp eq i64 %_fibR_call4191, 144
  %_fibI_call4193 = call i64 @fibI(i64 12)
  %_bop_result4194 = icmp eq i64 %_fibI_call4193, 144
  %_bop_result4195 = and i1 %_bop_result4192, %_bop_result4194
  br i1 %_bop_result4195, label %_then4198, label %_end_if4200
_then4198:
  store i64 0, i64* %_val_decl4190
  br label %_end_if4200
_end_if4200:
  %_val4201 = load i64, i64* %_val_decl4190
  ret i64 %_val4201
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
