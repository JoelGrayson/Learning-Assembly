.section .data
	prompt:
		.ascii "Hello. What is your name?\n> "
	response:
		.ascii "Hello, "
	name: @ user's response
		.ascii ""


.section .text
.global _start
_start:
  @ Write Prompt
  MOV R7, #4
  MOV R0, #1
  LDR R1, =prompt
  MOV R2, #28
  SWI 0

  @ Read Name Response
  MOV R7, #3
  MOV R0, #1
  LDR R1, =name
  MOV R2, #16 @ res up to 16 chars
  SWI 0

  @ Write Response
  MOV R7, #4
  MOV R0, #1
  LDR R1, =response
  MOV R2, #7
  SWI 0

  @ Write User's Name
  MOV R7, #4
  MOV R0, #1
  LDR R1, =name
  MOV R2, #16
  SWI 0

  @ Exit
  MOV R7, #1
  MOV R0, #65
  SWI 0


/*
  @ Write
  MOV R7, #4
  MOV R0, #1
  LDR R1, =message
  MOV R2, #12
  SWI 0
  MOV R7, #1
  MOV R0, #0

*/


