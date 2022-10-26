.section .data
	@ All length 13 or 0xD
	lt:
		.ascii "Less than   \n"
	eq:
		.ascii "Equal to    \n"
	gt:
		.ascii "Greater than\n"


.section .text
.global _start
_start:
	MOV R1, #30
	MOV R2, #20
	CMP R1, R2
	BLT print_lt
	BEQ print_eq
	BGT print_gt

print_lt:
	MOV R7, #4
	MOV R0, #1
	LDR R1, =lt
	MOV R2, #0xD
	SWI 0
	B end

print_eq:
	MOV R7, #4
	MOV R0, #1
	LDR R1, =eq
	MOV R2, #0xD
	SWI 0
	B end

print_gt:
	MOV R7, #4
	MOV R0, #1
	LDR R1, =gt
	MOV R2, #0xD
	SWI 0

end: @ exit
	MOV R7, #1
	MOV R0, #65
	SWI 0


