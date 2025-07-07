; generated from: ./sharedtests/dbernhard/print_bool.oat
target triple = "x86_64-unknown-linux"
@gb = global i1 0

define i1 @get() {
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc5642 = alloca i64
  %_args5644 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc5642
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args5644
  %_gb5646 = load i1, i1* @gb
  call void @print_bool(i1 %_gb5646)
  %_get_call5648 = call i1 @get()
  call void @print_bool(i1 %_get_call5648)
  call void @print_bool(i1 0)
  ret i64 5
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
