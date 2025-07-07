	.data
	.globl	_str_arr2201
_str_arr2201:
	.asciz	"hello"
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	leaq	_str_arr2201(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	%rdi, (%rsi)
	movq	(%rsi), %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	callq	array_of_string
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdi
	movq	%rdi, (%r9 )
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond2217
	.text
_body2216:
	movq	(%r11), %r8 
	movq	(%r9 ), %rdx
	movq	(%r10), %rsi
	movq	%rdx, %rax
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
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdi
	addq	%r8 , %rdi
	movq	%rdi, (%r11)
	movq	(%r10), %rdi
	addq	$1, %rdi
	movq	%rdi, (%r10)
	jmp	_cond2217
	.text
_cond2217:
	movq	(%r10), %rdi
	cmpq	$5, %rdi
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body2216
	jmp	_post2215
	.text
_post2215:
	movq	(%r11), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	