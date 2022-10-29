#!/bin/bash

j_compile() {
	[ "$1" = '--help' ] || [ "$1" = '-h' ] && echo "j_compile \$filename" && return 1

	nasm -f elf64 -o "$1.o" "$1.asm"
	ld -o "$1" "$1.o"
}

