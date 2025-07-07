; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_arr_id5210 to { i64, [0 x i64] }*)
@_arr_id5210 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_global_str5130 = global [1 x i8] c"\00"
@_casted_array5131 = global i8* bitcast ([1 x i8]* @_global_str5130 to i8*)
@_global_str5105 = global [7 x i8] c"TOMATO\00"
@_casted_array5106 = global i8* bitcast ([7 x i8]* @_global_str5105 to i8*)
@_global_str5109 = global [8 x i8] c"ORATING\00"
@_casted_array5110 = global i8* bitcast ([8 x i8]* @_global_str5109 to i8*)

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_i5117 = alloca i64
  %_j5119 = alloca i64
  %_a5121 = alloca i8*
  %_b5123 = alloca i8*
  %_a_chars_decl5139 = alloca { i64, [0 x i64] }*
  %_b_chars_decl5142 = alloca { i64, [0 x i64] }*
  %_last_char_a_decl5147 = alloca i64
  %_last_char_b_decl5152 = alloca i64
  %_prev_lcs_decl5163 = alloca i8*
  %_next_char_decl5173 = alloca i8*
  %_left_lcs_decl5187 = alloca i8*
  %_right_lcs_decl5194 = alloca i8*
  %_left_len_decl5197 = alloca i64
  %_right_len_decl5200 = alloca i64
  store i64 %i, i64* %_i5117
  store i64 %j, i64* %_j5119
  store i8* %a, i8** %_a5121
  store i8* %b, i8** %_b5123
  br label %_if5133
_if5133:
  %_i5125 = load i64, i64* %_i5117
  %_bop_result5126 = icmp slt i64 %_i5125, 0
  %_j5127 = load i64, i64* %_j5119
  %_bop_result5128 = icmp slt i64 %_j5127, 0
  %_bop_result5129 = or i1 %_bop_result5126, %_bop_result5128
  br i1 %_bop_result5129, label %_then5134, label %_end_if5136
_then5134:
  %_loaded_str5132 = load i8*, i8** @_casted_array5131
  ret i8* %_loaded_str5132
_end_if5136:
  %_a5137 = load i8*, i8** %_a5121
  %_array_of_string_call5138 = call { i64, [0 x i64] }* @array_of_string(i8* %_a5137)
  store { i64, [0 x i64] }* %_array_of_string_call5138, { i64, [0 x i64] }** %_a_chars_decl5139
  %_b5140 = load i8*, i8** %_b5123
  %_array_of_string_call5141 = call { i64, [0 x i64] }* @array_of_string(i8* %_b5140)
  store { i64, [0 x i64] }* %_array_of_string_call5141, { i64, [0 x i64] }** %_b_chars_decl5142
  %_a_chars5143 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars_decl5139
  %_i5144 = load i64, i64* %_i5117
  %_reference5145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars5143, i32 0, i32 1, i64 %_i5144
  %_index5146 = load i64, i64* %_reference5145
  store i64 %_index5146, i64* %_last_char_a_decl5147
  %_b_chars5148 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars_decl5142
  %_j5149 = load i64, i64* %_j5119
  %_reference5150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b_chars5148, i32 0, i32 1, i64 %_j5149
  %_index5151 = load i64, i64* %_reference5150
  store i64 %_index5151, i64* %_last_char_b_decl5152
  br label %_if5177
_if5177:
  %_last_char_a5153 = load i64, i64* %_last_char_a_decl5147
  %_last_char_b5154 = load i64, i64* %_last_char_b_decl5152
  %_bop_result5155 = icmp eq i64 %_last_char_a5153, %_last_char_b5154
  br i1 %_bop_result5155, label %_then5178, label %_end_if5180
