# Hello World 

A minimal **x86-64 NASM** program that prints `Hello, World!` to standard output using **Linux syscalls**.
These projects serve as a foundation for low-level Linux programming.

### Main features
- Written in **x86-64 NASM syntax**
- Uses **direct Linux syscalls** (`write`, `exit`)
- No libc, no runtime, no abstractions
- Simple `build.sh` for assembling and linking
- Ideal starting point for learning assembly fundamentals

### Build & Run

```bash
chmod +x build.sh
./build.sh
./hello-world
```

Use interpreter directly is you prefer not using `chmod`:

```bash
bash build.sh
./hello-world
```
---

### Requirements

  *  NASM
  *  GNU ld
  *  Linux x86-64 environment (native or WSL)