#!/bin/bash

nasm -f elf64 hello-wait-world-inline.asm -o hello-wait-world-inline.o
ld hello-wait-world-inline.o -o hello-wait-world-inline
