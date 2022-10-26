.section .data
	hello_msg:
		.ascii "Hello"
	start_msg:
		.ascii "Start"


.section .text
.global _start

_start:
	MOV R7, #4
	MOV R0, #1
	LDR R1, =start_msg
	MOV R2, #5
	SWI 0

.hello:
	MOV R7, #4
	MOV R0, #1
	LDR R1, =hello_msg
	MOV R2, #5
	SWI 0

MOV R7, #1
MOV R0, #65
SWI 0

