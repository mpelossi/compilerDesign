; generated from: ./sharedtests/dbernhard/mat_mult.oat
target triple = "x86_64-unknown-linux"
@eye = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [3 x { i64, [0 x i64] }*] }* @_arr_id6262 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_arr_id6262 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id6259 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id6260 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr_id6261 to { i64, [0 x i64] }*) ] }
@_arr_id6259 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 0, i64 0 ] }
@_arr_id6260 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 1, i64 0 ] }
@_arr_id6261 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 0, i64 1 ] }
@_global_str6069 = global [3 x i8] c"| \00"
@_casted_array6070 = global i8* bitcast ([3 x i8]* @_global_str6069 to i8*)
@_global_str6088 = global [2 x i8] c" \00"
@_casted_array6089 = global i8* bitcast ([2 x i8]* @_global_str6088 to i8*)
@_global_str6099 = global [4 x i8] c" |
\00"
@_casted_array6100 = global i8* bitcast ([4 x i8]* @_global_str6099 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6188 = alloca i64
  %_argv6190 = alloca { i64, [0 x i8*] }*
  %_eye_decl6212 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_mat_1_decl6233 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_mat_2_decl6254 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc6188
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6190
  %_raw_array6192 = call i64* @oat_alloc_array(i64 3)
  %_array6193 = bitcast i64* %_raw_array6192 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array6194 = call i64* @oat_alloc_array(i64 3)
  %_array6195 = bitcast i64* %_raw_array6194 to { i64, [0 x i64] }*
  %_arr_gep6196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6195, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep6196
  %_arr_gep6197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6195, i32 0, i32 1, i32 1
  store i64 0, i64* %_arr_gep6197
  %_arr_gep6198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6195, i32 0, i32 1, i32 2
  store i64 0, i64* %_arr_gep6198
  %_arr_gep6199 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6193, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array6195, { i64, [0 x i64] }** %_arr_gep6199
  %_raw_array6200 = call i64* @oat_alloc_array(i64 3)
  %_array6201 = bitcast i64* %_raw_array6200 to { i64, [0 x i64] }*
  %_arr_gep6202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6201, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep6202
  %_arr_gep6203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6201, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep6203
  %_arr_gep6204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6201, i32 0, i32 1, i32 2
  store i64 0, i64* %_arr_gep6204
  %_arr_gep6205 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6193, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array6201, { i64, [0 x i64] }** %_arr_gep6205
  %_raw_array6206 = call i64* @oat_alloc_array(i64 3)
  %_array6207 = bitcast i64* %_raw_array6206 to { i64, [0 x i64] }*
  %_arr_gep6208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6207, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep6208
  %_arr_gep6209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6207, i32 0, i32 1, i32 1
  store i64 0, i64* %_arr_gep6209
  %_arr_gep6210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6207, i32 0, i32 1, i32 2
  store i64 1, i64* %_arr_gep6210
  %_arr_gep6211 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6193, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array6207, { i64, [0 x i64] }** %_arr_gep6211
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array6193, { i64, [0 x { i64, [0 x i64] }*] }** %_eye_decl6212
  %_raw_array6213 = call i64* @oat_alloc_array(i64 3)
  %_array6214 = bitcast i64* %_raw_array6213 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array6215 = call i64* @oat_alloc_array(i64 3)
  %_array6216 = bitcast i64* %_raw_array6215 to { i64, [0 x i64] }*
  %_arr_gep6217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6216, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep6217
  %_arr_gep6218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6216, i32 0, i32 1, i32 1
  store i64 4, i64* %_arr_gep6218
  %_arr_gep6219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6216, i32 0, i32 1, i32 2
  store i64 3, i64* %_arr_gep6219
  %_arr_gep6220 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6214, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array6216, { i64, [0 x i64] }** %_arr_gep6220
  %_raw_array6221 = call i64* @oat_alloc_array(i64 3)
  %_array6222 = bitcast i64* %_raw_array6221 to { i64, [0 x i64] }*
  %_arr_gep6223 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6222, i32 0, i32 1, i32 0
  store i64 9, i64* %_arr_gep6223
  %_arr_gep6224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6222, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep6224
  %_arr_gep6225 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6222, i32 0, i32 1, i32 2
  store i64 2, i64* %_arr_gep6225
  %_arr_gep6226 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6214, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array6222, { i64, [0 x i64] }** %_arr_gep6226
  %_raw_array6227 = call i64* @oat_alloc_array(i64 3)
  %_array6228 = bitcast i64* %_raw_array6227 to { i64, [0 x i64] }*
  %_arr_gep6229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6228, i32 0, i32 1, i32 0
  store i64 2, i64* %_arr_gep6229
  %_arr_gep6230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6228, i32 0, i32 1, i32 1
  store i64 0, i64* %_arr_gep6230
  %_arr_gep6231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6228, i32 0, i32 1, i32 2
  store i64 1, i64* %_arr_gep6231
  %_arr_gep6232 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6214, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array6228, { i64, [0 x i64] }** %_arr_gep6232
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array6214, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_1_decl6233
  %_raw_array6234 = call i64* @oat_alloc_array(i64 3)
  %_array6235 = bitcast i64* %_raw_array6234 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array6236 = call i64* @oat_alloc_array(i64 3)
  %_array6237 = bitcast i64* %_raw_array6236 to { i64, [0 x i64] }*
  %_arr_gep6238 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6237, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep6238
  %_arr_gep6239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6237, i32 0, i32 1, i32 1
  store i64 0, i64* %_arr_gep6239
  %_arr_gep6240 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6237, i32 0, i32 1, i32 2
  store i64 2, i64* %_arr_gep6240
  %_arr_gep6241 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6235, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array6237, { i64, [0 x i64] }** %_arr_gep6241
  %_raw_array6242 = call i64* @oat_alloc_array(i64 3)
  %_array6243 = bitcast i64* %_raw_array6242 to { i64, [0 x i64] }*
  %_arr_gep6244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6243, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep6244
  %_arr_gep6245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6243, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep6245
  %_arr_gep6246 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6243, i32 0, i32 1, i32 2
  store i64 2, i64* %_arr_gep6246
  %_arr_gep6247 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6235, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array6243, { i64, [0 x i64] }** %_arr_gep6247
  %_raw_array6248 = call i64* @oat_alloc_array(i64 3)
  %_array6249 = bitcast i64* %_raw_array6248 to { i64, [0 x i64] }*
  %_arr_gep6250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6249, i32 0, i32 1, i32 0
  store i64 2, i64* %_arr_gep6250
  %_arr_gep6251 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6249, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep6251
  %_arr_gep6252 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6249, i32 0, i32 1, i32 2
  store i64 1, i64* %_arr_gep6252
  %_arr_gep6253 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6235, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array6249, { i64, [0 x i64] }** %_arr_gep6253
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array6235, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_2_decl6254
  %_mat_16255 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_1_decl6233
  %_mat_26256 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_2_decl6254
  %_mult_call6257 = call { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %_mat_16255, { i64, [0 x { i64, [0 x i64] }*] }* %_mat_26256)
  call void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %_mult_call6257, i1 0)
  ret i64 0
}

