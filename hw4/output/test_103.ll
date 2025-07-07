; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_board5066 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5068 = alloca i64
  %_j5070 = alloca i64
  %_count5072 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board5066
  store i64 %i, i64* %_i5068
  store i64 %j, i64* %_j5070
  store i64 %count, i64* %_count5072
  br label %_if5097
_if5097:
  %_i5074 = load i64, i64* %_i5068
  %_bop_result5075 = icmp sge i64 %_i5074, 0
  %_j5076 = load i64, i64* %_j5070
  %_bop_result5077 = icmp sge i64 %_j5076, 0
  %_bop_result5078 = and i1 %_bop_result5075, %_bop_result5077
  %_i5079 = load i64, i64* %_i5068
  %_len5080 = load i64, i64* @len
  %_bop_result5081 = icmp slt i64 %_i5079, %_len5080
  %_bop_result5082 = and i1 %_bop_result5078, %_bop_result5081
  %_j5083 = load i64, i64* %_j5070
  %_len5084 = load i64, i64* @len
  %_bop_result5085 = icmp slt i64 %_j5083, %_len5084
  %_bop_result5086 = and i1 %_bop_result5082, %_bop_result5085
  br i1 %_bop_result5086, label %_then5098, label %_else5099
_then5098:
  %_count5087 = load i64, i64* %_count5072
  %_board5088 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5066
  %_i5089 = load i64, i64* %_i5068
  %_reference5090 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board5088, i32 0, i32 1, i64 %_i5089
  %_index5091 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference5090
  %_j5092 = load i64, i64* %_j5070
  %_reference5093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5091, i32 0, i32 1, i64 %_j5092
  %_index5094 = load i64, i64* %_reference5093
  %_bop_result5095 = add i64 %_count5087, %_index5094
  ret i64 %_bop_result5095
_else5099:
  %_count5096 = load i64, i64* %_count5072
  ret i64 %_count5096
_end_if5100:
  ret i64 %_bop_result5095
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_board4967 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4969 = alloca i64
  %_j4971 = alloca i64
  %_alive_decl4980 = alloca i64
  %_count_decl4981 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board4967
  store i64 %i, i64* %_i4969
  store i64 %j, i64* %_j4971
  %_board4973 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4967
  %_i4974 = load i64, i64* %_i4969
  %_reference4975 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board4973, i32 0, i32 1, i64 %_i4974
  %_index4976 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference4975
  %_j4977 = load i64, i64* %_j4971
  %_reference4978 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4976, i32 0, i32 1, i64 %_j4977
  %_index4979 = load i64, i64* %_reference4978
  store i64 %_index4979, i64* %_alive_decl4980
  store i64 0, i64* %_count_decl4981
  %_board4982 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4967
  %_i4983 = load i64, i64* %_i4969
  %_bop_result4984 = sub i64 %_i4983, 1
  %_j4985 = load i64, i64* %_j4971
  %_bop_result4986 = sub i64 %_j4985, 1
  %_count4987 = load i64, i64* %_count_decl4981
  %_check_call4988 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4982, i64 %_bop_result4984, i64 %_bop_result4986, i64 %_count4987)
  store i64 %_check_call4988, i64* %_count_decl4981
  %_board4990 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4967
  %_i4991 = load i64, i64* %_i4969
  %_bop_result4992 = sub i64 %_i4991, 1
  %_j4993 = load i64, i64* %_j4971
  %_count4994 = load i64, i64* %_count_decl4981
  %_check_call4995 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4990, i64 %_bop_result4992, i64 %_j4993, i64 %_count4994)
  store i64 %_check_call4995, i64* %_count_decl4981
  %_board4997 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4967
  %_i4998 = load i64, i64* %_i4969
  %_bop_result4999 = sub i64 %_i4998, 1
  %_j5000 = load i64, i64* %_j4971
  %_bop_result5001 = add i64 %_j5000, 1
  %_count5002 = load i64, i64* %_count_decl4981
  %_check_call5003 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4997, i64 %_bop_result4999, i64 %_bop_result5001, i64 %_count5002)
  store i64 %_check_call5003, i64* %_count_decl4981
  %_board5005 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4967
  %_i5006 = load i64, i64* %_i4969
  %_j5007 = load i64, i64* %_j4971
  %_bop_result5008 = sub i64 %_j5007, 1
  %_count5009 = load i64, i64* %_count_decl4981
  %_check_call5010 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5005, i64 %_i5006, i64 %_bop_result5008, i64 %_count5009)
  store i64 %_check_call5010, i64* %_count_decl4981
  %_board5012 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4967
  %_i5013 = load i64, i64* %_i4969
  %_j5014 = load i64, i64* %_j4971
  %_bop_result5015 = add i64 %_j5014, 1
  %_count5016 = load i64, i64* %_count_decl4981
  %_check_call5017 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5012, i64 %_i5013, i64 %_bop_result5015, i64 %_count5016)
  store i64 %_check_call5017, i64* %_count_decl4981
  %_board5019 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4967
  %_i5020 = load i64, i64* %_i4969
  %_bop_result5021 = add i64 %_i5020, 1
  %_j5022 = load i64, i64* %_j4971
  %_bop_result5023 = sub i64 %_j5022, 1
  %_count5024 = load i64, i64* %_count_decl4981
  %_check_call5025 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5019, i64 %_bop_result5021, i64 %_bop_result5023, i64 %_count5024)
  store i64 %_check_call5025, i64* %_count_decl4981
  %_board5027 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4967
  %_i5028 = load i64, i64* %_i4969
  %_bop_result5029 = add i64 %_i5028, 1
  %_j5030 = load i64, i64* %_j4971
  %_count5031 = load i64, i64* %_count_decl4981
  %_check_call5032 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5027, i64 %_bop_result5029, i64 %_j5030, i64 %_count5031)
  store i64 %_check_call5032, i64* %_count_decl4981
  %_board5034 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4967
  %_i5035 = load i64, i64* %_i4969
  %_bop_result5036 = add i64 %_i5035, 1
  %_j5037 = load i64, i64* %_j4971
  %_bop_result5038 = add i64 %_j5037, 1
  %_count5039 = load i64, i64* %_count_decl4981
  %_check_call5040 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5034, i64 %_bop_result5036, i64 %_bop_result5038, i64 %_count5039)
  store i64 %_check_call5040, i64* %_count_decl4981
  br label %_if5056
