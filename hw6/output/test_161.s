	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$12, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$800, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rdi
	movq	(%r8 ), %rsi
	subq	%rsi, %rdi
	cmpq	$0, %rdi
	setle	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then8224
	jmp	_else8223
	.text
_else8223:
	movq	(%rdx), %rsi
	movq	(%r8 ), %rdi
	movq	%rsi, %rax
	subq	%rdi, %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge8222:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8224:
	movq	(%rdx), %rdi
	movq	$0, %rsi
	subq	%rdi, %rsi
	movq	(%r8 ), %rdi
	movq	%rsi, %rax
	subq	%rdi, %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	