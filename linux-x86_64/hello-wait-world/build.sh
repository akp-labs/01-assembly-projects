#!/bin/bash

nasm -f elf64 hello-wait-world.asm -o hello-wait-world.o
ld hello-wait-world.o -o hello-wait-world
