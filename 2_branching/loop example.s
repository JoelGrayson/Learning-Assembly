.global _start

_start:
	LDR R0, =list @ R0=iter (i)
	LDR R1, [R0]  @ R1=item of lst
	MOV R2, R1    @ R2=sum

loop:
	LDR R1, [R0, #4]! @ Getting value & inc
	CMP R1, #99       @ #99 at end of lst
	BEQ exit
	ADD R2, R2, R1
	BAL loop
	
exit:
	MOV R7, #1
	MOV R0, R2 @ $? is sum (should be 55)

.data
list:
	.word 1,2,3,4,5,6,7,8,9,10,99
