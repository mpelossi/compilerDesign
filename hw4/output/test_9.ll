; generated from: oatprograms/easyrun10.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc149 = alloca i64
  %_argv151 = alloca { i64, [0 x i8*] }*
  %_x_decl171 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_ans_decl172 = alloca i64
  %_i_decl173 = alloca i64
  store i64 %argc, i64* %_argc149
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv151
  %_raw_array153 = call i64* @oat_alloc_array(i64 4)
  %_array154 = bitcast i64* %_raw_array153 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array155 = call i64* @oat_alloc_array(i64 1)
  %_array156 = bitcast i64* %_raw_array155 to { i64, [0 x i64] }*
  %_arr_gep157 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array156, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep157
  %_arr_gep158 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array154, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array156, { i64, [0 x i64] }** %_arr_gep158
  %_raw_array159 = call i64* @oat_alloc_array(i64 1)
  %_array160 = bitcast i64* %_raw_array159 to { i64, [0 x i64] }*
  %_arr_gep161 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array160, i32 0, i32 1, i32 0
  store i64 2, i64* %_arr_gep161
  %_arr_gep162 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array154, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array160, { i64, [0 x i64] }** %_arr_gep162
  %_raw_array163 = call i64* @oat_alloc_array(i64 1)
  %_array164 = bitcast i64* %_raw_array163 to { i64, [0 x i64] }*
  %_arr_gep165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array164, i32 0, i32 1, i32 0
  store i64 3, i64* %_arr_gep165
  %_arr_gep166 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array154, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array164, { i64, [0 x i64] }** %_arr_gep166
  %_raw_array167 = call i64* @oat_alloc_array(i64 1)
  %_array168 = bitcast i64* %_raw_array167 to { i64, [0 x i64] }*
  %_arr_gep169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array168, i32 0, i32 1, i32 0
  store i64 4, i64* %_arr_gep169
  %_arr_gep170 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array154, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array168, { i64, [0 x i64] }** %_arr_gep170
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array154, { i64, [0 x { i64, [0 x i64] }*] }** %_x_decl171
  store i64 0, i64* %_ans_decl172
  store i64 0, i64* %_i_decl173
  br label %_while_cond188
_while_body189:
  %_x176 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_x_decl171
  %_i177 = load i64, i64* %_i_decl173
  %_reference178 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_x176, i32 0, i32 1, i64 %_i177
  %_index179 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference178
  %_reference180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index179, i32 0, i32 1, i32 0
  %_index181 = load i64, i64* %_reference180
  %_ans182 = load i64, i64* %_ans_decl172
  %_bop_result183 = sub i64 %_index181, %_ans182
  store i64 %_bop_result183, i64* %_ans_decl172
  %_i185 = load i64, i64* %_i_decl173
  %_bop_result186 = add i64 %_i185, 1
  store i64 %_bop_result186, i64* %_i_decl173
  br label %_while_cond188
_while_cond188:
  %_i174 = load i64, i64* %_i_decl173
  %_bop_result175 = icmp slt i64 %_i174, 4
  br i1 %_bop_result175, label %_while_body189, label %_while_end190
_while_end190:
  br label %_if198
_if198:
  %_uop_result191 = xor i64 5, -1
  %_bop_result192 = and i64 5, %_uop_result191
  %_bop_result193 = or i64 %_bop_result192, 0
  %_bop_result194 = icmp ne i64 %_bop_result193, 0
  br i1 %_bop_result194, label %_then199, label %_else200
_then199:
  %_ans195 = load i64, i64* %_ans_decl172
  ret i64 %_ans195
_else200:
  %_ans196 = load i64, i64* %_ans_decl172
  %_uop_result197 = mul i64 %_ans196, -1
  ret i64 %_uop_result197
_end_if201:
  ret i64 %_ans195
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
