section .data
	text db "Hello, World!", 10 ;10 is \n

section .text
	global _start

_start:
	; determines what type of syscall
	MOV rax, 1 
	; file descriptor
	MOV rdi, 1
	MOV rsi, text
	MOV rdx, 14
	SYSCALL

	MOV rax, 60
	MOV rdi, 1
	SYSCALL


