; generated from: ./sharedtests/dbernhard/tests_if7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc5826 = alloca i64
  %_args5828 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc5826
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args5828
  %_function_call5830 = call i64 @function(i64 0)
  %_function_call5831 = call i64 @function(i64 1)
  %_bop_result5832 = add i64 %_function_call5830, %_function_call5831
  %_function_call5833 = call i64 @function(i64 2)
  %_bop_result5834 = add i64 %_bop_result5832, %_function_call5833
  %_function_call5835 = call i64 @function(i64 3)
  %_bop_result5836 = add i64 %_bop_result5834, %_function_call5835
  ret i64 %_bop_result5836
}

define i64 @function(i64 %x) {
  %_x5798 = alloca i64
  store i64 %x, i64* %_x5798
  br label %_if5822
_if5822:
  %_x5800 = load i64, i64* %_x5798
  %_bop_result5801 = icmp eq i64 %_x5800, 0
  br i1 %_bop_result5801, label %_then5823, label %_else5824
_then5823:
  br label %_if5802
_if5802:
  br i1 1, label %_then5803, label %_end_if5805
_then5803:
  ret i64 1
_end_if5805:
  br label %_end_if5825
_else5824:
  br label %_if5818
_if5818:
  %_x5806 = load i64, i64* %_x5798
  %_bop_result5807 = icmp eq i64 %_x5806, 1
  br i1 %_bop_result5807, label %_then5819, label %_else5820
_then5819:
  br label %_if5808
_if5808:
  br i1 1, label %_then5809, label %_end_if5811
_then5809:
  ret i64 2
_end_if5811:
  br label %_end_if5821
_else5820:
  br label %_if5814
_if5814:
  %_x5812 = load i64, i64* %_x5798
  %_bop_result5813 = icmp eq i64 %_x5812, 2
  br i1 %_bop_result5813, label %_then5815, label %_else5816
_then5815:
  ret i64 50
_else5816:
  ret i64 0
_end_if5817:
  ret i64 50
_end_if5821:
  br label %_end_if5825
_end_if5825:
  ret i64 100
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
