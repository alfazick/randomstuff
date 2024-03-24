	.text
	.file	"fib.c"
	.globl	fib                     # -- Begin function fib
	.p2align	4, 0x90
	.type	fib,@function
fib:                                    # @fib
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -12(%rbp)
	cmpl	$2, -12(%rbp)
	jge	.LBB0_2
# %bb.1:
	movslq	-12(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	movq	$0, -24(%rbp)
	movq	$1, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$2, -44(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_7:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	fib, .Lfunc_end0-fib
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.1, %rdi
	leaq	-8(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_scanf
	cmpl	$0, -8(%rbp)
	jge	.LBB1_2
# %bb.1:
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
	movl	$1, -4(%rbp)
	jmp	.LBB1_3
.LBB1_2:
	movl	-8(%rbp), %edi
	callq	fib
	movq	%rax, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -4(%rbp)
.LBB1_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Enter the Fibonacci position: "
	.size	.L.str, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Please provide a non-negative integer.\n"
	.size	.L.str.2, 40

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Fibonacci number at position %d is: %llu\n"
	.size	.L.str.3, 42

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fib
	.addrsig_sym printf
	.addrsig_sym __isoc99_scanf
