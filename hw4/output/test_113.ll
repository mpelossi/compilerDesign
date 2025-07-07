; generated from: ./sharedtests/dbernhard/length.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5589 = alloca i64
  %_argv5591 = alloca { i64, [0 x i8*] }*
  %_a_decl5597 = alloca i64
  store i64 %argc, i64* %_argc5589
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5591
  %_argv5593 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv5591
  %_reference5594 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv5593, i32 0, i32 1, i32 1
  %_index5595 = load i8*, i8** %_reference5594
  %_length_of_string_call5596 = call i64 @length_of_string(i8* %_index5595)
  store i64 %_length_of_string_call5596, i64* %_a_decl5597
  %_a5598 = load i64, i64* %_a_decl5597
  ret i64 %_a5598
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
