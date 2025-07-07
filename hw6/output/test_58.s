	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond15
	.text
_body14:
	movq	(%r8 ), %rsi
	movq	(%rdx), %rdi
	addq	%rsi, %rdi
	movq	(%rdx), %rsi
	imulq	%rsi, %rdi
	movq	%rdi, (%r8 )
	movq	(%rdx), %rdi
	addq	$1, %rdi
	movq	%rdi, (%rdx)
	jmp	_cond15
	.text
_cond15:
	movq	(%rdx), %rdi
	cmpq	$10, %rdi
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body14
	jmp	_post13
	.text
_post13:
	movq	(%r8 ), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	