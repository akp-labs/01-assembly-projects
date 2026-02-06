# Hello Wait World

A minimal **x86-64 NASM** program that prints `hello`, waits 2.5 seconds, and then prints `world!` to standard output using raw Linux syscalls.

This project is meant as a small but precise foundation for understanding low-level Linux programming, syscall interfaces, and time handling without any runtime abstractions.

## Main Features

- Written in **x86-64 NASM** syntax
- Uses direct Linux syscalls (`write`, `nanosleep`, `exit`)
- No libc, no runtime, no hidden abstractions
- Demonstrates correct use of `timespec` (seconds + nanoseconds)
- Simple `build.sh` for assembling and linking
- Ideal for learning syscall mechanics and memory-level data structures

## Build & Run

```bash
chmod +x build.sh
./build.sh
./hello-wait-world
```

Invoke the script directly if you prefer not using `chmod`:

```bash
bash build.sh
./hello-wait-world
```

## Requirements

 * NASM
 * GNU `ld`
 * Linux x86-64 environment (native or WSL)