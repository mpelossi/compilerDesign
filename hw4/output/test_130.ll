; generated from: ./sharedtests/dbernhard/for_cond_fun.oat
target triple = "x86_64-unknown-linux"
@_global_str6006 = global [3 x i8] c", \00"
@_casted_array6007 = global i8* bitcast ([3 x i8]* @_global_str6006 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc5993 = alloca i64
  %_args5995 = alloca { i64, [0 x i8*] }*
  %_x_decl5997 = alloca i64
  %_y_decl5998 = alloca i64
  %_str_decl6003 = alloca i8*
  store i64 %argc, i64* %_argc5993
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args5995
  store i64 0, i64* %_x_decl5997
  store i64 10, i64* %_y_decl5998
  br label %_while_cond6019
_while_body6020:
  %_y6001 = load i64, i64* %_y_decl5998
  %_string_of_int_call6002 = call i8* @string_of_int(i64 %_y6001)
  store i8* %_string_of_int_call6002, i8** %_str_decl6003
  %_str6004 = load i8*, i8** %_str_decl6003
  call void @print_string(i8* %_str6004)
  %_loaded_str6008 = load i8*, i8** @_casted_array6007
  call void @print_string(i8* %_loaded_str6008)
  %_y6010 = load i64, i64* %_y_decl5998
  %_bop_result6011 = add i64 %_y6010, 1
  store i64 %_bop_result6011, i64* %_y_decl5998
  %_x6013 = load i64, i64* %_x_decl5997
  %_bop_result6014 = add i64 %_x6013, 1
  store i64 %_bop_result6014, i64* %_x_decl5997
  %_x6016 = load i64, i64* %_x_decl5997
  %_y6017 = load i64, i64* %_y_decl5998
  %_con_call6018 = call i1 @con(i64 %_x6016, i64 %_y6017)
  br label %_while_cond6019
_while_cond6019:
  %_y5999 = load i64, i64* %_y_decl5998
  %_bop_result6000 = icmp slt i64 %_y5999, 20
  br i1 %_bop_result6000, label %_while_body6020, label %_while_end6021
_while_end6021:
  %_x6022 = load i64, i64* %_x_decl5997
  ret i64 %_x6022
}

define i1 @con(i64 %a, i64 %b) {
  %_a5983 = alloca i64
  %_b5985 = alloca i64
  store i64 %a, i64* %_a5983
  store i64 %b, i64* %_b5985
  %_a5987 = load i64, i64* %_a5983
  %_bop_result5988 = add i64 %_a5987, 1
  store i64 %_bop_result5988, i64* %_a5983
  %_b5990 = load i64, i64* %_b5985
  %_bop_result5991 = add i64 %_b5990, 1
  store i64 %_bop_result5991, i64* %_b5985
  ret i1 1
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
