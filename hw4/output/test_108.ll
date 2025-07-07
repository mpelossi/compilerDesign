; generated from: ./sharedtests/dbernhard/simple_while2.oat
target triple = "x86_64-unknown-linux"
@counter = global i64 100

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc5489 = alloca i64
  %_args5491 = alloca { i64, [0 x i8*] }*
  %_x_decl5493 = alloca i64
  store i64 %argc, i64* %_argc5489
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args5491
  store i64 0, i64* %_x_decl5493
  br label %_while_cond5501
_while_body5502:
  %_x5495 = load i64, i64* %_x_decl5493
  %_bop_result5496 = add i64 %_x5495, 1
  store i64 %_bop_result5496, i64* %_x_decl5493
  %_counter5498 = load i64, i64* @counter
  %_bop_result5499 = sub i64 %_counter5498, 1
  store i64 %_bop_result5499, i64* @counter
  br label %_while_cond5501
_while_cond5501:
  %_condition_call5494 = call i1 @condition()
  br i1 %_condition_call5494, label %_while_body5502, label %_while_end5503
_while_end5503:
  %_x5504 = load i64, i64* %_x_decl5493
  ret i64 %_x5504
}

define i1 @condition() {
  %_counter5487 = load i64, i64* @counter
  %_bop_result5488 = icmp sgt i64 %_counter5487, 50
  ret i1 %_bop_result5488
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
