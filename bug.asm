```assembly
mov ax, 1000h ; Load a large value into AX
add ax, bx ; Add the content of BX to AX
```
This code snippet might lead to an overflow if the sum of AX and BX exceeds the maximum value that can be stored in the AX register (FFFFh). This can result in unexpected behavior or program crashes.  The resulting value might wrap around, leading to an incorrect calculation.