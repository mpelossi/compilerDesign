; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_global_str4010 = global [2 x i8] c"
\00"
@_casted_array4011 = global i8* bitcast ([2 x i8]* @_global_str4010 to i8*)

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4152 = alloca { i64, [0 x i64] }*
  %_len4154 = alloca i64
  %_min_decl4159 = alloca i64
  %_i_decl4160 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4152
  store i64 %len, i64* %_len4154
  %_arr4156 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4152
  %_reference4157 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4156, i32 0, i32 1, i32 0
  %_index4158 = load i64, i64* %_reference4157
  store i64 %_index4158, i64* %_min_decl4159
  store i64 0, i64* %_i_decl4160
  br label %_while_cond4182
_while_body4183:
  br label %_if4175
_if4175:
  %_arr4164 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4152
  %_i4165 = load i64, i64* %_i_decl4160
  %_reference4166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4164, i32 0, i32 1, i64 %_i4165
  %_index4167 = load i64, i64* %_reference4166
  %_min4168 = load i64, i64* %_min_decl4159
  %_bop_result4169 = icmp slt i64 %_index4167, %_min4168
  br i1 %_bop_result4169, label %_then4176, label %_end_if4178
_then4176:
  %_arr4170 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4152
  %_i4171 = load i64, i64* %_i_decl4160
  %_reference4172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4170, i32 0, i32 1, i64 %_i4171
  %_index4173 = load i64, i64* %_reference4172
  store i64 %_index4173, i64* %_min_decl4159
  br label %_end_if4178
_end_if4178:
  %_i4179 = load i64, i64* %_i_decl4160
  %_bop_result4180 = add i64 %_i4179, 1
  store i64 %_bop_result4180, i64* %_i_decl4160
  br label %_while_cond4182
_while_cond4182:
  %_i4161 = load i64, i64* %_i_decl4160
  %_len4162 = load i64, i64* %_len4154
  %_bop_result4163 = icmp slt i64 %_i4161, %_len4162
  br i1 %_bop_result4163, label %_while_body4183, label %_while_end4184
_while_end4184:
  %_min4185 = load i64, i64* %_min_decl4159
  ret i64 %_min4185
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4118 = alloca { i64, [0 x i64] }*
  %_len4120 = alloca i64
  %_max_decl4125 = alloca i64
  %_i_decl4126 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4118
  store i64 %len, i64* %_len4120
  %_arr4122 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4118
  %_reference4123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4122, i32 0, i32 1, i32 0
  %_index4124 = load i64, i64* %_reference4123
  store i64 %_index4124, i64* %_max_decl4125
  store i64 0, i64* %_i_decl4126
  br label %_while_cond4148
_while_body4149:
  br label %_if4141
_if4141:
  %_arr4130 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4118
  %_i4131 = load i64, i64* %_i_decl4126
  %_reference4132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4130, i32 0, i32 1, i64 %_i4131
  %_index4133 = load i64, i64* %_reference4132
  %_max4134 = load i64, i64* %_max_decl4125
  %_bop_result4135 = icmp sgt i64 %_index4133, %_max4134
  br i1 %_bop_result4135, label %_then4142, label %_end_if4144
_then4142:
  %_arr4136 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4118
  %_i4137 = load i64, i64* %_i_decl4126
  %_reference4138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4136, i32 0, i32 1, i64 %_i4137
  %_index4139 = load i64, i64* %_reference4138
  store i64 %_index4139, i64* %_max_decl4125
  br label %_end_if4144
_end_if4144:
  %_i4145 = load i64, i64* %_i_decl4126
  %_bop_result4146 = add i64 %_i4145, 1
  store i64 %_bop_result4146, i64* %_i_decl4126
  br label %_while_cond4148
_while_cond4148:
  %_i4127 = load i64, i64* %_i_decl4126
  %_len4128 = load i64, i64* %_len4120
  %_bop_result4129 = icmp slt i64 %_i4127, %_len4128
  br i1 %_bop_result4129, label %_while_body4149, label %_while_end4150
