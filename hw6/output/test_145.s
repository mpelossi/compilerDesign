	.data
	.globl	x
x:
	.quad	_global_arr7401
	.data
	.globl	_global_arr7401
_global_arr7401:
	.quad	3
	.quad	1
	.quad	2
	.quad	3
	.data
	.globl	y
y:
	.quad	_global_arr7400
	.data
	.globl	_global_arr7400
_global_arr7400:
	.quad	3
	.quad	4
	.quad	5
	.quad	6
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r9 )
	movq	%rsi, (%r10)
	movq	%rdx, (%r8 )
	movq	(%r8 ), %rdi
	cmpq	$0, %rdi
	jne	_then7416
	jmp	_else7415
	.text
_else7415:
	movq	(%r10), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge7414:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then7416:
	movq	(%r9 ), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%r8 
	pushq	%rdi
	movq	$1, %rdx
	callq	f
	popq	%rdi
	popq	%r8 
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rdi
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	$17, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%r8 
	pushq	%rdi
	movq	$1, %rdx
	callq	f
	popq	%rdi
	popq	%r8 
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rdi
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdx
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	$0, %rdx
	callq	f
	popq	%rdx
	popq	%rdi
	popq	%r8 
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rdi
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdi
	addq	%rdx, %rdi
	movq	%rdi, (%r8 )
	movq	(%r8 ), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	