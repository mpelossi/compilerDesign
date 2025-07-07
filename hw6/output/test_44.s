	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	$8, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$10, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	gcd
	.text
continue_loop:
	movq	(%r8 ), %rdi
	cmpq	%rdx, %rdi
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	if
	jmp	else
	.text
else:
	movq	%rdx, %rax
	subq	%rdi, %rax
	movq	%rax, %rdi
	movq	%rdi, (%r9 )
	jmp	loop
	.text
gcd:
	movq	(%r8 ), %rdi
	movq	$0, %rax
	cmpq	%rdi, %rax
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	ret_b
	jmp	loop
	.text
if:
	subq	%rdx, %rdi
	movq	%rdi, (%r8 )
	jmp	loop
	.text
loop:
	movq	(%r9 ), %rdx
	movq	$0, %rax
	cmpq	%rdx, %rax
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	ret_a
	jmp	continue_loop
	.text
ret_a:
	movq	(%r8 ), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
ret_b:
	movq	(%r9 ), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	