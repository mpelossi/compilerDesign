	.text
	.globl	baz
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rcx, -8(%rbp)
	movq	%rdi, %r10
	addq	%rsi, %r10
	addq	%rdx, %r10
	addq	-8(%rbp), %r10
	addq	%r8 , %r10
	movq	%r10, %rdi
	addq	%r9 , %rdi
	addq	16(%rbp), %rdi
	addq	24(%rbp), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	bar
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rcx, -8(%rbp)
	addq	%rsi, %rdi
	movq	%rdi, %rsi
	addq	%rdx, %rsi
	movq	%rsi, %rdx
	addq	-8(%rbp), %rdx
	movq	%rdx, %r10
	addq	%r8 , %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%r10, %rcx
	callq	baz
	addq	$16, %rsp
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %rsi
	movq	%r10, %rdi
	addq	%r9 , %rdi
	addq	16(%rbp), %rdi
	addq	24(%rbp), %rdi
	addq	%rsi, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	pushq	%rdi
	movq	%rdi, %r9 
	movq	%rdi, %r8 
	movq	%rdi, %rcx
	movq	%rdi, %rdx
	movq	%rdi, %rsi
	callq	bar
	addq	$16, %rsp
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$1, %rdi
	callq	foo
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	