define { i64, [0 x { i64, [0 x i64] }*] }* @new_mat() {
  %_raw_array6177 = call i64* @oat_alloc_array(i64 3)
  %_array6178 = bitcast i64* %_raw_array6177 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array6179 = call i64* @oat_alloc_array(i64 3)
  %_array6180 = bitcast i64* %_raw_array6179 to { i64, [0 x i64] }*
  %_arr_gep6181 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6178, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array6180, { i64, [0 x i64] }** %_arr_gep6181
  %_raw_array6182 = call i64* @oat_alloc_array(i64 3)
  %_array6183 = bitcast i64* %_raw_array6182 to { i64, [0 x i64] }*
  %_arr_gep6184 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6178, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array6183, { i64, [0 x i64] }** %_arr_gep6184
  %_raw_array6185 = call i64* @oat_alloc_array(i64 3)
  %_array6186 = bitcast i64* %_raw_array6185 to { i64, [0 x i64] }*
  %_arr_gep6187 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6178, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array6186, { i64, [0 x i64] }** %_arr_gep6187
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_array6178
}

define { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %mata, { i64, [0 x { i64, [0 x i64] }*] }* %matb) {
  %_mata6113 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_matb6115 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_res_decl6118 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i_decl6119 = alloca i64
  %_j_decl6122 = alloca i64
  %_k_decl6125 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %mata, { i64, [0 x { i64, [0 x i64] }*] }** %_mata6113
  store { i64, [0 x { i64, [0 x i64] }*] }* %matb, { i64, [0 x { i64, [0 x i64] }*] }** %_matb6115
  %_new_mat_call6117 = call { i64, [0 x { i64, [0 x i64] }*] }* @new_mat()
  store { i64, [0 x { i64, [0 x i64] }*] }* %_new_mat_call6117, { i64, [0 x { i64, [0 x i64] }*] }** %_res_decl6118
  store i64 0, i64* %_i_decl6119
  br label %_while_cond6173
_while_body6174:
  store i64 0, i64* %_j_decl6122
  br label %_while_cond6167
_while_body6168:
  store i64 0, i64* %_k_decl6125
  br label %_while_cond6161
_while_body6162:
  %_res6128 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_res_decl6118
  %_i6129 = load i64, i64* %_i_decl6119
  %_reference6130 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_res6128, i32 0, i32 1, i64 %_i6129
  %_index6131 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference6130
  %_j6132 = load i64, i64* %_j_decl6122
  %_reference6133 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6131, i32 0, i32 1, i64 %_j6132
  %_index6134 = load i64, i64* %_reference6133
  %_mata6135 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mata6113
  %_i6136 = load i64, i64* %_i_decl6119
  %_reference6137 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_mata6135, i32 0, i32 1, i64 %_i6136
  %_index6138 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference6137
  %_k6139 = load i64, i64* %_k_decl6125
  %_reference6140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6138, i32 0, i32 1, i64 %_k6139
  %_index6141 = load i64, i64* %_reference6140
  %_matb6142 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_matb6115
  %_k6143 = load i64, i64* %_k_decl6125
  %_reference6144 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_matb6142, i32 0, i32 1, i64 %_k6143
  %_index6145 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference6144
  %_j6146 = load i64, i64* %_j_decl6122
  %_reference6147 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6145, i32 0, i32 1, i64 %_j6146
  %_index6148 = load i64, i64* %_reference6147
  %_bop_result6149 = mul i64 %_index6141, %_index6148
  %_bop_result6150 = add i64 %_index6134, %_bop_result6149
  %_res6151 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_res_decl6118
  %_i6152 = load i64, i64* %_i_decl6119
  %_reference6153 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_res6151, i32 0, i32 1, i64 %_i6152
  %_index6154 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference6153
  %_j6155 = load i64, i64* %_j_decl6122
  %_gep6156 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6154, i32 0, i32 1, i64 %_j6155
  store i64 %_bop_result6150, i64* %_gep6156
  %_k6158 = load i64, i64* %_k_decl6125
  %_bop_result6159 = add i64 %_k6158, 1
  store i64 %_bop_result6159, i64* %_k_decl6125
  br label %_while_cond6161
_while_cond6161:
  %_k6126 = load i64, i64* %_k_decl6125
  %_bop_result6127 = icmp slt i64 %_k6126, 3
  br i1 %_bop_result6127, label %_while_body6162, label %_while_end6163
_while_end6163:
  %_j6164 = load i64, i64* %_j_decl6122
  %_bop_result6165 = add i64 %_j6164, 1
  store i64 %_bop_result6165, i64* %_j_decl6122
  br label %_while_cond6167
_while_cond6167:
  %_j6123 = load i64, i64* %_j_decl6122
  %_bop_result6124 = icmp slt i64 %_j6123, 3
  br i1 %_bop_result6124, label %_while_body6168, label %_while_end6169
_while_end6169:
  %_i6170 = load i64, i64* %_i_decl6119
  %_bop_result6171 = add i64 %_i6170, 1
  store i64 %_bop_result6171, i64* %_i_decl6119
  br label %_while_cond6173
_while_cond6173:
  %_i6120 = load i64, i64* %_i_decl6119
  %_bop_result6121 = icmp slt i64 %_i6120, 3
  br i1 %_bop_result6121, label %_while_body6174, label %_while_end6175
_while_end6175:
  %_res6176 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_res_decl6118
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_res6176
}

