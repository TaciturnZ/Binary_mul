# Define the root directory and library path
ROOT_DIR := .
LIB_DIR := $(ROOT_DIR)/lib
SRC_DIR := $(ROOT_DIR)/Binary_mul_bi

# Output binary name
OUTPUT := Binary_mul_3_1_bi

# Define the source files
SRC_FILES := $(SRC_DIR)/Binary_mul_3_1_bi/Binary_mul_3_1_bi.v \
             $(SRC_DIR)/Binary_mul_3_1_bi/Binary_mul_3_1_bi_tb.v \
             $(LIB_DIR)/multi_components.v

# Compiler
CC := iverilog

# Compiler options
CFLAGS := -I $(LIB_DIR) -o $(OUTPUT)

# Target to compile the project
all:
	$(CC) $(CFLAGS) $(SRC_FILES)

# Clean target to remove output files
clean:
	rm -f $(OUTPUT)
