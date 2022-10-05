# hi comment
.global _start @exposes _start to be accessible
.section .text

_start:
	@ Write
	MOV R7, #4
	MOV R0, #1 @fd of STDOUT
	LDR R1, =msg @load message
	MOV R2, #12
	SWI 0

	@ Exit
	MOV R7, #1
	MOV R0, #65
	SWI 0


.section .data
	msg:
		.ascii "Hello world\n"


