.section .rodata
	str: .string "%d\n"

.data
	.globl num
	.align 4
	num: .int 1024

	.globl cont
	.align 4
	cont: .int 0

.text
.globl main
main:
	pushq %rbp
	movq %rsp, %rbp

while:
	movl num, %r8d
	sarl $1, %r8d
	cmpl $0, %r8d
	jle end_while

	sarl $1, num
	incl cont

	jmp while

end_while:
	movq $str, %rdi
	movl cont, %esi
	movl $0, %eax
	call printf

	movl $0, %eax

	leave
	ret
