	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14
	.globl	_ww                     ## -- Begin function ww
	.p2align	4, 0x90
_ww:                                    ## @ww
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %edi
	leaq	L_.str(%rip), %rsi
	movl	$5, %eax
	movl	%eax, %edx
	callq	_write
	movq	%rax, -8(%rbp)          ## 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Hello"


.subsections_via_symbols
