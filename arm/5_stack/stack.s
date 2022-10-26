@ For CPULator
.text
.global _start
_start:
	LDR R0, =list
	LDR R1, [R0]
	LDR R2, [R0, #4]
	LDR R3, [R0, #8]
	LDR R4, [R0, #0xC]
	LDR R5, [R0, #0xE]


.data
list:
	.word 1, 2, 4, -8

