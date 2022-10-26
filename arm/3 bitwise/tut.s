.global _start
_start:
	MOV R1, #13 @0b1101
	MOV R2, #11 @0b1011
	AND R0, R1, R2 @9 or 0b1001

end:
	MOV R7, #1
	SWI 0



