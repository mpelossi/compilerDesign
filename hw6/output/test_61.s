	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$17, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$18, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rdi), %rsi
	movq	(%rdx), %rdi
	addq	%rsi, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	