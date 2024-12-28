# Assembly Code Bug: Address Space Overflow

This repository demonstrates a common error in assembly programming: exceeding the available address space when calculating memory addresses.  The `bug.asm` file contains code that calculates a memory address dynamically. However, it does not handle the case when the calculated address is too large, which results in a segmentation fault.

The `bugSolution.asm` file demonstrates a corrected version of the code, adding checks to prevent this error.  The solution involves verifying address bounds before attempting to access memory.

This is a simplified example, but the principle is applicable to more complex scenarios and various architectures.  Always ensure proper memory addressing bounds checks when dealing with dynamic address calculations in assembly.