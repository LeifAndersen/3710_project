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
`define LCD 16376
`define VGA 16383
`define STACK_TOP 0x2bff # stack starts at 11264 (this is the top of memory, be careful)

# Bootup and initialization Code
init:
	mov %SP, STACK_TOP
	mov %FP, %SP

	# Begin der loop
	call main

# Main Loop
main:
	mov %1, 1000000000
mainLoop:
	sub %1, 1
	jg %1, 0, mainLoop
	mov %0, [UP_KEY]
	mov [LCD], %0
	mov [UP_KEY], %0
	j main
