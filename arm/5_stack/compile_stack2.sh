#!/bin/bash

as -o stack2.o stack2.s
ld -o stack2 stack2.o
./stack2
echo $?

