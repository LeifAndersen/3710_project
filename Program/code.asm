`define UP_KEY 0
`define DOWN_KEY 0
`define LEFT_KEY 0
`define RIGHT_KEY 0
`define A_KEY 0
`define B_KEY 0

# Bootup and initialization Code
init:
	mov [B_KEY], %5

# Main Loop
main:
	mov %1, [A_KEY]
	j main

# Take a number in the $1 reg, return the sin of that number into the $1 reg
sin:

# Take a number in the $1 reg, return the cos of that number into the $1 reg
cos:
