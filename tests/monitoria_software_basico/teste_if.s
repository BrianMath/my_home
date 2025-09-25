	.file	"teste_if.c"
	.text
	.globl	idade1
	.data
	.align 2
	.type	idade1, @object
	.size	idade1, 2
idade1:
	.value	20
	.globl	idade2
	.align 2
	.type	idade2, @object
	.size	idade2, 2
idade2:
	.value	40
	.globl	min_idade
	.bss
	.align 2
	.type	min_idade, @object
	.size	min_idade, 2
min_idade:
	.zero	2
	.section	.rodata
.LC0:
	.string	"%hu\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movzwl	idade1(%rip), %eax
	movzwl	idade2(%rip), %edx
	cmpw	%ax, %dx
	jb	.L2
	movzwl	idade1(%rip), %eax
	movw	%ax, min_idade(%rip)
	jmp	.L3
.L2:
	movzwl	idade2(%rip), %eax
	movw	%ax, min_idade(%rip)
.L3:
	movzwl	min_idade(%rip), %eax
	movzwl	%ax, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
