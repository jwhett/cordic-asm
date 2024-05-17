section .data
table:
    dd (0x1)
    dd (0x2)

section .text
global cordic

cordic:
    MOV eax, [table]
    RET
