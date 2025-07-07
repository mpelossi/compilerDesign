	.text
	.globl	create_pair
create_pair:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%rdx)
	movq	%rsi, (%r9 )
	pushq	%r9 
	pushq	%rdx
	movq	$16, %rdi
	callq	oat_malloc
	popq	%rdx
	popq	%r9 
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %r8 
	movq	(%rdx), %rdi
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	%rdi, (%rsi)
	movq	(%r9 ), %rdi
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	%rdi, (%rsi)
	movq	%r8 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	pushq	%rsi
	movq	$0, %rsi
	movq	$1, %rdi
	callq	create_pair
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdi, (%rsi)
	movq	(%rsi), %rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdx
	movq	(%rsi), %rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdi
	andq	%rdx, %rdi
	cmpq	$0, %rdi
	jne	_then6802
	jmp	_else6801
	.text
_else6801:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge6800:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then6802:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	