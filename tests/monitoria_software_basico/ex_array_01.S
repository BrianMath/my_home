.section .rodata
	str1: .string "%c"
	str2: .string "\n"

.data
	.globl texto
	.align 1
	texto: .string "Aruno, Bruno, Cruno"

	.globl c
	.align 1
	c: .zero 1

	.globl i
	.align 2
	i: .short 0

.text
.globl main
main:
	pushq %rbp
	movq %rsp, %rbp

	movq $texto, %r8
	movzwq i, %r9
	addq %r8, %r9
	movb (%r9), %al
	movb %al, c
for:
	movq $str1, %rdi
	movb c, %sil
	movl $0, %eax
	call printf

if:
	cmpw $20, i
	jae end_for
end_if:

	movq $texto, %r8
	incw i
	movzwq i, %r9
	addq %r8, %r9
	movb (%r9), %al
	movb %al, c

	jmp for

end_for:

	movq $str2, %rdi
	movl $0, %eax
	call printf

	movl $0, %eax

	leave
	ret
