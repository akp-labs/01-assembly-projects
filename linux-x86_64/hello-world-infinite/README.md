# Hello World Infinite

This is a **x86-64 NASM** program that prints `Hello, world!` to standard output infinitely.  
This project demonstrates direct system calls and control flow using an unconditional jump (`jmp`) at the assembly level.

## Main features
- Written in **x86-64 NASM syntax**
- Uses Linux `write(2)` syscall (no libc)
- Infinite loop using `jmp`
- No runtime, no abstractions
- Includes a simple `build.sh` for assembling and linking

## How it works

The program executes in a repeating loop:

1. Starts execution at `_start`
2. Enters the `print_loop` label
3. Prints `"Hello, world!"` using a `write(2)` syscall
4. Returns from the kernel after writing
5. Jumps back to `print_loop` using jmp
6. Repeats the process indefinitely

## Important

- `write(2)` syscall number = `1`
- Standard output file descriptor = `1`
- The loop is created using an unconditional jump (`jmp`)
- No exit syscall is present, so execution never terminates on its own
- Each iteration reuses the same buffer and length
- Output includes a newline (`0x0A`), so each message appears on a new line

## Build & Run

```bash
chmod +x build.sh
./build.sh
./hello-world-infinite
```

Invoke the script directly if you prefer not using `chmod`:

```bash
bash build.sh
./hello-world-infinite
```
---

## Requirements

  -  NASM
  -  GNU ld
  -  Linux x86-64 environment (native or WSL)

## Note

This program runs indefinitely and continuously writes to standard output, consuming CPU and flooding the output stream.
Terminate it manually using: `Ctrl + C`