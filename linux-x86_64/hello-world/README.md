# Hello World 

A minimal **x86-64 NASM** program that prints `Hello, world!` to standard output using **Linux syscalls**.
This project serves as a foundation for low-level Linux programming.

## Main features
- Written in **x86-64 NASM syntax**
- Uses **direct Linux syscalls** (`write(2)`, `exit`)
- No libc, no runtime, no abstractions
- Simple `build.sh` for assembling and linking
- Ideal starting point for learning assembly fundamentals

## How it works

The program executes in a straight sequence:

1. Starts execution at `_start`, the entry point of the program
2. Issues a `write(2)` syscall to print `"Hello, world!"` to standard output
3. Returns from the kernel after the message is written
4. Immediately invokes the `exit(2)` syscall
5. Terminates the program cleanly

## Important

- `write(2)` syscall number = `1`
- Standard output file descriptor = `1`
- `exit(2)` syscall number = `60`
- `xor rdi, rdi` sets exit status to `0`

## Build & Run

```bash
chmod +x build.sh
./build.sh
./hello-world
```

Invoke the script directly if you prefer not using `chmod`:

```bash
bash build.sh
./hello-world
```
---

## Requirements

  -  NASM
  -  GNU ld
  -  Linux x86-64 environment (native or WSL)