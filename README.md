# CompileDemo

**CompileDemo** is a simple C project designed to help beginners understand the C **compilation process**, **linking**, and the interaction between **source files** and **header files**. It is a small, educational project consisting of only two source files and one header file, yet carefully crafted to demonstrate key concepts in C programming.

---

## Project Structure

CompileDemo/
│

├── main.c # Contains the main() function

├── function.c # Contains the implementation of functions

├── function.h # Declares functions and shared data

└── README.md # Project documentation


---

## Files Description

### 1. `main.c`
- Contains the `main()` function.
- Calls functions declared in `function.h` and implemented in `function.c`.
- Demonstrates how the main program interacts with external code.

### 2. `function.h`
- Header file containing **function declarations**.
- Declares shared variables (if any) accessed by `main.c`.
- Serves as a **bridge** between `main.c` and `function.c`.

### 3. `function.c`
- Implements the functions declared in `function.h`.
- Defines any global data referenced by `main.c`.
- Illustrates **separation of implementation and interface** in C.

---

## Purpose

This project aims to teach:

- How **header files** (`.h`) and **source files** (`.c`) interact.
- How to **compile multiple C files** together.
- How **linking** works to create the final executable.
- Basic structure and organization of a **multi-file C project**.

---

## Compilation Instructions

You can compile this project using `gcc` as follows:

```bash
gcc main.c function.c -o CompileDemo

main.c and function.c are compiled together.

The header file function.h is included in main.c using #include.

To run the program:
./CompileDemo