_if5056:
  %_alive5042 = load i64, i64* %_alive_decl4980
  %_bop_result5043 = icmp eq i64 %_alive5042, 1
  br i1 %_bop_result5043, label %_then5057, label %_end_if5059
_then5057:
  br label %_if5052
_if5052:
  %_count5044 = load i64, i64* %_count_decl4981
  %_bop_result5045 = icmp slt i64 %_count5044, 2
  br i1 %_bop_result5045, label %_then5053, label %_else5054
_then5053:
  ret i64 0
_else5054:
  br label %_if5048
_if5048:
  %_count5046 = load i64, i64* %_count_decl4981
  %_bop_result5047 = icmp slt i64 %_count5046, 4
  br i1 %_bop_result5047, label %_then5049, label %_end_if5051
_then5049:
  ret i64 1
_end_if5051:
  br label %_end_if5055
_end_if5055:
  ret i64 0
_end_if5059:
  br label %_if5062
_if5062:
  %_count5060 = load i64, i64* %_count_decl4981
  %_bop_result5061 = icmp eq i64 %_count5060, 3
  br i1 %_bop_result5061, label %_then5063, label %_else5064
_then5063:
  ret i64 1
_else5064:
  ret i64 0
_end_if5065:
  ret i64 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4838 = alloca i64
  %_argv4840 = alloca { i64, [0 x i8*] }*
  %_board_decl4872 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_new_board_decl4903 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i_decl4904 = alloca i64
  %_j_decl4913 = alloca i64
  %_i_decl4939 = alloca i64
  %_j_decl4943 = alloca i64
  store i64 %argc, i64* %_argc4838
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4840
  %_raw_array4842 = call i64* @oat_alloc_array(i64 4)
  %_array4843 = bitcast i64* %_raw_array4842 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4844 = call i64* @oat_alloc_array(i64 4)
  %_array4845 = bitcast i64* %_raw_array4844 to { i64, [0 x i64] }*
  %_arr_gep4846 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4845, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep4846
  %_arr_gep4847 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4845, i32 0, i32 1, i32 1
  store i64 0, i64* %_arr_gep4847
  %_arr_gep4848 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4845, i32 0, i32 1, i32 2
  store i64 0, i64* %_arr_gep4848
  %_arr_gep4849 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4845, i32 0, i32 1, i32 3
  store i64 0, i64* %_arr_gep4849
  %_arr_gep4850 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4843, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4845, { i64, [0 x i64] }** %_arr_gep4850
  %_raw_array4851 = call i64* @oat_alloc_array(i64 4)
  %_array4852 = bitcast i64* %_raw_array4851 to { i64, [0 x i64] }*
  %_arr_gep4853 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4852, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep4853
  %_arr_gep4854 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4852, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep4854
  %_arr_gep4855 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4852, i32 0, i32 1, i32 2
  store i64 1, i64* %_arr_gep4855
  %_arr_gep4856 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4852, i32 0, i32 1, i32 3
  store i64 1, i64* %_arr_gep4856
  %_arr_gep4857 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4843, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4852, { i64, [0 x i64] }** %_arr_gep4857
  %_raw_array4858 = call i64* @oat_alloc_array(i64 4)
  %_array4859 = bitcast i64* %_raw_array4858 to { i64, [0 x i64] }*
  %_arr_gep4860 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4859, i32 0, i32 1, i32 0
  store i64 1, i64* %_arr_gep4860
  %_arr_gep4861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4859, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep4861
  %_arr_gep4862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4859, i32 0, i32 1, i32 2
  store i64 1, i64* %_arr_gep4862
  %_arr_gep4863 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4859, i32 0, i32 1, i32 3
  store i64 0, i64* %_arr_gep4863
  %_arr_gep4864 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4843, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4859, { i64, [0 x i64] }** %_arr_gep4864
  %_raw_array4865 = call i64* @oat_alloc_array(i64 4)
  %_array4866 = bitcast i64* %_raw_array4865 to { i64, [0 x i64] }*
  %_arr_gep4867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4866, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep4867
  %_arr_gep4868 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4866, i32 0, i32 1, i32 1
  store i64 0, i64* %_arr_gep4868
  %_arr_gep4869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4866, i32 0, i32 1, i32 2
  store i64 0, i64* %_arr_gep4869
  %_arr_gep4870 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4866, i32 0, i32 1, i32 3
  store i64 0, i64* %_arr_gep4870
  %_arr_gep4871 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4843, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4866, { i64, [0 x i64] }** %_arr_gep4871
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4843, { i64, [0 x { i64, [0 x i64] }*] }** %_board_decl4872
  %_raw_array4873 = call i64* @oat_alloc_array(i64 4)
  %_array4874 = bitcast i64* %_raw_array4873 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4875 = call i64* @oat_alloc_array(i64 4)
  %_array4876 = bitcast i64* %_raw_array4875 to { i64, [0 x i64] }*
  %_arr_gep4877 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4876, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep4877
  %_arr_gep4878 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4876, i32 0, i32 1, i32 1
  store i64 0, i64* %_arr_gep4878
  %_arr_gep4879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4876, i32 0, i32 1, i32 2
  store i64 0, i64* %_arr_gep4879
  %_arr_gep4880 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4876, i32 0, i32 1, i32 3
  store i64 0, i64* %_arr_gep4880
  %_arr_gep4881 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4874, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4876, { i64, [0 x i64] }** %_arr_gep4881
  %_raw_array4882 = call i64* @oat_alloc_array(i64 4)
  %_array4883 = bitcast i64* %_raw_array4882 to { i64, [0 x i64] }*
  %_arr_gep4884 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4883, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep4884
  %_arr_gep4885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4883, i32 0, i32 1, i32 1
  store i64 0, i64* %_arr_gep4885
  %_arr_gep4886 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4883, i32 0, i32 1, i32 2
  store i64 0, i64* %_arr_gep4886
  %_arr_gep4887 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4883, i32 0, i32 1, i32 3
  store i64 0, i64* %_arr_gep4887
  %_arr_gep4888 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4874, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4883, { i64, [0 x i64] }** %_arr_gep4888
  %_raw_array4889 = call i64* @oat_alloc_array(i64 4)
  %_array4890 = bitcast i64* %_raw_array4889 to { i64, [0 x i64] }*
  %_arr_gep4891 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4890, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep4891
  %_arr_gep4892 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4890, i32 0, i32 1, i32 1
  store i64 0, i64* %_arr_gep4892
  %_arr_gep4893 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4890, i32 0, i32 1, i32 2
  store i64 0, i64* %_arr_gep4893
  %_arr_gep4894 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4890, i32 0, i32 1, i32 3
  store i64 0, i64* %_arr_gep4894
  %_arr_gep4895 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4874, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4890, { i64, [0 x i64] }** %_arr_gep4895
  %_raw_array4896 = call i64* @oat_alloc_array(i64 4)
  %_array4897 = bitcast i64* %_raw_array4896 to { i64, [0 x i64] }*
  %_arr_gep4898 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4897, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep4898
  %_arr_gep4899 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4897, i32 0, i32 1, i32 1
  store i64 0, i64* %_arr_gep4899
  %_arr_gep4900 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4897, i32 0, i32 1, i32 2
  store i64 0, i64* %_arr_gep4900
  %_arr_gep4901 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4897, i32 0, i32 1, i32 3
  store i64 0, i64* %_arr_gep4901
  %_arr_gep4902 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4874, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4897, { i64, [0 x i64] }** %_arr_gep4902
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4874, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board_decl4903
  store i64 0, i64* %_i_decl4904
  br label %_while_cond4936
