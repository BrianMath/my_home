.section .rodata
	str: .string "%d\n"

.text

.globl elevado
// %eax         %edi    %esi
// int elevado(int n, int exp)
elevado:
	pushq %rbp
	movq %rsp, %rbp

	cmpl $0, %esi
	jne while

	movl $1, %eax
	leave
	ret

while:
	decl %esi
	cmpl $0, %esi
	je end_while

	imull %edi, %edi

	jmp while

end_while:

	movl %edi, %eax
	
	leave
	ret

######################################

.globl main
main:
	pushq %rbp
	movq %rsp, %rbp

	movl $69, %r8d	# num

	movl %r8d, %edi	# 1º arg
	movl $2, %esi	# 2º arg
	call elevado	# retorno em %eax
	movl %eax, %r8d	# num = elevado()

	movq $str, %rdi
	movl %r8d, %esi
	movl $0, %eax
	call printf

	movl $0, %eax

	leave
	ret
