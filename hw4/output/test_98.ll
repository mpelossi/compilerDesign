; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x4435 = alloca i64
  %_y4437 = alloca i64
  store i64 %x, i64* %_x4435
  store i64 %y, i64* %_y4437
  br label %_if4443
_if4443:
  %_x4439 = load i64, i64* %_x4435
  %_y4440 = load i64, i64* %_y4437
  %_bop_result4441 = icmp eq i64 %_x4439, %_y4440
  br i1 %_bop_result4441, label %_then4444, label %_end_if4446
_then4444:
  %_x4442 = load i64, i64* %_x4435
  ret i64 %_x4442
_end_if4446:
  br label %_if4450
_if4450:
  %_x4447 = load i64, i64* %_x4435
  %_bop_result4448 = icmp eq i64 %_x4447, 0
  br i1 %_bop_result4448, label %_then4451, label %_end_if4453
_then4451:
  %_y4449 = load i64, i64* %_y4437
  ret i64 %_y4449
_end_if4453:
  br label %_if4457
_if4457:
  %_y4454 = load i64, i64* %_y4437
  %_bop_result4455 = icmp eq i64 %_y4454, 0
  br i1 %_bop_result4455, label %_then4458, label %_end_if4460
_then4458:
  %_x4456 = load i64, i64* %_x4435
  ret i64 %_x4456
_end_if4460:
  br label %_if4482
_if4482:
  %_x4461 = load i64, i64* %_x4435
  %_uop_result4462 = xor i64 %_x4461, -1
  %_bop_result4463 = and i64 %_uop_result4462, 1
  %_bop_result4464 = icmp eq i64 %_bop_result4463, 1
  br i1 %_bop_result4464, label %_then4483, label %_end_if4485
_then4483:
  br label %_if4478
_if4478:
  %_y4465 = load i64, i64* %_y4437
  %_bop_result4466 = and i64 %_y4465, 1
  %_bop_result4467 = icmp eq i64 %_bop_result4466, 1
  br i1 %_bop_result4467, label %_then4479, label %_else4480
_then4479:
  %_x4468 = load i64, i64* %_x4435
  %_bop_result4469 = lshr i64 %_x4468, 1
  %_y4470 = load i64, i64* %_y4437
  %_binary_gcd_call4471 = call i64 @binary_gcd(i64 %_bop_result4469, i64 %_y4470)
  ret i64 %_binary_gcd_call4471
_else4480:
  %_x4472 = load i64, i64* %_x4435
  %_bop_result4473 = lshr i64 %_x4472, 1
  %_y4474 = load i64, i64* %_y4437
  %_bop_result4475 = lshr i64 %_y4474, 1
  %_binary_gcd_call4476 = call i64 @binary_gcd(i64 %_bop_result4473, i64 %_bop_result4475)
  %_bop_result4477 = shl i64 %_binary_gcd_call4476, 1
  ret i64 %_bop_result4477
_end_if4481:
  ret i64 %_binary_gcd_call4471
_end_if4485:
  br label %_if4494
_if4494:
  %_y4486 = load i64, i64* %_y4437
  %_uop_result4487 = xor i64 %_y4486, -1
  %_bop_result4488 = and i64 %_uop_result4487, 1
  %_bop_result4489 = icmp eq i64 %_bop_result4488, 1
  br i1 %_bop_result4489, label %_then4495, label %_end_if4497
_then4495:
  %_x4490 = load i64, i64* %_x4435
  %_y4491 = load i64, i64* %_y4437
  %_bop_result4492 = lshr i64 %_y4491, 1
  %_binary_gcd_call4493 = call i64 @binary_gcd(i64 %_x4490, i64 %_bop_result4492)
  ret i64 %_binary_gcd_call4493
_end_if4497:
  br label %_if4507
_if4507:
  %_x4498 = load i64, i64* %_x4435
  %_y4499 = load i64, i64* %_y4437
  %_bop_result4500 = icmp sgt i64 %_x4498, %_y4499
  br i1 %_bop_result4500, label %_then4508, label %_end_if4510
_then4508:
  %_x4501 = load i64, i64* %_x4435
  %_y4502 = load i64, i64* %_y4437
  %_bop_result4503 = sub i64 %_x4501, %_y4502
  %_bop_result4504 = lshr i64 %_bop_result4503, 1
  %_y4505 = load i64, i64* %_y4437
  %_binary_gcd_call4506 = call i64 @binary_gcd(i64 %_bop_result4504, i64 %_y4505)
  ret i64 %_binary_gcd_call4506
_end_if4510:
  %_y4511 = load i64, i64* %_y4437
  %_x4512 = load i64, i64* %_x4435
  %_bop_result4513 = sub i64 %_y4511, %_x4512
  %_bop_result4514 = lshr i64 %_bop_result4513, 1
  %_x4515 = load i64, i64* %_x4435
  %_binary_gcd_call4516 = call i64 @binary_gcd(i64 %_bop_result4514, i64 %_x4515)
  ret i64 %_binary_gcd_call4516
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4426 = alloca i64
  %_argv4428 = alloca { i64, [0 x i8*] }*
  %_x_decl4430 = alloca i64
  %_y_decl4431 = alloca i64
  store i64 %argc, i64* %_argc4426
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4428
  store i64 21, i64* %_x_decl4430
  store i64 15, i64* %_y_decl4431
  %_x4432 = load i64, i64* %_x_decl4430
  %_y4433 = load i64, i64* %_y_decl4431
  %_binary_gcd_call4434 = call i64 @binary_gcd(i64 %_x4432, i64 %_y4433)
  ret i64 %_binary_gcd_call4434
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