_while_end4150:
  %_max4151 = load i64, i64* %_max_decl4125
  ret i64 %_max4151
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4021 = alloca { i64, [0 x i64] }*
  %_len4023 = alloca i64
  %_min_decl4028 = alloca i64
  %_max_decl4032 = alloca i64
  %_counts_decl4039 = alloca { i64, [0 x i64] }*
  %_i_decl4040 = alloca i64
  %_i_decl4070 = alloca i64
  %_j_decl4071 = alloca i64
  %_out_decl4075 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4021
  store i64 %len, i64* %_len4023
  %_arr4025 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4021
  %_len4026 = load i64, i64* %_len4023
  %_min_call4027 = call i64 @min({ i64, [0 x i64] }* %_arr4025, i64 %_len4026)
  store i64 %_min_call4027, i64* %_min_decl4028
  %_arr4029 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4021
  %_len4030 = load i64, i64* %_len4023
  %_max_call4031 = call i64 @max({ i64, [0 x i64] }* %_arr4029, i64 %_len4030)
  store i64 %_max_call4031, i64* %_max_decl4032
  %_max4033 = load i64, i64* %_max_decl4032
  %_min4034 = load i64, i64* %_min_decl4028
  %_bop_result4035 = sub i64 %_max4033, %_min4034
  %_bop_result4036 = add i64 %_bop_result4035, 1
  %_raw_array4037 = call i64* @oat_alloc_array(i64 %_bop_result4036)
  %_array4038 = bitcast i64* %_raw_array4037 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4038, { i64, [0 x i64] }** %_counts_decl4039
  store i64 0, i64* %_i_decl4040
  br label %_while_cond4066
_while_body4067:
  %_counts4044 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts_decl4039
  %_arr4045 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4021
  %_i4046 = load i64, i64* %_i_decl4040
  %_reference4047 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4045, i32 0, i32 1, i64 %_i4046
  %_index4048 = load i64, i64* %_reference4047
  %_min4049 = load i64, i64* %_min_decl4028
  %_bop_result4050 = sub i64 %_index4048, %_min4049
  %_reference4051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4044, i32 0, i32 1, i64 %_bop_result4050
  %_index4052 = load i64, i64* %_reference4051
  %_bop_result4053 = add i64 %_index4052, 1
  %_counts4054 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts_decl4039
  %_arr4055 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4021
  %_i4056 = load i64, i64* %_i_decl4040
  %_reference4057 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4055, i32 0, i32 1, i64 %_i4056
  %_index4058 = load i64, i64* %_reference4057
  %_min4059 = load i64, i64* %_min_decl4028
  %_bop_result4060 = sub i64 %_index4058, %_min4059
  %_gep4061 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4054, i32 0, i32 1, i64 %_bop_result4060
  store i64 %_bop_result4053, i64* %_gep4061
  %_i4063 = load i64, i64* %_i_decl4040
  %_bop_result4064 = add i64 %_i4063, 1
  store i64 %_bop_result4064, i64* %_i_decl4040
  br label %_while_cond4066
_while_cond4066:
  %_i4041 = load i64, i64* %_i_decl4040
  %_len4042 = load i64, i64* %_len4023
  %_bop_result4043 = icmp slt i64 %_i4041, %_len4042
  br i1 %_bop_result4043, label %_while_body4067, label %_while_end4068
_while_end4068:
  %_min4069 = load i64, i64* %_min_decl4028
  store i64 %_min4069, i64* %_i_decl4070
  store i64 0, i64* %_j_decl4071
  %_len4072 = load i64, i64* %_len4023
  %_raw_array4073 = call i64* @oat_alloc_array(i64 %_len4072)
  %_array4074 = bitcast i64* %_raw_array4073 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4074, { i64, [0 x i64] }** %_out_decl4075
  br label %_while_cond4114
_while_body4115:
  br label %_if4110
_if4110:
  %_counts4079 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts_decl4039
  %_i4080 = load i64, i64* %_i_decl4070
  %_min4081 = load i64, i64* %_min_decl4028
  %_bop_result4082 = sub i64 %_i4080, %_min4081
  %_reference4083 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4079, i32 0, i32 1, i64 %_bop_result4082
  %_index4084 = load i64, i64* %_reference4083
  %_bop_result4085 = icmp sgt i64 %_index4084, 0
  br i1 %_bop_result4085, label %_then4111, label %_else4112
