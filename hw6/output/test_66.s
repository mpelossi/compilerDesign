	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	$9, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rdi
	movq	(%r8 ), %rsi
	addq	%rsi, %rdi
	movq	%rdi, (%r9 )
	movq	(%r8 ), %rdx
	movq	(%r8 ), %rsi
	movq	(%r8 ), %rdi
	imulq	%rsi, %rdi
	movq	%rdx, %rsi
	addq	%rdi, %rsi
	movq	(%r9 ), %rdi
	movq	%rsi, %rax
	subq	%rdi, %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	$2, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	$2, %rcx
	sarq	%cl, %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	