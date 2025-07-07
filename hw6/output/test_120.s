	.text
	.globl	gcd
gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%rdx)
	movq	%rsi, (%r8 )
	jmp	_cond6229
	.text
_body6228:
	movq	(%r8 ), %rdi
	movq	%rdi, (%r9 )
	movq	(%r8 ), %rsi
	movq	(%rdx), %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	callq	mod
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rdi
	movq	%rdi, (%r8 )
	movq	(%r9 ), %rdi
	movq	%rdi, (%rdx)
	jmp	_cond6229
	.text
_cond6229:
	movq	(%r8 ), %rdi
	cmpq	$0, %rdi
	setne	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body6228
	jmp	_post6227
	.text
_post6227:
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	mod
mod:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%rdx)
	movq	%rsi, (%r8 )
	movq	(%rdx), %rdi
	movq	%rdi, (%r9 )
	jmp	_cond6213
	.text
_body6212:
	movq	(%r9 ), %rsi
	movq	(%r8 ), %rdi
	movq	%rsi, %rax
	subq	%rdi, %rax
	movq	%rax, %rdi
	movq	%rdi, (%r9 )
	jmp	_cond6213
	.text
_cond6213:
	movq	(%r9 ), %rsi
	movq	(%r8 ), %rdi
	movq	%rsi, %rax
	subq	%rdi, %rax
	movq	%rax, %rdi
	cmpq	$0, %rdi
	setge	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body6212
	jmp	_post6211
	.text
_post6211:
	movq	(%r9 ), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	$64, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$48, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	(%rdi), %rsi
	movq	(%rdx), %rdi
	pushq	%rsi
	callq	gcd
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	