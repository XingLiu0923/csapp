	.file	"ex3_24.c"
	.text
	.globl	loop_while
	.type	loop_while, @function
loop_while:
.LFB0:
	.cfi_startproc
	movl	$1, %eax
	jmp	.L2
.L3:
	leaq	(%rdi,%rsi), %rdx
	imulq	%rdx, %rax
	addq	$1, %rdi
.L2:
	cmpq	%rsi, %rdi
	js	.L3
	rep ret
	.cfi_endproc
.LFE0:
	.size	loop_while, .-loop_while
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
