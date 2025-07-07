; generated from: oatprograms/easyrun9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc116 = alloca i64
  %_argv118 = alloca { i64, [0 x i8*] }*
  %_x_decl126 = alloca { i64, [0 x i64] }*
  %_ans_decl127 = alloca i64
  %_i_decl128 = alloca i64
  store i64 %argc, i64* %_argc116
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv118
  %_raw_array120 = call i64* @oat_alloc_array(i64 4)
  %_array121 = bitcast i64* %_raw_array120 to { i64, [0 x i64] }*
  %_arr_gep122 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array121, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep122
  %_arr_gep123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array121, i32 0, i32 1, i32 1
  store i64 2, i64* %_arr_gep123
  %_arr_gep124 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array121, i32 0, i32 1, i32 2
  store i64 3, i64* %_arr_gep124
  %_arr_gep125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array121, i32 0, i32 1, i32 3
  store i64 4, i64* %_arr_gep125
  store { i64, [0 x i64] }* %_array121, { i64, [0 x i64] }** %_x_decl126
  store i64 0, i64* %_ans_decl127
  store i64 0, i64* %_i_decl128
  br label %_while_cond145
_while_body146:
  %_x131 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x_decl126
  %_i132 = load i64, i64* %_i_decl128
  %_reference133 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x131, i32 0, i32 1, i64 %_i132
  %_index134 = load i64, i64* %_reference133
  %_x135 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x_decl126
  %_i136 = load i64, i64* %_i_decl128
  %_reference137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x135, i32 0, i32 1, i64 %_i136
  %_index138 = load i64, i64* %_reference137
  %_uop_result139 = xor i64 %_index138, -1
  %_bop_result140 = mul i64 %_index134, %_uop_result139
  store i64 %_bop_result140, i64* %_ans_decl127
  %_i142 = load i64, i64* %_i_decl128
  %_bop_result143 = add i64 %_i142, 1
  store i64 %_bop_result143, i64* %_i_decl128
  br label %_while_cond145
_while_cond145:
  %_i129 = load i64, i64* %_i_decl128
  %_bop_result130 = icmp slt i64 %_i129, 4
  br i1 %_bop_result130, label %_while_body146, label %_while_end147
_while_end147:
  %_ans148 = load i64, i64* %_ans_decl127
  ret i64 %_ans148
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
