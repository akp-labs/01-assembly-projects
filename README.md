# 01-assembly-projects

This repository contains small, focused assembly projects written in x86-64 NASM for Linux.
Goal: understand execution, memory, and syscalls at the lowest level.

The primary goal is to develop a deep understanding of **program execution, memory layout, register usage, and Linux system calls**. Instead of relying on high-level languages or runtimes, these projects work directly with the operating system interface, making the control flow and side effects explicit.

This repository serves as a learning ground for low-level concepts such as instruction sequencing, stack behavior, syscall conventions, and binary execution—building a strong mental model of how programs run beneath compilers and frameworks.

---

## Goals

- Explore how programs execute at the lowest level
- Understand CPU registers, memory, and stack operations
- Learn how system calls work in Linux
- Practice writing minimal, functional assembly code

---

## Project Structure

All projects are organized under the `linux-x86_64/` folder. Each project has its own subdirectory with source code, build scripts, and documentation.



### Current project count:
  *  hello-world -> hello-world.asm  
  *  hello-wait-world -> hello-wait-world.asm


## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/akp-labs/00-small-projects.git
   ```
2. Navigate to the folder of your interest.
3. Follow the usage instruction inside the README.md of that specific folder.

## License

This repository is licensed under the MIT License. See the LICENSE
 file for details.