#!/bin/bash

nasm -f elf64 hello-world-two-times.asm -o hello-world-two-times.o
ld hello-world-two-times.o -o hello-world-two-times
