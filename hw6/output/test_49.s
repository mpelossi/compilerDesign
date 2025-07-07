	.text
	.globl	one_iteration
one_iteration:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rsi
	xorq	%rsi, %rdi
	movq	%rsi, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rsi
	movq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rsi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdi
	movq	%rdx, %rsi
	xorq	%rdi, %rsi
	movq	%rsi, %rax
	movq	$63, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdi
	andq	$1, %rdi
	orq	%rsi, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$1, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
end:
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
loop:
	movq	(%r8 ), %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, (%r8 )
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	callq	one_iteration
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %rdx
	cmpq	$5, %rsi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	end
	jmp	loop