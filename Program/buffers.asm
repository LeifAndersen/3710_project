`define VGA 16383
`define LCD 16376
`define SWAP %5
`define LC %1 #line color.
`define LL %2 #last line.
`define LR %3 #left to right, full line.

#do some NOPs at start for safety.
and %5, %5
and %5, %5
and %5, %5
and %5, %5

#Set up to draw color 2 to backbuffer.
mov LC, 2
mov LL, 120
lsh LL, 3
add LL, 2
mov LR, 0x9F
mov SWAP, 0xFF
lsh SWAP, 8
add SWAP, 0xFF

#Swap first, test writing to low values.
#mov [VGA], SWAP
#mov [VGA], SWAP

#Loop til entire back buffer filled.
loop:
mov [VGA], LC
mov [VGA], LR
add LC, 8
cmp LC, LL
jne loop

mov [VGA], SWAP
mov [VGA], SWAP

infinite:
j infinite








