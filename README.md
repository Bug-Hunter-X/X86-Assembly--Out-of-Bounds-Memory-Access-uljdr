# x86 Assembly: Out-of-Bounds Memory Access Bug

This repository demonstrates a common yet subtle bug in x86 assembly code: out-of-bounds memory access. The `mov` instruction attempts to read data from an address calculated based on registers `ebx` and `ecx`.  If the calculated address falls outside of the program's allocated memory space, a segmentation fault will occur.

The `bug.asm` file contains the erroneous code.  The `bugSolution.asm` provides a corrected version, incorporating robust bounds checking before memory access.

This example highlights the importance of careful memory management and address calculation in low-level programming languages like assembly.