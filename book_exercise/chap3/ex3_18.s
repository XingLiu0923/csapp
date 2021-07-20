	.file	"ex3_18.c"
	.text
	.globl	test
	.type	test, @function
test:
.LFB0:
	.cfi_startproc
	leaq	(%rdi,%rsi), %rax
	addq	%rdx, %rax
	movq	%rdi, %rcx
	addq	$3, %rcx
	js	.L5
	leaq	-2(%rdi), %rcx
	testq	%rcx, %rcx
	jle	.L1
	movq	%rdi, %rax
	imulq	%rdx, %rax
.L1:
	rep ret
.L5:
	cmpq	%rdx, %rsi
	js	.L3
	movq	%rsi, %rax
	imulq	%rdx, %rax
	ret
.L3:
	movq	%rdi, %rax
	imulq	%rsi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	test, .-test
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
