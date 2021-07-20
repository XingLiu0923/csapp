	.file	"cond.c"
	.text
	.globl	cond
	.type	cond, @function
cond:
.LFB0:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L1
	cmpq	%rdi, (%rsi)
	jge	.L1
	movq	%rdi, (%rsi)
.L1:
	rep ret
	.cfi_endproc
.LFE0:
	.size	cond, .-cond
	.globl	cond_goto
	.type	cond_goto, @function
cond_goto:
.LFB1:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L3
	cmpq	%rdi, (%rsi)
	jge	.L3
	movq	%rdi, (%rsi)
.L3:
	rep ret
	.cfi_endproc
.LFE1:
	.size	cond_goto, .-cond_goto
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
