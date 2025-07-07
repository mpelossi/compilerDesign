	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rsi)
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rdi
	cmpq	$0, %rdi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then2792
	jmp	_else2791
	.text
_else2791:
	movq	(%rsi), %rdx
	movq	(%rsi), %rdi
	subq	$1, %rdi
	pushq	%r8 
	pushq	%rdx
	callq	f
	popq	%rdx
	popq	%r8 
	movq	%rax, %rdi
	imulq	%rdx, %rdi
	movq	%rdi, (%r8 )
	jmp	_merge2790
	.text
_merge2790:
	movq	(%r8 ), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then2792:
	movq	$1, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_merge2790
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rdi
	callq	f
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	