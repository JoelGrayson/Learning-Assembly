.global _start

@ {instruction} {dest}, {operand}, {operand}

_start:
  MOV R0, #0x14
  B joel
  MOV R0, #0xB

joel:
  MOV R7, #1
  SWI 0


