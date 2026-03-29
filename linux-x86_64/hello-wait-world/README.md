# Hello Wait World

A minimal **x86-64 NASM** program that prints `Hello, `, waits 2.5 seconds, and then prints `world!` to standard output using raw **Linux syscalls**.

This project is meant as a small but precise foundation for understanding low-level Linux programming, syscall interfaces, and time handling without any runtime abstractions.

## Main Features

- Written in **x86-64 NASM** syntax
- Uses direct Linux syscalls (`write(2)`, `nanosleep(2)`, `exit(2)`)
- No libc, no runtime, no hidden abstractions
- Demonstrates correct use of `timespec` (seconds + nanoseconds)
- Simple `build.sh` for assembling and linking
- Ideal for learning syscall mechanics and memory-level data structures

## How it works

The program executes in a linear sequence:

1. Starts execution at `_start`
2. Prints `"Hello, "` using a `write(2)` syscall
3. Invokes `nanosleep(2)` to pause execution for 2.5 seconds
4. Resumes after the delay and prints `"world!"` using another `write(2)` syscall
5. Invokes the `exit(2)` syscall
6. Terminates the program

## Important

- `write(2)` syscall number = `1`
- `nanosleep(2)` syscall number = `35`
- `exit(2)` syscall number = `60`
- The delay is defined using a `timespec` structure (`tv_sec`, `tv_nsec`)
- `tv_sec = 2`, `tv_nsec = 500000000` → total delay = 2.5 seconds
- `rdi` points to the time request structure
- `rsi = 0` means remaining time is ignored
- `xor rdi, rdi` sets exit status to `0`

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

 - NASM
 - GNU `ld`
 - Linux x86-64 environment (native or WSL)

 ## Note

This program prints the words on separate lines due to the newline character (`0x0A`) included in the first message.