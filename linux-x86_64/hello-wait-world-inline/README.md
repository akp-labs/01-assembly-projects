# Hello Wait World Inline

A minimal **x86-64 NASM** program that prints `Hello, `, waits 2 seconds, and then prints `world!` to standard output in the same line using raw Linux syscalls.

This project is meant as a small but precise foundation for understanding low-level Linux programming, syscall interfaces, and time handling without any runtime abstractions.

## Main Features

- Written in **x86-64 NASM** syntax
- Uses direct Linux syscalls (`write(2)`, `nanosleep(2)`, `exit(2)`)
- No libc, no runtime, no hidden abstractions
- Demonstrates correct use of `timespec` (seconds + zero nanoseconds)
- Simple `build.sh` for assembling and linking
- Ideal for learning syscall mechanics and memory-level data structures

## How it works

The program executes sequentially from the entry point:

1. Starts at `_start`
2. Prints `"Hello, "` using a `write(2)` syscall (without a newline)
3. Calls `nanosleep(2)` to pause execution for 2 seconds
4. Resumes execution and prints `"world!"` using another `write(2)` syscall
5. Terminates the program using the `exit(2)` syscall

## Important

- `write(2)` syscall number = `1`
- `nanosleep(2)` syscall number = `35`
- `exit(2)` syscall number = `60`
- The sleep duration is defined via a `timespec` structure
- `tv_sec = 2`, `tv_nsec = 0` → total delay = 2 seconds
- `rdi` points to the sleep request structure
- `rsi = 0` indicates no need to store remaining time
- Absence of `0x0A` in `msg1` ensures both outputs appear on the same line
- `msg2` includes a newline `(0x0A)` to terminate the line after `"world!"`
- `xor rdi, rdi` sets the exit status to `0`

## Build & Run

```bash
chmod +x build.sh
./build.sh
./hello-wait-world-inline
```

Invoke the script directly if you prefer not using `chmod`:

```bash
bash build.sh
./hello-wait-world-inline
```

## Requirements

 - NASM
 - GNU `ld`
 - Linux x86-64 environment (native or WSL)

## Note

Unlike the previous program (`hello-wait-world`), which prints on two lines, this version prints both words on the same line due to the absence of a newline character after the first message.

The previous program used both seconds and nanoseconds, whereas this one uses only seconds to demonstrate a simpler `timespec` configuration. This variation is intentional to illustrate flexibility in syscall usage, showing that nanosecond precision is optional rather than mandatory. That is, you can use nanoseconds everywhere, but you don't have to.