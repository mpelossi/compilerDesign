; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc793 = alloca i64
  %_argv795 = alloca { i64, [0 x i8*] }*
  %_a1_decl808 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a2_decl820 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a3_decl832 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a4_decl844 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5_decl850 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc793
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv795
  %_raw_array797 = call i64* @oat_alloc_array(i64 3)
  %_array798 = bitcast i64* %_raw_array797 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array799 = call i64* @oat_alloc_array(i64 1)
  %_array800 = bitcast i64* %_raw_array799 to { i64, [0 x i64] }*
  %_arr_gep801 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array798, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array800, { i64, [0 x i64] }** %_arr_gep801
  %_raw_array802 = call i64* @oat_alloc_array(i64 1)
  %_array803 = bitcast i64* %_raw_array802 to { i64, [0 x i64] }*
  %_arr_gep804 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array798, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array803, { i64, [0 x i64] }** %_arr_gep804
  %_raw_array805 = call i64* @oat_alloc_array(i64 1)
  %_array806 = bitcast i64* %_raw_array805 to { i64, [0 x i64] }*
  %_arr_gep807 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array798, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array806, { i64, [0 x i64] }** %_arr_gep807
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array798, { i64, [0 x { i64, [0 x i64] }*] }** %_a1_decl808
  %_raw_array809 = call i64* @oat_alloc_array(i64 3)
  %_array810 = bitcast i64* %_raw_array809 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array811 = call i64* @oat_alloc_array(i64 1)
  %_array812 = bitcast i64* %_raw_array811 to { i64, [0 x i64] }*
  %_arr_gep813 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array810, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array812, { i64, [0 x i64] }** %_arr_gep813
  %_raw_array814 = call i64* @oat_alloc_array(i64 1)
  %_array815 = bitcast i64* %_raw_array814 to { i64, [0 x i64] }*
  %_arr_gep816 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array810, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array815, { i64, [0 x i64] }** %_arr_gep816
  %_raw_array817 = call i64* @oat_alloc_array(i64 1)
  %_array818 = bitcast i64* %_raw_array817 to { i64, [0 x i64] }*
  %_arr_gep819 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array810, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array818, { i64, [0 x i64] }** %_arr_gep819
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array810, { i64, [0 x { i64, [0 x i64] }*] }** %_a2_decl820
  %_raw_array821 = call i64* @oat_alloc_array(i64 3)
  %_array822 = bitcast i64* %_raw_array821 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array823 = call i64* @oat_alloc_array(i64 1)
  %_array824 = bitcast i64* %_raw_array823 to { i64, [0 x i64] }*
  %_arr_gep825 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array822, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array824, { i64, [0 x i64] }** %_arr_gep825
  %_raw_array826 = call i64* @oat_alloc_array(i64 1)
  %_array827 = bitcast i64* %_raw_array826 to { i64, [0 x i64] }*
  %_arr_gep828 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array822, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array827, { i64, [0 x i64] }** %_arr_gep828
  %_raw_array829 = call i64* @oat_alloc_array(i64 1)
  %_array830 = bitcast i64* %_raw_array829 to { i64, [0 x i64] }*
  %_arr_gep831 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array822, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array830, { i64, [0 x i64] }** %_arr_gep831
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array822, { i64, [0 x { i64, [0 x i64] }*] }** %_a3_decl832
  %_raw_array833 = call i64* @oat_alloc_array(i64 3)
  %_array834 = bitcast i64* %_raw_array833 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array835 = call i64* @oat_alloc_array(i64 1)
  %_array836 = bitcast i64* %_raw_array835 to { i64, [0 x i64] }*
  %_arr_gep837 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array834, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array836, { i64, [0 x i64] }** %_arr_gep837
  %_raw_array838 = call i64* @oat_alloc_array(i64 1)
  %_array839 = bitcast i64* %_raw_array838 to { i64, [0 x i64] }*
  %_arr_gep840 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array834, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array839, { i64, [0 x i64] }** %_arr_gep840
  %_raw_array841 = call i64* @oat_alloc_array(i64 1)
  %_array842 = bitcast i64* %_raw_array841 to { i64, [0 x i64] }*
  %_arr_gep843 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array834, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array842, { i64, [0 x i64] }** %_arr_gep843
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array834, { i64, [0 x { i64, [0 x i64] }*] }** %_a4_decl844
  %_raw_array845 = call i64* @oat_alloc_array(i64 3)
  %_array846 = bitcast i64* %_raw_array845 to { i64, [0 x i64] }*
  %_arr_gep847 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array846, i32 0, i32 1, i32 0
  store i64 0, i64* %_arr_gep847
  %_arr_gep848 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array846, i32 0, i32 1, i32 1
  store i64 1, i64* %_arr_gep848
  %_arr_gep849 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array846, i32 0, i32 1, i32 2
  store i64 2, i64* %_arr_gep849
  store { i64, [0 x i64] }* %_array846, { i64, [0 x i64] }** %_a5_decl850
  %_a5851 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5_decl850
  %_a2852 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2_decl820
  %_gep853 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2852, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_a5851, { i64, [0 x i64] }** %_gep853
  %_a2855 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2_decl820
  %_reference856 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2855, i32 0, i32 1, i32 0
  %_index857 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference856
  %_gep858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index857, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep858
  %_a2860 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2_decl820
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2860, { i64, [0 x { i64, [0 x i64] }*] }** %_a1_decl808
  %_a1862 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1_decl808
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1862, { i64, [0 x { i64, [0 x i64] }*] }** %_a3_decl832
  %_a4864 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4_decl844
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4864, { i64, [0 x { i64, [0 x i64] }*] }** %_a1_decl808
  %_a3866 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3_decl832
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a3866, { i64, [0 x { i64, [0 x i64] }*] }** %_a2_decl820
  %_a2868 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2_decl820
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2868, { i64, [0 x { i64, [0 x i64] }*] }** %_a4_decl844
  %_a4870 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4_decl844
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4870, { i64, [0 x { i64, [0 x i64] }*] }** %_a3_decl832
  %_a3872 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3_decl832
  %_reference873 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a3872, i32 0, i32 1, i32 0
  %_index874 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_reference873
  %_reference875 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index874, i32 0, i32 1, i32 0
  %_index876 = load i64, i64* %_reference875
  ret i64 %_index876
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
