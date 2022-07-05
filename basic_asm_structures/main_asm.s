	.file	"main.c"
	.text
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %eax
	call	for_loop
	movl	$0, %eax
	call	while_loop
	movl	$0, %eax
	call	do_while_loop
	movl	$0, %eax
	call	if_then_else
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.globl	for_loop
	.type	for_loop, @function
for_loop:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L4
.L5:
	addl	$1, -4(%rbp)
	addl	$1, -8(%rbp)
.L4:
	cmpl	$9, -8(%rbp)
	jle	.L5
	nop
	nop
	popq	%rbp
	ret
	.size	for_loop, .-for_loop
	.globl	while_loop
	.type	while_loop, @function
while_loop:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	.L7
.L8:
	addl	$1, -4(%rbp)
.L7:
	cmpl	$9, -4(%rbp)
	jle	.L8
	nop
	nop
	popq	%rbp
	ret
	.size	while_loop, .-while_loop
	.globl	do_while_loop
	.type	do_while_loop, @function
do_while_loop:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
.L10:
	addl	$1, -4(%rbp)
	cmpl	$9, -4(%rbp)
	jle	.L10
	nop
	nop
	popq	%rbp
	ret
	.size	do_while_loop, .-do_while_loop
	.globl	if_then_else
	.type	if_then_else, @function
if_then_else:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L12
	movl	$1, -4(%rbp)
	jmp	.L15
.L12:
	cmpl	$0, -4(%rbp)
	jne	.L14
	movl	$0, -4(%rbp)
	jmp	.L15
.L14:
	movl	$-1, -4(%rbp)
.L15:
	nop
	popq	%rbp
	ret
	.size	if_then_else, .-if_then_else
	.ident	"GCC: (GNU) 12.1.1 20220507 (Red Hat 12.1.1-1)"
	.section	.note.GNU-stack,"",@progbits
