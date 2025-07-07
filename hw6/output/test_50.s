	.text
	.globl	naive_mod
naive_mod:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	start
	.text
final:
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	subq	%rsi, %rax
	movq	%rax, %rsi
	subq	%rsi, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
start:
	movq	(%r8 ), %rdx
	addq	%rsi, %rdx
	movq	%rdx, (%r8 )
	cmpq	%rdi, %rdx
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	final
	jmp	start
	.text
	.globl	naive_prime
naive_prime:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$2, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
final_false:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
final_true:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
inc:
	movq	(%r8 ), %rsi
	addq	$1, %rdx
	movq	%rdx, (%r8 )
	pushq	%r8 
	pushq	%rdi
	callq	naive_mod
	popq	%rdi
	popq	%r8 
	movq	%rax, %rsi
	movq	$0, %rax
	cmpq	%rsi, %rax
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	final_false
	jmp	loop
	.text
loop:
	movq	(%r8 ), %rdx
	movq	%rdx, %rsi
	imulq	%rdx, %rsi
	cmpq	%rdi, %rsi
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	final_true
	jmp	inc
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$19, %rdi
	callq	naive_prime
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	