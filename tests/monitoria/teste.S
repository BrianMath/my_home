.section .rodata
	

.data
	.globl c
	.align 1
	c: .byte 10

	.globl l
	.align 8
	l: .zero 8

	.globl s
	.align 2
	s: .zero 2

.text
.globl main
main:
	pushq %rbp
	movq %rsp, %rbp

	// l = (long)c
	movsbq c, %r8
	movq %r8, l

	// s = (short)l
	movq l, %r8
	movw %r8w, s

	movl $0, %eax

	leave
	ret