_while_body4937:
  %_raw_array4907 = call i64* @oat_alloc_array(i64 4)
  %_array4908 = bitcast i64* %_raw_array4907 to { i64, [0 x i64] }*
  %_new_board4909 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board_decl4903
  %_i4910 = load i64, i64* %_i_decl4904
  %_gep4911 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board4909, i32 0, i32 1, i64 %_i4910
  store { i64, [0 x i64] }* %_array4908, { i64, [0 x i64] }** %_gep4911
  store i64 0, i64* %_j_decl4913
  br label %_while_cond4930
_while_body4931:
  %_board4916 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board_decl4872
  %_i4917 = load i64, i64* %_i_decl4904
  %_j4918 = load i64, i64* %_j_decl4913
  %_val_at_call4919 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_board4916, i64 %_i4917, i64 %_j4918)
  %_new_board4920 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board_decl4903
  %_i4921 = load i64, i64* %_i_decl4904
  %_reference4922 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board4920, i32 0, i32 1, i64 %_i4921
  %_index4923 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference4922
  %_j4924 = load i64, i64* %_j_decl4913
  %_gep4925 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4923, i32 0, i32 1, i64 %_j4924
  store i64 %_val_at_call4919, i64* %_gep4925
  %_j4927 = load i64, i64* %_j_decl4913
  %_bop_result4928 = add i64 %_j4927, 1
  store i64 %_bop_result4928, i64* %_j_decl4913
  br label %_while_cond4930
