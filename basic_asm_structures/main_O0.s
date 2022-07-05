	.file	"main.c"
# GNU C17 (GCC) version 12.1.1 20220507 (Red Hat 12.1.1-1) (x86_64-redhat-linux)
#	compiled by GNU C version 12.1.1 20220507 (Red Hat 12.1.1-1), GMP version 6.2.1, MPFR version 4.1.0-p13, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# argc, argc
	movq	%rsi, -16(%rbp)	# argv, argv
# main.c:10: 	for_loop();
	movl	$0, %eax	#,
	call	for_loop	#
# main.c:11: 	while_loop();
	movl	$0, %eax	#,
	call	while_loop	#
# main.c:12: 	do_while_loop();
	movl	$0, %eax	#,
	call	do_while_loop	#
# main.c:13: 	if_then_else();
	movl	$0, %eax	#,
	call	if_then_else	#
# main.c:14: 	return EXIT_SUCCESS;
	movl	$0, %eax	#, _6
# main.c:15: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.globl	for_loop
	.type	for_loop, @function
for_loop:
.LFB7:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# main.c:18: 	int iterations = 0;
	movl	$0, -4(%rbp)	#, iterations
# main.c:19: 	for(int i = 0; i < 10; i++){
	movl	$0, -8(%rbp)	#, i
# main.c:19: 	for(int i = 0; i < 10; i++){
	jmp	.L4	#
.L5:
# main.c:20: 		iterations++;
	addl	$1, -4(%rbp)	#, iterations
# main.c:19: 	for(int i = 0; i < 10; i++){
	addl	$1, -8(%rbp)	#, i
.L4:
# main.c:19: 	for(int i = 0; i < 10; i++){
	cmpl	$9, -8(%rbp)	#, i
	jle	.L5	#,
# main.c:22: }
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	for_loop, .-for_loop
	.globl	while_loop
	.type	while_loop, @function
while_loop:
.LFB8:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# main.c:25: 	int iterations = 0;
	movl	$0, -4(%rbp)	#, iterations
# main.c:26: 	while(iterations < 10){
	jmp	.L7	#
.L8:
# main.c:27: 		iterations++;
	addl	$1, -4(%rbp)	#, iterations
.L7:
# main.c:26: 	while(iterations < 10){
	cmpl	$9, -4(%rbp)	#, iterations
	jle	.L8	#,
# main.c:29: }
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	while_loop, .-while_loop
	.globl	do_while_loop
	.type	do_while_loop, @function
do_while_loop:
.LFB9:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# main.c:32: 	int iterations = 0;
	movl	$0, -4(%rbp)	#, iterations
.L10:
# main.c:34: 		iterations++;
	addl	$1, -4(%rbp)	#, iterations
# main.c:35: 	}while(iterations < 10);
	cmpl	$9, -4(%rbp)	#, iterations
	jle	.L10	#,
# main.c:36: }
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	do_while_loop, .-do_while_loop
	.globl	if_then_else
	.type	if_then_else, @function
if_then_else:
.LFB10:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# main.c:39: 	signed int iterations = 0;
	movl	$0, -4(%rbp)	#, iterations
# main.c:40: 	if(iterations){
	cmpl	$0, -4(%rbp)	#, iterations
	je	.L12	#,
# main.c:41: 		iterations = 1;	
	movl	$1, -4(%rbp)	#, iterations
# main.c:47: }
	jmp	.L15	#
.L12:
# main.c:42: 	}else if(!iterations){
	cmpl	$0, -4(%rbp)	#, iterations
	jne	.L14	#,
# main.c:43: 		iterations = 0;
	movl	$0, -4(%rbp)	#, iterations
# main.c:47: }
	jmp	.L15	#
.L14:
# main.c:45: 		iterations = -1;
	movl	$-1, -4(%rbp)	#, iterations
.L15:
# main.c:47: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	if_then_else, .-if_then_else
	.ident	"GCC: (GNU) 12.1.1 20220507 (Red Hat 12.1.1-1)"
	.section	.note.GNU-stack,"",@progbits
