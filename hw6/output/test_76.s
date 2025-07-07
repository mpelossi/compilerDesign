	.text
	.globl	fact
fact:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%r8 )
	movq	$1, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond793
	.text
_body792:
	movq	(%rdx), %rdi
	movq	(%r8 ), %rsi
	imulq	%rsi, %rdi
	movq	%rdi, (%rdx)
	movq	(%r8 ), %rdi
	subq	$1, %rdi
	movq	%rdi, (%r8 )
	jmp	_cond793
	.text
_cond793:
	movq	(%r8 ), %rdi
	cmpq	$0, %rdi
	setg	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body792
	jmp	_post791
	.text
_post791:
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rdi
	callq	fact
	movq	%rax, %rdi
	callq	string_of_int
	movq	%rax, %rdi
	pushq	%rdi
	callq	print_string
	popq	%rdi
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	