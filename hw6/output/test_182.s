	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rcx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	%rdi, (%r9 )
	movq	%rsi, (%r10)
	movq	%rdx, (%r11)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rsi
	movq	(%r10), %rdi
	addq	%rdi, %rsi
	movq	(%r11), %rdi
	addq	%rdi, %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	addq	%rdi, %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	$-3
	pushq	$-4
	movq	$-5, %r9 
	movq	$5, %r8 
	movq	$4, %rcx
	movq	$3, %rdx
	movq	$2, %rsi
	movq	$1, %rdi
	callq	f
	addq	$16, %rsp
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	