_then5178:
  %_i5156 = load i64, i64* %_i5117
  %_bop_result5157 = sub i64 %_i5156, 1
  %_j5158 = load i64, i64* %_j5119
  %_bop_result5159 = sub i64 %_j5158, 1
  %_a5160 = load i8*, i8** %_a5121
  %_b5161 = load i8*, i8** %_b5123
  %_lcs_call5162 = call i8* @lcs(i64 %_bop_result5157, i64 %_bop_result5159, i8* %_a5160, i8* %_b5161)
  store i8* %_lcs_call5162, i8** %_prev_lcs_decl5163
  %_a_chars5164 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars_decl5139
  %_i5165 = load i64, i64* %_i5117
  %_reference5166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars5164, i32 0, i32 1, i64 %_i5165
  %_index5167 = load i64, i64* %_reference5166
  %_buf5168 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_gep5169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_buf5168, i32 0, i32 1, i32 0
  store i64 %_index5167, i64* %_gep5169
  %_buf5171 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_string_of_array_call5172 = call i8* @string_of_array({ i64, [0 x i64] }* %_buf5171)
  store i8* %_string_of_array_call5172, i8** %_next_char_decl5173
  %_prev_lcs5174 = load i8*, i8** %_prev_lcs_decl5163
  %_next_char5175 = load i8*, i8** %_next_char_decl5173
  %_string_cat_call5176 = call i8* @string_cat(i8* %_prev_lcs5174, i8* %_next_char5175)
  ret i8* %_string_cat_call5176
_end_if5180:
  %_i5181 = load i64, i64* %_i5117
  %_j5182 = load i64, i64* %_j5119
  %_bop_result5183 = sub i64 %_j5182, 1
  %_a5184 = load i8*, i8** %_a5121
  %_b5185 = load i8*, i8** %_b5123
  %_lcs_call5186 = call i8* @lcs(i64 %_i5181, i64 %_bop_result5183, i8* %_a5184, i8* %_b5185)
  store i8* %_lcs_call5186, i8** %_left_lcs_decl5187
  %_i5188 = load i64, i64* %_i5117
  %_bop_result5189 = sub i64 %_i5188, 1
  %_j5190 = load i64, i64* %_j5119
  %_a5191 = load i8*, i8** %_a5121
  %_b5192 = load i8*, i8** %_b5123
  %_lcs_call5193 = call i8* @lcs(i64 %_bop_result5189, i64 %_j5190, i8* %_a5191, i8* %_b5192)
  store i8* %_lcs_call5193, i8** %_right_lcs_decl5194
  %_left_lcs5195 = load i8*, i8** %_left_lcs_decl5187
  %_length_of_string_call5196 = call i64 @length_of_string(i8* %_left_lcs5195)
  store i64 %_length_of_string_call5196, i64* %_left_len_decl5197
  %_right_lcs5198 = load i8*, i8** %_right_lcs_decl5194
  %_length_of_string_call5199 = call i64 @length_of_string(i8* %_right_lcs5198)
  store i64 %_length_of_string_call5199, i64* %_right_len_decl5200
  br label %_if5206
_if5206:
  %_left_len5201 = load i64, i64* %_left_len_decl5197
  %_right_len5202 = load i64, i64* %_right_len_decl5200
  %_bop_result5203 = icmp slt i64 %_left_len5201, %_right_len5202
  br i1 %_bop_result5203, label %_then5207, label %_else5208
_then5207:
  %_right_lcs5204 = load i8*, i8** %_right_lcs_decl5194
  ret i8* %_right_lcs5204
_else5208:
  %_left_lcs5205 = load i8*, i8** %_left_lcs_decl5187
  ret i8* %_left_lcs5205
_end_if5209:
  ret i8* %_right_lcs5204
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5101 = alloca i64
  %_argv5103 = alloca { i64, [0 x i8*] }*
  %_tomato_decl5108 = alloca i8*
  %_orating_decl5112 = alloca i8*
  store i64 %argc, i64* %_argc5101
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5103
  %_loaded_str5107 = load i8*, i8** @_casted_array5106
  store i8* %_loaded_str5107, i8** %_tomato_decl5108
  %_loaded_str5111 = load i8*, i8** @_casted_array5110
  store i8* %_loaded_str5111, i8** %_orating_decl5112
  %_tomato5113 = load i8*, i8** %_tomato_decl5108
  %_orating5114 = load i8*, i8** %_orating_decl5112
  %_lcs_call5115 = call i8* @lcs(i64 5, i64 6, i8* %_tomato5113, i8* %_orating5114)
  call void @print_string(i8* %_lcs_call5115)
  ret i64 0
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
