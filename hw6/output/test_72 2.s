	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$488, %rsp
	subq	$8, %rsp
	movq	%rsp, -400(%rbp)
	subq	$8, %rsp
	movq	%rsp, -488(%rbp)
	subq	$8, %rsp
	movq	%rsp, -152(%rbp)
	subq	$8, %rsp
	movq	%rsp, -424(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, -160(%rbp)
	subq	$8, %rsp
	movq	%rsp, -448(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -168(%rbp)
	subq	$8, %rsp
	movq	%rsp, -456(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, -176(%rbp)
	subq	$8, %rsp
	movq	%rsp, -464(%rbp)
	subq	$8, %rsp
	movq	%rsp, -184(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -192(%rbp)
	subq	$8, %rsp
	movq	%rsp, -256(%rbp)
	movq	$3, %rax
	movq	-256(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	-192(%rbp), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-400(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond505
	.text
_body504:
	movq	%r8 , %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-400(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-80(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -472(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -200(%rbp)
	subq	$8, %rsp
	movq	%rsp, -264(%rbp)
	movq	$1, %rax
	movq	-264(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-488(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond522
	.text
_body521:
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	pushq	%r11
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
	popq	%r11
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	-488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	-488(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond522
	.text
_body552:
	movq	%r8 , %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-424(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-96(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -480(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -216(%rbp)
	subq	$8, %rsp
	movq	%rsp, -280(%rbp)
	movq	$1, %rax
	movq	-280(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond570
	.text
_body569:
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	(%r11), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	pushq	%r11
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
	popq	%r11
	movq	-104(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond570
	.text
_body600:
	movq	%r8 , %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	-112(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -232(%rbp)
	subq	$8, %rsp
	movq	%rsp, -296(%rbp)
	movq	$1, %rax
	movq	-296(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond618
	.text
_body617:
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	(%r10), %rsi
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	pushq	%r11
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
	popq	%r11
	movq	-120(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond618
	.text
_body648:
	movq	%r8 , %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	-128(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -248(%rbp)
	subq	$8, %rsp
	movq	%rsp, -312(%rbp)
	movq	$1, %rax
	movq	-312(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond666
	.text
_body665:
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	(%r9 ), %rsi
	movq	-136(%rbp), %rax
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
	movq	-136(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rsi
	addq	$1, %rsi
	movq	%rsi, (%r9 )
	jmp	_cond666
	.text
_body696:
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-464(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
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
	movq	-144(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	-464(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, (%rsi)
	movq	-464(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-464(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond697
	.text
_cond505:
	movq	-400(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-408(%rbp), %rax
	cmpq	-8(%rbp), %rax
	setl	-320(%rbp)
	andq	$1, -320(%rbp)
	cmpq	$0, -320(%rbp)
	jne	_body504
	jmp	_post503
	.text
_cond522:
	movq	-488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	-16(%rbp), %rsi
	setl	-328(%rbp)
	andq	$1, -328(%rbp)
	cmpq	$0, -328(%rbp)
	jne	_body521
	jmp	_post520
	.text
_cond553:
	movq	-424(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-432(%rbp), %rax
	cmpq	-24(%rbp), %rax
	setl	-352(%rbp)
	andq	$1, -352(%rbp)
	cmpq	$0, -352(%rbp)
	jne	_body552
	jmp	_post551
	.text
_cond570:
	movq	(%r11), %rsi
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	-32(%rbp), %rsi
	setl	-360(%rbp)
	andq	$1, -360(%rbp)
	cmpq	$0, -360(%rbp)
	jne	_body569
	jmp	_post568
	.text
_cond601:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	-40(%rbp), %rdx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body600
	jmp	_post599
	.text
_cond618:
	movq	(%r10), %rsi
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	-48(%rbp), %rsi
	setl	-384(%rbp)
	andq	$1, -384(%rbp)
	cmpq	$0, -384(%rbp)
	jne	_body617
	jmp	_post616
	.text
_cond649:
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	-56(%rbp), %rdx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body648
	jmp	_post647
	.text
_cond666:
	movq	(%r9 ), %rsi
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	-64(%rbp), %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body665
	jmp	_post664
	.text
_cond697:
	movq	-464(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%r8 , %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	-72(%rbp), %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body696
	jmp	_post695
	.text
_post503:
	movq	-192(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -208(%rbp)
	subq	$8, %rsp
	movq	%rsp, -272(%rbp)
	movq	$3, %rax
	movq	-272(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	-208(%rbp), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-424(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond553
	.text
_post520:
	movq	-200(%rbp), %rax
	movq	-472(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-400(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	-400(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond505
	.text
_post551:
	movq	-208(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r10
	pushq	%r9 
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r9 
	popq	%r10
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -224(%rbp)
	subq	$8, %rsp
	movq	%rsp, -288(%rbp)
	movq	$3, %rax
	movq	-288(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	-224(%rbp), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-448(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond601
	.text
_post568:
	movq	-216(%rbp), %rax
	movq	-480(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-424(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	movq	-424(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond553
	.text
_post599:
	movq	-224(%rbp), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r9 
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r9 
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -240(%rbp)
	subq	$8, %rsp
	movq	%rsp, -304(%rbp)
	movq	$3, %rax
	movq	-304(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	-240(%rbp), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-456(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond649
	.text
_post616:
	movq	-232(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, %rax
	movq	-448(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond601
	.text
_post647:
	movq	-240(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$3, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%r9 , (%rdx)
	movq	$0, %rax
	movq	-464(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond697
	.text
_post664:
	movq	-248(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, %rax
	movq	-456(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond649
	.text
_post695:
	movq	%r9 , %rax
	movq	-184(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rdx
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rdi
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, (%rdx)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rdx
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rdi
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rdx
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rdi
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	$2, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	-160(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	-176(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rdx
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rdi
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rdx
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rdi
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	