	.text
	.globl	fibR
fibR:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%rdx)
	movq	(%rdx), %rdi
	cmpq	$0, %rdi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4725
	jmp	_else4724
	.text
_else4724:
	jmp	_merge4723
	.text
_else4729:
	jmp	_merge4728
	.text
_merge4723:
	movq	(%rdx), %rdi
	cmpq	$1, %rdi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4730
	jmp	_else4729
	.text
_merge4728:
	movq	(%rdx), %rdi
	subq	$1, %rdi
	pushq	%rdi
	pushq	%rdx
	callq	fibR
	popq	%rdx
	popq	%rdi
	movq	%rax, %rsi
	movq	(%rdx), %rdi
	subq	$2, %rdi
	pushq	%rsi
	callq	fibR
	popq	%rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4725:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4730:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	fibI
fibI:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%r8 )
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$1, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rdi
	cmpq	$0, %rdi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4690
	jmp	_else4689
	.text
_body4701:
	movq	(%r10), %rdi
	movq	%rdi, (%r9 )
	movq	(%r10), %rsi
	movq	(%rdx), %rdi
	addq	%rsi, %rdi
	movq	%rdi, (%r10)
	movq	(%r9 ), %rdi
	movq	%rdi, (%rdx)
	movq	(%r8 ), %rdi
	subq	$1, %rdi
	movq	%rdi, (%r8 )
	jmp	_cond4702
	.text
_cond4702:
	movq	(%r8 ), %rdi
	subq	$2, %rdi
	cmpq	$0, %rdi
	setg	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body4701
	jmp	_post4700
	.text
_else4689:
	jmp	_merge4688
	.text
_else4695:
	jmp	_merge4694
	.text
_merge4688:
	movq	(%r8 ), %rdi
	cmpq	$1, %rdi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4696
	jmp	_else4695
	.text
_merge4694:
	jmp	_cond4702
	.text
_post4700:
	movq	(%rdx), %rsi
	movq	(%r10), %rdi
	addq	%rsi, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4690:
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4696:
	movq	(%r10), %rdi
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
	movq	$1, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	pushq	%rdx
	movq	$12, %rdi
	callq	fibR
	popq	%rdx
	movq	%rax, %rdi
	cmpq	$144, %rdi
	sete	%sil
	andq	$1, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	$12, %rdi
	callq	fibI
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	cmpq	$144, %rdi
	sete	%dil
	andq	$1, %rdi
	andq	%rsi, %rdi
	cmpq	$0, %rdi
	jne	_then4676
	jmp	_else4675
	.text
_else4675:
	jmp	_merge4674
	.text
_merge4674:
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4676:
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_merge4674