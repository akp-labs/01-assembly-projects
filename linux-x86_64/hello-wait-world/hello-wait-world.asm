; hello-wait-world.asm
; Linux x86_64 NASM
; Prints "Hello", wait 2.5 seconds and then print "world!" using raw syscalls


section .data
    msg1 db "hello ", 0x0A
    len1 equ $ - msg1

    msg2 db "world!", 0x0A
    len2 equ $ - msg2

    req:
        dq 2              ; tv_sec  = 2 seconds
        dq 500000000      ; tv_nsec = 0.5 seconds

section .text
    global _start

_start:
    ; write "hello"
    mov rax, 1          ; sys_write
    mov rdi, 1          ; stdout
    mov rsi, msg1
    mov rdx, len1
    syscall

    ; nanosleep(2.5 sec)
    mov rax, 35         ; sys_nanosleep
    mov rdi, req
    xor rsi, rsi        ; NULL (no remaining time)
    syscall

    ; write "world"
    mov rax, 1          ; sys_write
    mov rdi, 1
    mov rsi, msg2
    mov rdx, len2
    syscall

    ; exit(0)
    mov rax, 60         ; sys_exit
    xor rdi, rdi
    syscall