define void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %mat, i1 %pretty) {
  %_mat6061 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_pretty6063 = alloca i1
  %_i_decl6065 = alloca i64
  %_j_decl6077 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %mat, { i64, [0 x { i64, [0 x i64] }*] }** %_mat6061
  store i1 %pretty, i1* %_pretty6063
  store i64 0, i64* %_i_decl6065
  br label %_while_cond6110
_while_body6111:
  br label %_if6073
_if6073:
  %_pretty6068 = load i1, i1* %_pretty6063
  br i1 %_pretty6068, label %_then6074, label %_end_if6076
_then6074:
  %_loaded_str6071 = load i8*, i8** @_casted_array6070
  call void @print_string(i8* %_loaded_str6071)
  br label %_end_if6076
_end_if6076:
  store i64 0, i64* %_j_decl6077
  br label %_while_cond6095
_while_body6096:
  %_mat6080 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mat6061
  %_i6081 = load i64, i64* %_i_decl6065
  %_reference6082 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_mat6080, i32 0, i32 1, i64 %_i6081
  %_index6083 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference6082
  %_j6084 = load i64, i64* %_j_decl6077
  %_reference6085 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6083, i32 0, i32 1, i64 %_j6084
  %_index6086 = load i64, i64* %_reference6085
  call void @print_int(i64 %_index6086)
  %_loaded_str6090 = load i8*, i8** @_casted_array6089
  call void @print_string(i8* %_loaded_str6090)
  %_j6092 = load i64, i64* %_j_decl6077
  %_bop_result6093 = add i64 %_j6092, 1
  store i64 %_bop_result6093, i64* %_j_decl6077
  br label %_while_cond6095
_while_cond6095:
  %_j6078 = load i64, i64* %_j_decl6077
  %_bop_result6079 = icmp slt i64 %_j6078, 3
  br i1 %_bop_result6079, label %_while_body6096, label %_while_end6097
_while_end6097:
  br label %_if6103
_if6103:
  %_pretty6098 = load i1, i1* %_pretty6063
  br i1 %_pretty6098, label %_then6104, label %_end_if6106
_then6104:
  %_loaded_str6101 = load i8*, i8** @_casted_array6100
  call void @print_string(i8* %_loaded_str6101)
  br label %_end_if6106
_end_if6106:
  %_i6107 = load i64, i64* %_i_decl6065
  %_bop_result6108 = add i64 %_i6107, 1
  store i64 %_bop_result6108, i64* %_i_decl6065
  br label %_while_cond6110
_while_cond6110:
  %_i6066 = load i64, i64* %_i_decl6065
  %_bop_result6067 = icmp slt i64 %_i6066, 3
  br i1 %_bop_result6067, label %_while_body6111, label %_while_end6112
_while_end6112:
  ret void
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
