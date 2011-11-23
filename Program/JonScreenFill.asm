`define VGA 16383

mov %1, 2
mov %2, 120
lsh %2, 3
mov %3, 0xA0

loop:
add %1, 8
mov [VGA], %1
mov [VGA], %3
jne %1, %2, loop

infinite:
j infinite

