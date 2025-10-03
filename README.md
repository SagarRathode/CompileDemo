# CompileDemo Utility Library

## Overview
**CompileDemo** is a professional-level C shared library project that demonstrates:

- Building a **shared library** (`libutils.so`)
- Installing **headers** and library system-wide
- Using **pkg-config** for portable compilation
- Modular C code with proper separation of API (`.h`) and implementation (`.c`)
- Example client program linking dynamically to the library

The library provides simple **math utilities** and **string helper functions**, suitable for learning dynamic linking and professional C project structure.

---

## Project Structure

CompileDemo/
│

├── include/

│ └── utils.h # Public API header

│

├── src/

│ ├── utils.c # Library implementation

│ └── main.c # Example client program

│

├── build/ # Compiled objects and shared library

├── lib/ # Installed library location

├── pkgconfig/

│ └── utils.pc # pkg-config metadata

├── Makefile # Build and install automation

└── README.md

---

## Installation

### Build library locally
sudo make install

This installs:
libutils.so → /usr/local/lib/
utils.h → /usr/local/include/
utils.pc → /usr/local/lib/pkgconfig/

### Usage
After installation, you can compile any C program using the library with pkg-config:

gcc main.c $(pkg-config --cflags --libs utils) -o mainApp
./mainApp


### Example Output:
=== CompileDemo Shared Utility Library ===
Adding 10 + 20 = 30

Factorial of 5 = 120

[INFO] Library functions executed successfully!


## API
Header: utils.h
// Math utilities

int add(int a, int b);

int factorial(int n);

// String utilities
void printMessage(const char *msg);

// Library metadata
extern const char *projectName;


## Makefile Targets
make → Build shared library and example client

make install → Install library, headers, and pkg-config file

make uninstall → Remove installed library and headers

make clean → Clean build artifacts

## Learning Objectives
Understand shared vs static libraries in C

Learn position-independent code (-fPIC) for shared libraries

Understand dynamic linking and runtime linking paths (rpath)

Learn pkg-config integration for easy compilation

Practice professional project layout and modular C programming

## License

MIT License. You are free to use, modify, and distribute this library for educational or professional purposes.

