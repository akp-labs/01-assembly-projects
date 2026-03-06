# Hello World Two Times

A **x86-64 NASM** program that prints `Hello, World!` two times to standard output using **Linux syscalls**.  
This small program demonstrates the basics of direct system call usage in assembly.

## Main features
- Written in **x86-64 NASM syntax**
- Uses **direct Linux syscalls** (`write`, `exit`)
- No libc, no runtime, no abstractions
- Simple `build.sh` for assembling and linking
- Ideal starting point for learning assembly fundamentals

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

  *  NASM
  *  GNU ld
  *  Linux x86-64 environment (native or WSL)