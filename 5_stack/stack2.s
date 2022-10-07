@ For Raspi
.text
.global _start
_start:
	LDR R4, =list
	LDR R3, [R1]
	LDR R0, [R3, #0xC]
	LDR R7, #1
	SWI 0

.data
list:
	.word 1, 2, 4, -8

