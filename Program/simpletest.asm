# only memory mapped I/O can be used as macros to constants. DO NOT MAKE CONSTANTS BIGGER THAN * BITS
`define UP_KEY 16382
`define DOWN_KEY 16381
`define RIGHT_KEY 16380
`define LEFT_KEY 16379
`define A_KEY 16378
`define B_KEY 16377
`define %LOW %11
`define %HIGH %12
`define %SP %13
`define %FP %14
`define VGA 16383
`define LCD 16376

# stack starts at 11264 (this is the top of memory, be careful)

Main:
	mov %SP, 0x2BFF
	mov %FP, %SP
	mov %0, 0
	call function
	mov [LCD], %SP
forever:
	j forever

function:
	mov %0, 0xDEAD
	ret

.data

Heap:  #the heap grows up from the data section