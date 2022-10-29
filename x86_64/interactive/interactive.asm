section .data
	write_prompt_txt db "What is your name", 10, "> "
	response_text db "Hello, "

section .bss
	u_name resb 16

section .text
global _start

_start:
	call write_prompt
	call read_name
	call write_response
	call write_name
	jmp exit

write_prompt:
	MOV rax, 1
	MOV rdi, 1
	MOV rsi, write_prompt_txt
	MOV rdx, 20
	syscall

read_name:
	MOV rax, 0
	MOV rdi, 0
	MOV rsi, u_name
	MOV rdx, 16
	syscall

write_response:
	MOV rax, 1
	MOV rdi, 1
	MOV rsi, response_text
	MOV rdx, 7
	syscall

write_name:
	MOV rax, 1
	MOV rdi, 1
	MOV rsi, u_name
	MOV rdx, 16
	syscall

exit:
	MOV rax, 60
	MOV rdi, 65
	syscall

