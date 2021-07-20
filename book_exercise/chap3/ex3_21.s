	.file	"ex3_21.c"
	.text
	.globl	test
	.type	test, @function
test:
.LFB0:
	.cfi_startproc
	leaq	0(,%rdi,8), %rax
	testq	%rsi, %rsi
	jle	.L2
	cmpq	%rsi, %rdi
	jl	.L3
	movq	%rsi, %rax
	subq	%rdi, %rax
	ret
.L3:
	movq	%rdi, %rax
	andq	%rsi, %rax
	ret
.L2:
	leaq	2(%rsi), %rdx
	testq	%rdx, %rdx
	jle	.L5
.L1:
	rep ret
.L5:
	leaq	(%rdi,%rsi), %rax
	jmp	.L1
	.cfi_endproc
.LFE0:
	.size	test, .-test
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
