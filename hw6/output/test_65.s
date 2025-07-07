	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r10
	pushq	%r10
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r10
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %rdi
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$3, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%r9 )
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond254
	.text
_body253:
	movq	(%r9 ), %rdx
	movq	(%r10), %rsi
	movq	%rdx, %rax
	movq	%rax, %rdi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rdi
	addq	$1, %rdi
	movq	%rdi, (%r10)
	jmp	_cond254
	.text
_cond254:
	movq	(%r10), %rsi
	movq	(%r8 ), %rdi
	cmpq	%rdi, %rsi
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body253
	jmp	_post252
	.text
_post252:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	