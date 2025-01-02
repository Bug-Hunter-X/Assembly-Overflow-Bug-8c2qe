# Assembly Overflow Bug

This repository demonstrates a common error in assembly language programming: integer overflow. The `bug.asm` file contains code that adds two registers without checking for potential overflow.  The `bugSolution.asm` file provides a corrected version that handles potential overflows.

## Bug Description
The original code attempts to add a large value (1000h) to the AX register. If the contents of BX are large enough, the addition can cause an overflow, leading to unexpected results. This is because the AX register is only 16-bits, so it can only hold values between 0 and FFFFh. Adding two values that result in a sum greater than FFFFh will cause an overflow.

## Solution
The solution involves checking for overflow conditions before performing the addition.  A corrected version is provided that checks the carry flag after the addition. If the carry flag is set, an overflow has occurred and appropriate action can be taken (e.g., error handling, saturation).