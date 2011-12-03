###
### CLIPPING
###
 
`define UP_KEY 16382
`define DOWN_KEY 16381
`define RIGHT_KEY 16380
`define LEFT_KEY 16379
`define A_KEY 16378
`define B_KEY 16377
`define %LOW %11
`define %HIGH %12
`define SP %13
`define FP %14
`define LOW %11
`define HIGH %12
`define eax %1
`define ebx %2
`define ecx %3
`define edx %4
`define eex %0
`define zone1 %5
`define zone3 %6
`define egx %7
`define temp2 %8
`define zone2 %9
`define efx %10
`define LCD 16376
`define VGA 16383
`define STACK_TOP 0x2bff

# Bootup and initialization Code
init:
	mov SP, STACK_TOP
	mov FP, SP
	
	mov eax, 84
	push eax
	mov eax, 115
	push eax
	
	pop ebx
	pop ecx
	
	infinite:
	j infinite