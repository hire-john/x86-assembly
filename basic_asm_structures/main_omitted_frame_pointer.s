	.file	"main.c"
	.text
	.globl	main
	.type	main, @function
main:
	subq	$24, %rsp
	movl	%edi, 12(%rsp)
	movq	%rsi, (%rsp)
	movl	$0, %eax
	call	for_loop
	movl	$0, %eax
	call	while_loop
	movl	$0, %eax
	call	do_while_loop
	movl	$0, %eax
	call	if_then_else
	movl	$0, %eax
	addq	$24, %rsp
	ret
	.size	main, .-main
	.globl	for_loop
	.type	for_loop, @function
for_loop:
	movl	$0, -4(%rsp)
	movl	$0, -8(%rsp)
	jmp	.L4
.L5:
	addl	$1, -4(%rsp)
	addl	$1, -8(%rsp)
.L4:
	cmpl	$9, -8(%rsp)
	jle	.L5
	nop
	nop
	ret
	.size	for_loop, .-for_loop
	.globl	while_loop
	.type	while_loop, @function
while_loop:
	movl	$0, -4(%rsp)
	jmp	.L7
.L8:
	addl	$1, -4(%rsp)
.L7:
	cmpl	$9, -4(%rsp)
	jle	.L8
	nop
	nop
	ret
	.size	while_loop, .-while_loop
	.globl	do_while_loop
	.type	do_while_loop, @function
do_while_loop:
	movl	$0, -4(%rsp)
.L10:
	addl	$1, -4(%rsp)
	cmpl	$9, -4(%rsp)
	jle	.L10
	nop
	nop
	ret
	.size	do_while_loop, .-do_while_loop
	.globl	if_then_else
	.type	if_then_else, @function
if_then_else:
	movl	$0, -4(%rsp)
	cmpl	$0, -4(%rsp)
	je	.L12
	movl	$1, -4(%rsp)
	jmp	.L15
.L12:
	cmpl	$0, -4(%rsp)
	jne	.L14
	movl	$0, -4(%rsp)
	jmp	.L15
.L14:
	movl	$-1, -4(%rsp)
.L15:
	nop
	ret
	.size	if_then_else, .-if_then_else
	.ident	"GCC: (GNU) 12.1.1 20220507 (Red Hat 12.1.1-1)"
	.section	.note.GNU-stack,"",@progbits
