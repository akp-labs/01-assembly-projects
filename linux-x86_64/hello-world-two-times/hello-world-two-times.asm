; hello-world.asm
; Linux x86_64 NASM
; Prints "Hello, world!" using raw syscalls two times

section .data
    msg db "Hello, World!", 0x0A   ; message with newline
    len equ $ - msg               ; length of message

section .text
    global _start

_start:
    ; First print
    mov rax, 1        ; syscall: write
    mov rdi, 1        ; file descriptor: stdout
    mov rsi, msg      ; pointer to message
    mov rdx, len      ; message length
    syscall

    ; Second print
    mov rax, 1        ; syscall: write
    mov rdi, 1        ; file descriptor: stdout
    mov rsi, msg      ; pointer to message
    mov rdx, len      ; message length
    syscall

    ; Exit program
    mov rax, 60       ; syscall: exit
    xor rdi, rdi      ; exit code 0
    syscall
