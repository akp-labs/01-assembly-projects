#!/bin/bash

nasm -f elf64 hello-world.asm -o hello-world.o
ld hello-world.o -o hello-world
