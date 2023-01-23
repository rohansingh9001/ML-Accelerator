# Architecture Overview

# Instruction format

All instructions that the processor can execute are 16 bit instructions with the following breakdown:

## ALU Instructions

| Op Code (4) 0101 | SRC 1 (4) 0000 | SRC 2 (4) 0001 | DEST (4) 0010 |
| --- | --- | --- | --- |
| 15:12 | 11:8 | 7:4 | 3:0 |

Op code specifies the instruction to be carried out. In most cases, where ALU is involved, the operation will be performed using the contents of register mentioned by SRC 1 and SRC 2 as input and the ouput will be stored in DEST.

## Memory Instructions (Not finalized)

| Op Code | SRC 1 | SRC 2 | DEST |
| --- | --- | --- | --- |
| 15:12 | 11:8 | 7:4 | 3:0 |

# Instructions Supported

| Sr. No. | Instruction | Op Code | Parameters | Syntax | Action |
| --- | --- | --- | --- | --- | --- |
| 0 | AND | 0000 | SRC1, SRC2, DEST | ADD SRC1, SRC2, DEST | Performs bitwise AND on SRC1 and SRC2 and stores them in DEST |
| 1 | OR | 0001 | SRC1, SRC2, DEST | OR SRC1, SRC2, DEST | Performs bitwise OR on SRC1 and SRC2 and stores them in DEST |
| 2 | XOR | 0010 | SRC1, SRC2, DEST | XOR SRC1, SRC2, DEST | Performs bitwise XOR on SRC1 and SRC2 and it them in DEST |
| 3 | NOT | 0011 | SRC, DEST | NOT SRC | Inverts all bits in SRC and store it in DEST |
| 4 | ADD | 0100 | SRC1, SRC2, DEST | ADD SRC1, SRC2, DEST | Adds contents of SRC1 and SRC2 and stores it in DEST |
| 5 | MUL | 0101 | SRC1, SRC2, DEST | MUL SRC1, SRC2, DEST | Multiplies contents of SRC1 anda SRC2 and stores it in DEST |
| 6 | DIV | 0110 | SRC1, SRC2, DEST | DIV SRC1, SRC2, DEST | Divides contents of SRC1 from SRC2 and stores it in DEST |
| 7 | SHL | 0111 | SRC1, SRC2, DEST | SHL SRC1, SRC2, DEST | Shifts contents of SRC1 by contents of SRC2 left and stores it in DEST |
| 8 | SHR | 1000 | SRC1, SRC2, DEST | SHL SRC1, SRC2, DEST | Shifts contents of SRC1 by contents of SRC2 right and stores it in DEST |
| 9 | LOAD | 1001 | ADR, DEST | LOAD ADR, DEST | Loads the contents of memory by reading address stored in contents of ADR and stores it in DEST |
| 10 | STR | 1010 | ADR, VAL | STR ADR, VAL | Stores the contents of VAL in the memory address contained in ADR |
| 11 | MV | 1011 | SRC, DEST | MV SRC, DEST | Copies the contents of SRC to DEST |
| 12 | JMP | 1100 | ADR | JMP ADR | Sets the value of program counter to the content stored in ADR unconditionally |
| 13 | JEQ | 1101 | ADR | JEQ ADR | Sets the value of program counter to the content stored in ADR if Compare register is 0 |
| 14 | JLT | 1110 | ADR | JLT ADR | Sets the value of program counter to the content stored in ADR if Compare register is less than 0 |
| 15 | JGT | 1111 | ADR | JGT ADR | Sets the value of program counter to the content stored in ADR if Compare register is greater than 0 |

# Registers

A total of 8 registers are supported 

| Sr. No. | Register | Code | Desc |
| --- | --- | --- | --- |
| 0 | R0 | 000 | General Purpose Register 0 |
| 1 | R1 | 001 | General Purpose Register 1 |
| 2 | R2 | 010 | General Purpose Register 2 |
| 3 | Compare | 011 | Register used for comparing with reference |
| 4 | Return | 100 | Return register stores address to return after callback |
| 5 | Stack | 101 | Stack Register stores the stack pointer |
| 6 | Status | 110 | Status register for exit codes of a process |
| 7 | PC | 111 | Program Counter |