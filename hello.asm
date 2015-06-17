section .data
	msg db "Hello, world!", 0x0A
	.length equ $ - msg

section .text
	global _start

_start:
	mov eax, 0x00000004
	mov ebx, 0x00000001
	mov ecx, msg
	mov edx, msg.length
	int 0x80
	mov eax, 0x00000001
	xor ebx, ebx
	int 0x80
