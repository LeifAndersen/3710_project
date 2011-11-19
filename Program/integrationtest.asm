`define UP_KEY 0
`define DOWN_KEY 0
`define LEFT_KEY 0
`define RIGHT_KEY 0
`define A_KEY 0
`define B_KEY 0
`define %HIGH %12
`define %LOW %11
`define VGA 0

# generate some pattern
Main:
	mov %0, 4096	# start of screen temp storage (NOT THE RIGHT WAY TO DO IT)
	mov %1, 8496	# end of screen temp storage 80x60

# write code to screen


# tell screen to change buffers


j Main