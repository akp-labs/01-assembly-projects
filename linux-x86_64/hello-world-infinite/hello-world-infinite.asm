; hello-world-infinite.asm
; Linux x86_64 NASM
; Prints "Hello, world!" infinitely to the standard output 

section .data
    msg db "Hello, world!", 0x0A
    len equ $ - msg

section .text
    global _start

_start:

print_loop:
    ; sys_write(stdout, msg, len)
    mov rax, 1          ; syscall: write
    mov rdi, 1          ; fd = stdout
    mov rsi, msg        ; buffer
    mov rdx, len        ; length
    syscall

    jmp print_loop      ; infinite loop