_while_cond4930:
  %_j4914 = load i64, i64* %_j_decl4913
  %_bop_result4915 = icmp slt i64 %_j4914, 4
  br i1 %_bop_result4915, label %_while_body4931, label %_while_end4932
_while_end4932:
  %_i4933 = load i64, i64* %_i_decl4904
  %_bop_result4934 = add i64 %_i4933, 1
  store i64 %_bop_result4934, i64* %_i_decl4904
  br label %_while_cond4936
_while_cond4936:
  %_i4905 = load i64, i64* %_i_decl4904
  %_bop_result4906 = icmp slt i64 %_i4905, 4
  br i1 %_bop_result4906, label %_while_body4937, label %_while_end4938
_while_end4938:
  store i64 0, i64* %_i_decl4939
  br label %_while_cond4964
_while_body4965:
  store i64 0, i64* %_j_decl4943
  br label %_while_cond4958
_while_body4959:
  %_new_board4947 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board_decl4903
  %_i4948 = load i64, i64* %_i_decl4939
  %_reference4949 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board4947, i32 0, i32 1, i64 %_i4948
  %_index4950 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference4949
  %_j4951 = load i64, i64* %_j_decl4943
  %_reference4952 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4950, i32 0, i32 1, i64 %_j4951
  %_index4953 = load i64, i64* %_reference4952
  call void @print_int(i64 %_index4953)
  %_j4955 = load i64, i64* %_j_decl4943
  %_bop_result4956 = add i64 %_j4955, 1
  store i64 %_bop_result4956, i64* %_j_decl4943
  br label %_while_cond4958
_while_cond4958:
  %_j4944 = load i64, i64* %_j_decl4943
  %_len4945 = load i64, i64* @len
  %_bop_result4946 = icmp slt i64 %_j4944, %_len4945
  br i1 %_bop_result4946, label %_while_body4959, label %_while_end4960
_while_end4960:
  %_i4961 = load i64, i64* %_i_decl4939
  %_bop_result4962 = add i64 %_i4961, 1
  store i64 %_bop_result4962, i64* %_i_decl4939
  br label %_while_cond4964
_while_cond4964:
  %_i4940 = load i64, i64* %_i_decl4939
  %_len4941 = load i64, i64* @len
  %_bop_result4942 = icmp slt i64 %_i4940, %_len4941
  br i1 %_bop_result4942, label %_while_body4965, label %_while_end4966
_while_end4966:
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