_then4111:
  %_i4086 = load i64, i64* %_i_decl4070
  %_out4087 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out_decl4075
  %_j4088 = load i64, i64* %_j_decl4071
  %_gep4089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out4087, i32 0, i32 1, i64 %_j4088
  store i64 %_i4086, i64* %_gep4089
  %_counts4091 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts_decl4039
  %_i4092 = load i64, i64* %_i_decl4070
  %_min4093 = load i64, i64* %_min_decl4028
  %_bop_result4094 = sub i64 %_i4092, %_min4093
  %_reference4095 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4091, i32 0, i32 1, i64 %_bop_result4094
  %_index4096 = load i64, i64* %_reference4095
  %_bop_result4097 = sub i64 %_index4096, 1
  %_counts4098 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts_decl4039
  %_i4099 = load i64, i64* %_i_decl4070
  %_min4100 = load i64, i64* %_min_decl4028
  %_bop_result4101 = sub i64 %_i4099, %_min4100
  %_gep4102 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4098, i32 0, i32 1, i64 %_bop_result4101
  store i64 %_bop_result4097, i64* %_gep4102
  %_j4104 = load i64, i64* %_j_decl4071
  %_bop_result4105 = add i64 %_j4104, 1
  store i64 %_bop_result4105, i64* %_j_decl4071
  br label %_end_if4113
_else4112:
  %_i4107 = load i64, i64* %_i_decl4070
  %_bop_result4108 = add i64 %_i4107, 1
  store i64 %_bop_result4108, i64* %_i_decl4070
  br label %_end_if4113
_end_if4113:
  br label %_while_cond4114
_while_cond4114:
  %_i4076 = load i64, i64* %_i_decl4070
  %_max4077 = load i64, i64* %_max_decl4032
  %_bop_result4078 = icmp sle i64 %_i4076, %_max4077
  br i1 %_bop_result4078, label %_while_body4115, label %_while_end4116
_while_end4116:
  %_out4117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out_decl4075
  ret { i64, [0 x i64] }* %_out4117
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3990 = alloca i64
  %_argv3992 = alloca { i64, [0 x i8*] }*
  %_arr_decl4005 = alloca { i64, [0 x i64] }*
  %_len_decl4006 = alloca i64
  %_sorted_decl4017 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3990
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3992
  %_raw_array3994 = call i64* @oat_alloc_array(i64 9)
  %_array3995 = bitcast i64* %_raw_array3994 to { i64, [0 x i64] }*
  %_arr_gep3996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3995, i32 0, i32 1, i32 0
  store i64 65, i64* %_arr_gep3996
  %_arr_gep3997 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3995, i32 0, i32 1, i32 1
  store i64 70, i64* %_arr_gep3997
  %_arr_gep3998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3995, i32 0, i32 1, i32 2
  store i64 72, i64* %_arr_gep3998
  %_arr_gep3999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3995, i32 0, i32 1, i32 3
  store i64 90, i64* %_arr_gep3999
  %_arr_gep4000 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3995, i32 0, i32 1, i32 4
  store i64 65, i64* %_arr_gep4000
  %_arr_gep4001 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3995, i32 0, i32 1, i32 5
  store i64 65, i64* %_arr_gep4001
  %_arr_gep4002 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3995, i32 0, i32 1, i32 6
  store i64 69, i64* %_arr_gep4002
  %_arr_gep4003 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3995, i32 0, i32 1, i32 7
  store i64 89, i64* %_arr_gep4003
  %_arr_gep4004 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3995, i32 0, i32 1, i32 8
  store i64 67, i64* %_arr_gep4004
  store { i64, [0 x i64] }* %_array3995, { i64, [0 x i64] }** %_arr_decl4005
  store i64 9, i64* %_len_decl4006
  %_arr4007 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl4005
  %_string_of_array_call4008 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr4007)
  call void @print_string(i8* %_string_of_array_call4008)
  %_loaded_str4012 = load i8*, i8** @_casted_array4011
  call void @print_string(i8* %_loaded_str4012)
  %_arr4014 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr_decl4005
  %_len4015 = load i64, i64* %_len_decl4006
  %_count_sort_call4016 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr4014, i64 %_len4015)
  store { i64, [0 x i64] }* %_count_sort_call4016, { i64, [0 x i64] }** %_sorted_decl4017
  %_sorted4018 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_sorted_decl4017
  %_string_of_array_call4019 = call i8* @string_of_array({ i64, [0 x i64] }* %_sorted4018)
  call void @print_string(i8* %_string_of_array_call4019)
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
