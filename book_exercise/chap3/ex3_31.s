	.file	"ex3_31.c"
	.text
	.globl	switcher
	.type	switcher, @function
switcher:
.LFB0:
	.cfi_startproc
	cmpq	$2, %rdi
	je	.L3
	cmpq	$2, %rdi
	jle	.L7
	cmpq	$5, %rdi
	je	.L6
	cmpq	$7, %rdi
	jne	.L2
.L3:
	addq	%rdx, %rsi
	salq	$2, %rsi
	jmp	.L2
.L7:
	testq	%rdi, %rdi
	jne	.L2
.L5:
	leaq	112(%rdx), %rsi
.L2:
	movq	%rsi, (%rcx)
	ret
.L6:
	movq	%rsi, %rdx
	xorq	$15, %rdx
	jmp	.L5
	.cfi_endproc
.LFE0:
	.size	switcher, .-switcher
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
