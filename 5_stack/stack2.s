@ For Raspi
.text
.global _start
_start:
	LDR R2, =list
	LDR R0, [R2, #0xC]
	MOV R7, #1
	SWI 0

.data
list:
	.word 1, 2, 4, -1

