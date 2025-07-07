; generated from: ./sharedtests/dbernhard/tests_if6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc5787 = alloca i64
  %_args5789 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc5787
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args5789
  %_function_call5791 = call i64 @function(i64 0)
  %_function_call5792 = call i64 @function(i64 1)
  %_bop_result5793 = add i64 %_function_call5791, %_function_call5792
  %_function_call5794 = call i64 @function(i64 2)
  %_bop_result5795 = add i64 %_bop_result5793, %_function_call5794
  %_function_call5796 = call i64 @function(i64 3)
  %_bop_result5797 = add i64 %_bop_result5795, %_function_call5796
  ret i64 %_bop_result5797
}

define i64 @function(i64 %x) {
  %_x5767 = alloca i64
  store i64 %x, i64* %_x5767
  br label %_if5783
_if5783:
  %_x5769 = load i64, i64* %_x5767
  %_bop_result5770 = icmp eq i64 %_x5769, 0
  br i1 %_bop_result5770, label %_then5784, label %_else5785
_then5784:
  ret i64 10
_else5785:
  br label %_if5779
_if5779:
  %_x5771 = load i64, i64* %_x5767
  %_bop_result5772 = icmp eq i64 %_x5771, 1
  br i1 %_bop_result5772, label %_then5780, label %_else5781
_then5780:
  ret i64 0
_else5781:
  br label %_if5775
_if5775:
  %_x5773 = load i64, i64* %_x5767
  %_bop_result5774 = icmp eq i64 %_x5773, 2
  br i1 %_bop_result5774, label %_then5776, label %_else5777
_then5776:
  ret i64 50
_else5777:
  ret i64 5
_end_if5778:
  ret i64 50
_end_if5782:
  ret i64 0
_end_if5786:
  ret i64 10
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
