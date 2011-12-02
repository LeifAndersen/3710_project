`define %SP %13
`define %FP %14
`define STACK_TOP 0x2bff # stack starts at 11264 (this is the top of memory, be careful)

# Bootup and initialization Code
init:
	mov %SP, STACK_TOP
	mov %FP, %SP

	# Begin der loop
	call main

main:

and %1, %1
and %1, %1

mov %1, 5

push %1

and %1, %1
and %1, %1

and %1, %1
and %1, %1

pop %2

infinite:
j infinite