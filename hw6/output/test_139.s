	.data
	.globl	c
c:
	.quad	_global_struct7166
	.data
	.globl	_global_struct7166
_global_struct7166:
	.quad	10
	.quad	20
	.quad	30
	.quad	rot
	.text
	.globl	rot
rot:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%rdx)
	pushq	%r9 
	pushq	%rdx
	movq	$32, %rdi
	callq	oat_malloc
	popq	%rdx
	popq	%r9 
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %r8 
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	%rsi, (%rdi)
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	movq	%rsi, (%rdi)
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	movq	%rsi, (%rdi)
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, %rdi
	movq	%rsi, (%rdi)
	movq	%r8 , (%r9 )
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
	leaq	c(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	leaq	c(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%r15
	movq	%rsi, %r15
	pushq	%rsi
	callq	*%r15
	popq	%rsi
	popq	%r15
	movq	%rax, %rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	