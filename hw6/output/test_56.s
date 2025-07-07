	.text
	.globl	factorial
factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rdx)
	movq	$1, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	start
	.text
end:
	movq	(%r8 ), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
start:
	movq	(%rdx), %rdi
	cmpq	$0, %rdi
	setg	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	then
	jmp	end
	.text
then:
	movq	(%r8 ), %rdi
	movq	(%rdx), %rsi
	imulq	%rsi, %rdi
	movq	%rdi, (%r8 )
	movq	(%rdx), %rdi
	subq	$1, %rdi
	movq	%rdi, (%rdx)
	jmp	start
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rdi
	callq	factorial
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	