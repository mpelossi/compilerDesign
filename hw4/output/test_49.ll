; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x1005 = alloca i64
  %_y1007 = alloca i64
  %_r_decl1009 = alloca i64
  store i64 %x, i64* %_x1005
  store i64 %y, i64* %_y1007
  store i64 0, i64* %_r_decl1009
  br label %_if1022
_if1022:
  %_x1010 = load i64, i64* %_x1005
  %_bop_result1011 = icmp sge i64 %_x1010, 1
  br i1 %_bop_result1011, label %_then1023, label %_else1024
_then1023:
  %_x1012 = load i64, i64* %_x1005
  %_bop_result1013 = sub i64 %_x1012, 1
  %_y1014 = load i64, i64* %_y1007
  %_f_call1015 = call i64 @f(i64 %_bop_result1013, i64 %_y1014)
  %_bop_result1016 = add i64 1, %_f_call1015
  store i64 %_bop_result1016, i64* %_r_decl1009
  br label %_end_if1025
_else1024:
  %_x1018 = load i64, i64* %_x1005
  %_y1019 = load i64, i64* %_y1007
  %_bop_result1020 = add i64 %_x1018, %_y1019
  store i64 %_bop_result1020, i64* %_r_decl1009
  br label %_end_if1025
_end_if1025:
  %_r1026 = load i64, i64* %_r_decl1009
  ret i64 %_r1026
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc994 = alloca i64
  %_argv996 = alloca { i64, [0 x i8*] }*
  %_x_decl998 = alloca i64
  %_y_decl999 = alloca i64
  store i64 %argc, i64* %_argc994
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv996
  store i64 3, i64* %_x_decl998
  store i64 3, i64* %_y_decl999
  %_x1000 = load i64, i64* %_x_decl998
  %_y1001 = load i64, i64* %_y_decl999
  %_f_call1002 = call i64 @f(i64 %_x1000, i64 %_y1001)
  %_i1003 = load i64, i64* @i
  %_bop_result1004 = add i64 %_f_call1002, %_i1003
  ret i64 %_bop_result1004
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
