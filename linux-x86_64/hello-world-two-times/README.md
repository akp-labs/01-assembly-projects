# Hello World Two Times

A **x86-64 NASM** program that prints `Hello, World!` twice to standard output using **Linux syscalls**.  
This minimal project demonstrates how to interact directly with the operating system from assembly, without relying on libraries or runtime layers.

## Main features
- Written in **x86-64 NASM syntax**
- Uses **direct Linux syscalls** (`write`, `exit`)
- No libc, no runtime, no abstractions
- Includes a simple `build.sh` script for assembling and linking
- Serves as an ideal starting point for learning assembly fundamentals

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