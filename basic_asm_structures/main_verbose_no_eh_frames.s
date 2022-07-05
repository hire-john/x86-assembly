	.file	"main.c"
# GNU C17 (GCC) version 12.1.1 20220507 (Red Hat 12.1.1-1) (x86_64-redhat-linux)
#	compiled by GNU C version 12.1.1 20220507 (Red Hat 12.1.1-1), GMP version 6.2.1, MPFR version 4.1.0-p13, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fno-asynchronous-unwind-tables
	.text
	.globl	main
	.type	main, @function
main:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
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
	ret	
	.size	main, .-main
	.globl	for_loop
	.type	for_loop, @function
for_loop:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
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
	ret	
	.size	for_loop, .-for_loop
	.globl	while_loop
	.type	while_loop, @function
while_loop:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
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
	ret	
	.size	while_loop, .-while_loop
	.globl	do_while_loop
	.type	do_while_loop, @function
do_while_loop:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
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
	ret	
	.size	do_while_loop, .-do_while_loop
	.globl	if_then_else
	.type	if_then_else, @function
if_then_else:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
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
	ret	
	.size	if_then_else, .-if_then_else
	.ident	"GCC: (GNU) 12.1.1 20220507 (Red Hat 12.1.1-1)"
	.section	.note.GNU-stack,"",@progbits
