section .text
	global maxofthree

maxofthree:
	MOV rax, rdi ; output
	CMP rax, rdi
	CMOVL rax, rdi ;if rax<rsi, use rsi
	CMP rax, rsi
	CMOVL rax, rsi
	CMP rax, rdx
	CMOVL rax, rdx
	RET

