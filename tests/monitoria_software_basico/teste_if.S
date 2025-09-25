.section .rodata
	str: .string "%hu\n"

.data
	.globl idade1
	.align 2
	idade1: .short 20

	.globl idade2
	.align 2
	idade2: .short 40

	.globl min_idade
	.align 2
	min_idade: .short 0

.text
.globl main
main:
	pushq %rbp
	movq %rsp, %rbp

if:
	movw idade1, %r8w
	cmpw idade2, %r8w
	ja else

	movw %r8w, min_idade

	jmp end_if

else:
	movw idade2, %r8w
	movw %r8w, min_idade

end_if:
	movq $str, %rdi
	movw min_idade, %si
	movl $0, %eax
	call printf

	movl $0, %eax

	leave
	ret
