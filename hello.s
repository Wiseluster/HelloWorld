.data
	msg: .string "Hello, world!"
	len = . - msg

.text
	.global main
	.extern puts

main:
	pushl %ebp
	movl %esp, %ebp
	pushl $msg
	call puts
	addl $4, %esp
	xorl %eax, %eax
	movl %ebp, %esp
	popl %ebp
	ret
