`define VGA 16383

infinite:

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

mov %5, 0xFFFF

#mov [VGA], %5
#mov [VGA], %5

mov %1, 1
mov %2, 120
lsh %2, 3
add %2, 1
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

mov %1, 84
lsh %1, 3
add %1, 7
mov %2, 120
lsh %2, 3
add %2, 7
mov %3, 0x9F
mov %4, 0xFF
lsh %4, 8
add %4, 0xFF

loop3:
mov [VGA], %1
mov [VGA], %3
add %1, 8
cmp %1, %2
jne loop3

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
or %1, 5
mov [VGA], %1
mov %1, 0x0
mov [VGA], %1

mov %1, 119
lsh %1, 3
or %1, 5
mov [VGA], %1
mov %1, 159
lsh %1, 8
or %1, 159
mov [VGA], %1

mov %1, 83
lsh %1, 3
or %1, 6
mov [VGA], %1
mov [VGA], %3

mov [VGA], %4
mov [VGA], %4
mov [VGA], %4
mov [VGA], %4
mov [VGA], %4
mov [VGA], %4
mov %5, %4

mov %2, 0xff
lsh %2, 8
or %2, 0xff
mov %3, 0
mov %4, 0xff

pauseOuter:
mov %1, 0
pauseInner:
add %1, 1
cmp %1, %2
jne pauseInner
add %3, 1
cmp %3, %4
jne pauseOuter

mov %1, 3
mov %2, 120
lsh %2, 3
add %2, 3
mov %3, 0x9F
mov %4, 0xFF
lsh %4, 8
add %4, 0xFF

difloop:
mov [VGA], %1
mov [VGA], %3
add %1, 8
cmp %1, %2
jne difloop

mov [VGA], %4
mov [VGA], %4

mov %2, 0xff
lsh %2, 8
or %2, 0xff
mov %3, 0
mov %4, 0xff

pauseOuter2:
mov %1, 0
pauseInner2:
add %1, 1
cmp %1, %2
jne pauseInner2
add %3, 1
cmp %3, %4
jne pauseOuter2

j infinite
