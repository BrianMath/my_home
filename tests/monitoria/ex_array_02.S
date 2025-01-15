.section .data
	.globl nums
	.align 4
	nums: .zero 12

.text
.globl aux
aux:
	pushq %rbp
	movq %rsp, %rbp

	movw $1, %r8w		# short i = 1

	movq $nums, %r9		# &nums
	movswl %r8w, %eax	# (int) i
	movl %eax, (%r9)	# nums[0] = i

	movslq %eax, %rax	# (long) i
	imulq $4, %rax		# i * sizeof(int)
	addq %r9, %rax		# &nums[i]
	movl $2, (%rax)		# nums[i] = 2

	movl (%rax), %ebx	# nums[i]
	movswq %r8w, %rax	# (long) i
	decq %rax			# i-1
	imulq $4, %rax		# (i-1) * sizeof(int)
	addq %r9, %rax		# &nums[i-1]
	addl (%rax), %ebx	# nums[i-1] + nums[i]
	addq $8, %r9		# &nums[2 * sizeof(int)]
	movl %ebx, (%r9)	# nums[2] = nums[i-1] + nums[i]

	leave
	ret

