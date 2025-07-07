	.data
	.globl	test1
test1:
	.quad	0
	.quad	0
	.quad	100
	.data
	.globl	test2
test2:
	.quad	test1
	.quad	0
	.quad	10
	.data
	.globl	test3
test3:
	.quad	0
	.quad	0
	.quad	1
	.data
	.globl	test
test:
	.quad	test2
	.quad	test3
	.quad	5
	.text
	.globl	sum_tree
sum_tree:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	$0, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	then
	jmp	else
	.text
else:
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdx
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	pushq	%rdi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	sum_tree
	popq	%rdx
	popq	%rdi
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdi
	pushq	%rsi
	callq	sum_tree
	popq	%rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
then:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	test(%rip), %rdi
	callq	sum_tree
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	