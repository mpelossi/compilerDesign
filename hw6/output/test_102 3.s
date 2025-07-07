	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	%rdi, (%r10)
	movq	%rsi, (%r9 )
	movq	%rdx, (%r8 )
	movq	(%r10), %rsi
	movq	(%r9 ), %rdx
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rsi
	movq	(%r8 ), %rdx
	addq	%rsi, %rdx
	movq	%rdx, (%r11)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	(%r11), %rdx
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$552, %rsp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, -320(%rbp)
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -216(%rbp)
	subq	$8, %rsp
	movq	%rsp, -232(%rbp)
	subq	$8, %rsp
	movq	%rsp, -256(%rbp)
	subq	$8, %rsp
	movq	%rsp, -272(%rbp)
	subq	$8, %rsp
	movq	%rsp, -288(%rbp)
	subq	$8, %rsp
	movq	%rsp, -304(%rbp)
	subq	$8, %rsp
	movq	%rsp, -472(%rbp)
	subq	$8, %rsp
	movq	%rsp, -496(%rbp)
	subq	$8, %rsp
	movq	%rsp, -512(%rbp)
	subq	$8, %rsp
	movq	%rsp, -528(%rbp)
	subq	$8, %rsp
	movq	%rsp, -536(%rbp)
	subq	$8, %rsp
	movq	%rsp, -552(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-320(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2634
	.text
_body2633:
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-16(%rbp), %rax
	addq	-336(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-32(%rbp), %rax
	addq	-344(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-216(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-224(%rbp), %rax
	addq	-352(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	callq	foo
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	-240(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-248(%rbp), %rax
	addq	-360(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-256(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-264(%rbp), %rax
	addq	-368(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-272(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-280(%rbp), %rax
	addq	-376(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-288(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-296(%rbp), %rax
	addq	-384(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-304(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-312(%rbp), %rax
	addq	-392(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-472(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-472(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	callq	foo
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	-480(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	-472(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-472(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -488(%rbp)
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-488(%rbp), %rax
	addq	-400(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	-496(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-496(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-504(%rbp), %rax
	addq	-408(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	-512(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-512(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-520(%rbp), %rax
	addq	-416(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-528(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-528(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)
	movq	%rdx, %rax
	addq	-424(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	-536(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-536(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-528(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-512(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-496(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	callq	foo
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	-544(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-536(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-536(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	%rdx, %rax
	addq	-432(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	-552(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-552(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	%rdx, %rax
	addq	-440(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rdx
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	%rdx, %rax
	addq	-448(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rdx
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	%rdx, %rax
	addq	-456(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rdx
	movq	(%r9 ), %rsi
	movq	%rdx, %rax
	addq	%rsi, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	-320(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2634
	.text
_cond2634:
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	cmpq	$10000000, %rax
	setl	-40(%rbp)
	andq	$1, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	_body2633
	jmp	_post2632
	.text
_post2632:
	movq	(%r8 ), %rdi
	pushq	%rdi
	callq	print_int
	popq	%rdi
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	