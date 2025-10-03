# CompileDemo

## Overview  
**CompileDemo** is a minimal yet professional-grade C project that demonstrates the fundamentals of the compilation and linking process.  
The project is intentionally simple — containing a single header file and two source files — but structured to clearly illustrate:  

- Separation of interface (`.h`) and implementation (`.c`)  
- Function declaration vs. definition  
- Data sharing across compilation units  
- Compilation and linking workflow using standard build tools  

This project can serve as:  
- A **learning tool** for beginners exploring the C compilation model  
- A **template/skeleton project** for small experiments  
- A **teaching reference** in coursework or documentation  

---

## Project Structure  

CompileDemo/

│

├── src/

│ ├── main.c # Entry point with main() function

│ ├── function.c # Function implementations and global data

│

├── include/

│ └── function.h # Function prototypes and external declarations

│

├── Makefile # Build automation (GCC/Clang)

└── README.md # Project documentation



---

## Files Explained  

- **`main.c`**  
  Contains the `main()` function. Demonstrates calling functions declared in the header and implemented in a separate source file.  

- **`function.h`**  
  Declares function prototypes and external data used by `main.c`. Serves as the interface between compilation units.  

- **`function.c`**  
  Implements the functions and defines global data referenced by `main.c`.  

---

## Build Instructions  

### Using `gcc` manually:
```bash
# Compile each .c file into an object file

gcc -Iinclude -c src/main.c -o main.o
gcc -Iinclude -c src/function.c -o function.o

## Link object files into final executable
gcc main.o function.o -o compiledemo
Using make:
make
This will produce an executable named compiledemo.
Running the Program
./compiledemo
Expected Output:
Function called successfully!
Learning Objectives
By working through this project, you will:
Understand how the compiler translates source into object files
Learn how the linker resolves references between compilation units
See the role of headers as contracts between files
Practice using a Makefile for clean and repeatable builds
License
This project is released under the MIT License.
You are free to use, modify, and distribute for educational or professional purposes.

---
