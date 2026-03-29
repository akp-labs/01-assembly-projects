# Hello World Two Times

A **x86-64 NASM** program that prints `Hello, world!` twice to standard output using **Linux syscalls**.  
This minimal project demonstrates how to interact directly with the operating system from assembly, without relying on libraries or runtime layers.

## Main features
- Written in **x86-64 NASM syntax**
- Uses **direct Linux syscalls** (`write(2)`, `exit(2)`)
- No libc, no runtime, no abstractions
- Includes a simple `build.sh` script for assembling and linking
- Serves as an ideal starting point for learning assembly fundamentals

## How it works

The program executes in a straight sequence:

1. Starts execution at `_start`
2. Prints the message using a `write(2)` syscall
3. Prints the same message again using another `write(2)` syscall
4. Invokes the `exit(2)` syscall
5. Terminates the program

## Important

- `write(2)` syscall number = `1`
- Standard output file descriptor = `1`
- `exit(2)` syscall number = `60`
- The message is printed twice using separate syscalls
- `xor rdi, rdi` sets exit status to `0`

## Build & Run

```bash
chmod +x build.sh
./build.sh
./hello-world-two-times
```

Invoke the script directly if you prefer not using `chmod`:

```bash
bash build.sh
./hello-world-two-times
```
---

## Requirements

  -  NASM
  -  GNU ld
  -  Linux x86-64 environment (native or WSL)