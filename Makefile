# Makefile for CompileDemo
# Author: SagarRathode
# Purpose: Compile and run a multi-file C demo project, with .i and .s generation

# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -g

# Source files
SRC = main.c function.c

# Object files
OBJ = $(SRC:.c=.o)

# Preprocessed files
PRE = $(SRC:.c=.i)

# Assembly files
ASM = $(SRC:.c=.s)

# Output executable
TARGET = CompileDemo

# Default target
all: $(TARGET)

# Compile executable
$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(TARGET)

# Compile object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Generate preprocessed files (.i)
%.i: %.c
	$(CC) $(CFLAGS) -E $< -o $@

# Generate assembly files (.s)
%.s: %.c
	$(CC) $(CFLAGS) -S $< -o $@

# Generate all preprocessed and assembly files
generate: $(PRE) $(ASM)

# Run the program
run: $(TARGET)
	./$(TARGET)

# Clean generated files
clean:
	rm -f $(TARGET) $(OBJ) $(PRE) $(ASM)

# Help target
help:
	@echo "Makefile commands for CompileDemo project:"
	@echo "  make          : Compile the program"
	@echo "  make run      : Compile (if needed) and run the program"
	@echo "  make generate : Generate .i (preprocessed) and .s (assembly) files"
	@echo "  make clean    : Remove executable, object, .i and .s files"
	@echo "  make help     : Show this help message"

