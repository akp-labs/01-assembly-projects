; hello-world.asm
; Linux x86_64 NASM
; Prints "Hello, world!" using raw syscalls

section .data
    msg     db  "Hello, world!", 10
    msg_len equ $ - msg

section .text
    global _start

_start:
    ; sys_write(stdout, msg, msg_len)
    mov     rax, 1          ; sys_write
    mov     rdi, 1          ; stdout
    mov     rsi, msg        ; message address
    mov     rdx, msg_len    ; message length
    syscall

    ; sys_exit(0)
    mov     rax, 60         ; sys_exit
    xor     rdi, rdi        ; exit code 0
    syscall
