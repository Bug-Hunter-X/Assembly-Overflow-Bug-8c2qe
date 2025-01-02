```assembly
mov ax, 1000h ; Load a large value into AX
mov cx, ax ; copy value of AX to CX
add ax, bx ; Add the content of BX to AX
jc overflow_handler ; Jump to overflow handler if carry flag is set
; Continue with program execution if no overflow
jmp next_instruction

overflow_handler:
; Handle overflow condition here (e.g., set error flag, saturation)
mov ax, 0ffffh ; Example: Saturate to maximum value

next_instruction:
; ... rest of the program ...
```