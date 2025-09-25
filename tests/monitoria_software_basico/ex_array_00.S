.section .rodata
	str: .string "%d | %d\n"

.data
	.globl vet
	.align 4
	vet: .int 1, 2, 3, 4, 5

.text
.globl main
main:
	pushq %rbp
	movq %rsp, %rbp

	movl $4, %r8d	# i
	movl $0, %r9d	# j

while:
	movl %r8d, %eax
	decl %r8d
	cmpl $0, %eax
	je end_while

	movq $vet, %r10		# &vet
	movslq %r8d, %r11	# (long)i
	incq %r11			# i+1
	imulq $4, %r11		# sizeof(int) * ((long)i + 1)
	addq %r10, %r11		# &vet[i+1]
	addl (%r11), %r9d

	jmp while
	
end_while:

	movq $str, %rdi
	movl %r8d, %esi
	movl %r9d, %edx
	movl $0, %eax
	call printf

	movl $0, %eax

	leave
	ret

