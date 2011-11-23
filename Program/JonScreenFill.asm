`define VGA 16383

and %5, %5
and %5, %5
and %5, %5
and %5, %5
and %5, %5
and %5, %5
and %5, %5
and %5, %5
and %5, %5
and %5, %5
and %5, %5
and %5, %5
and %5, %5
and %5, %5

mov %1, 2
mov %2, 120
lsh %2, 3
add %2, 2
mov %3, 0x9F
mov %4, 0xFF
lsh %4, 8
add %4, 0xFF

loop:
mov [VGA], %1
mov [VGA], %3
add %1, 8
cmp %1, %2
jne loop

mov %1, 0x7
mov [VGA], %1
mov %1, 0x0
mov [VGA], %1

mov %1, 0x7
mov [VGA], %1
mov %1, 159
lsh %1, 8
or %1, 159
mov [VGA], %1

mov %1, 119
lsh %1, 3
or %1, 7
mov [VGA], %1
mov %1, 0x0
mov [VGA], %1

mov %1, 119
lsh %1, 3
or %1, 7
mov [VGA], %1
mov %1, 159
lsh %1, 8
or %1, 159
mov [VGA], %1

mov [VGA], %4
mov [VGA], %4

infinite:
j infinite

