	.data
	.globl	b
b:
	.quad	1
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	leaq	b(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	$0, %rdi
	jne	_then8309
	jmp	_else8308
	.text
_else8308:
	jmp	_merge8307
	.text
_merge8307:
	movq	(%rsi), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8309:
	movq	$1, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_merge8307