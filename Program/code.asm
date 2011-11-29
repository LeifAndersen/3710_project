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
`define BULLET_RADIUS 1
`define TANK_RADIUS 10
`define STACK_TOP 0x2bff # stack starts at 11264 (this is the top of memory, be careful)

# Bootup and initialization Code
init:
	mov %SP, STACK_TOP
	mov %FP, %SP

	# Begin der loop
	call main

# Main Loop
main:

	# Store the registers on the stack
	push $0
	push $1
	push $2
	push $3
	push $4
	push $5
	push $6
	push $7
	push $8
	push $9
	push $10

mainNewPlayer:
	mov %0, 0
	mov [PLAYER_BULLET_TIME], %0
	mov [AI_BULLET_TIME], %0
	mov [PLAYER_SCORE], %0
	mov %0, [PLAYER_START_X]
	mov [PLAYER_X], %0
	mov %0, [PLAYER_START_Y]
	mov [PLAYER_Y], %0
	mov %0, [PLAYER_START_THETA]
	mov [PLAYER_THETA], %0
	mov %0, [AI_START_X]
	mov [AI_X], %0
	mov %0, [AI_START_Y]
	mov [AI_Y], %0
	mov %0, [AI_START_THETA]
	mov [AI_THETA], %0
	mov %0, 5
	mov [PLAYER_LIVES], %0

mainLoop:
	# Check Inputs
	# Left/Right, update theta
	mov %2, [LEFT_KEY]
	mov %3, [RIGHT_KEY]
	mov %4, [PLAYER_THETA]
	sub %2, %3
	add %4, %2              # %4 has the theta change

	# Up/Down, update x/y
	mov %2, [PLAYER_X]
	mov %3, [PLAYER_Y]
	mov %5, [UP_KEY]
	mov %6, [DOWN_KEY]
	sub %5, %6             # Up-Down now in %6
	mov %0, %4             #
	call sin               # %1 has sin(theta)
	mov %HIGH, %0          # %HIGH has sin(theta)
	mul %HIGH, %5          #
	add %2, %LOW           # Player X now updated by the move amount
	                       #
	mov %0, %4             #
	call cos               # %1 has cos(theta)
	mov %HIGH, %0          #
	mul %HIGH, %5          # %LOW/HIGH has (UP-DOWN)*cos(theta)
	add %4, %LOW
	mov [PLAYER_THETA], %4 # Save the theta

	# TODO Move only when AI not in the way

	# -------------------------------
	# Move AI
	mov %5, [AI_THETA]
	mov %6, [AI_X]
	mov %7, [AI_Y]

	# -------------------------------
	# Move bullet

	# Bullet collide against anything?

	# Store Final Values
	mov [PLAYER_X], %3
	mov [PLAYER_Y], %4
	mov [AI_X], %6
	mov [AI_Y], %7

	# Reset keyboard counters

	# -------------------------------
	# For each triangle, do this, although unless it's an enimy tank, you can skip the AI step.

	# Get Projection Matrix Based on Players Position

	# Multiply this by world matrix

	# Mutiply AI tank matrix by outputted matrix

	# At this point, the triangle's x and y coordinates should be directly drawable on the screen.  The z coordinate is only used to determin what parts of the triangle is out of range.

	# Rasterise
	# For each line of pixels, do this:
	# For each triangle, if it's on that line, do this:
	# Find the intersection of pixel line, and the tringle, the left one is the ideal left, and the right one is the ideal right.  Special cases for one intersection (point), and when they're the same.

	# If the pixel is lower than 0 or greater than 160, set it as that.  If both of them are off the same side of the screen, just remove it altogether.

	# If z is out of range, find where the line intersects with the max/min z values, set that as your left/right points

	# Send it off to the hardware to be drawn.

	# -------------------------------

	j mainLoop # Loop again.

mainEnd:
	pop $10
	pop $9
	pop $8
	pop $7
	pop $6
	pop $5
	pop $4
	pop $3
	pop $2
	pop $1
	pop $0
	ret

# Take a number in the $0 reg, return the sin of that number into the $0 reg
sin:
	push %10
	push %9
	push %8
	push %7
	
	# move arg into %10
	mov %10, %0
	
	# quadrant modify the angles
	
	mov %9, %10		# switch on quadrant
	rsh %9, 14
	cmp %9, 1
	je second
	cmp %9, 2
	je third
	cmp %9, 3
	je fourth
	j sinend
	
	second:
	mov %9, sin_lut
	mov %8, %10
	rsh %8, 7
	and %8, 0x7F	# mask angle
	mov %7, 0x7F	# load max
	sub %7, %8		# max - angle
	add %9, %7
	mov %0, [%9]	# addr
	decr %9
	and %9, 0x7F
	mov %7, [%9]	# addr-1
	# multiply
	and %10, 0x7F	# fraction
	lsh %10, 7
	fmul %7, %10
	mov %9, 0x40
	lsh %9, 8
	sub %9, %10		# 1 - fraction
	fmul %0, %9
	add %0, %7
	j sinend
	
	third:
	mov %9, sin_lut
	mov %8, %10
	rsh %8, 7
	and %8, 0x7F	# mask angle
	sub %8, 0x7F	# angle - max
	add %9, %8
	mov %0, [%9]	# addr
	incr %9
	and %8, 0x7F
	mov %7, [%9]	# addr+1
	# multiply
	and %10, 0x7F	# fraction
	lsh %10, 7
	fmul %7, %10
	mov %9, 0x40
	lsh %9, 8
	sub %9, %10		# 1 - fraction
	fmul %0, %9
	add %0, %7
	not %0, %0
	add %0, 1
	j sinend
	
	fourth:
	mov %9, sin_lut
	mov %8, %10
	rsh %8, 7
	and %8, 0x7F	# mask angle
	mov %7, 0x7F	# load max
	sub %7, %8		# max - angle
	add %9, %7
	mov %0, [%9]	# addr
	decr %9
	and %8, 0x7F
	mov %7, [%9]	# addr-1
	# multiply
	and %10, 0x7F	# fraction
	lsh %10, 7
	fmul %7, %10
	mov %9, 0x40
	lsh %9, 8
	sub %9, %10		# 1 - fraction
	fmul %0, %9
	add %0, %7
	not %0, %0
	add %0, 1
	j sinend
	
	sinend:
	mov %9, sin_lut
	mov %8, %10
	rsh %8, 7
	and %8, 0x7F
	add %9, %8
	mov %0, [%9]	# addr
	incr %9
	and %8, 0x7F
	mov %7, [%9]	# addr+1
	# multiply
	and %10, 0x7F	# fraction
	lsh %10, 7
	fmul %7, %10
	mov %9, 0x40
	lsh %9, 8
	sub %9, %10		# 1 - fraction
	fmul %0, %9
	add %0, %7

	# return
	pop %7
	pop %8
	pop %9
	pop %10
	
	ret

# Take a number in the $0 reg, return the cos of that number into the $0 reg
cos:
	push %10
	push %9
	
	mov %10, %0
	mov %9, 0xC0	#load 1100000000000000
	lsh %9, 8
	rsh %10, 14		#increment quadrant
	incr %10
	lsh %10, 14
	not %9, %9		#replace quadrant
	and %0, %9
	or %0, %10
	
	# call sin
	call sin
	
	pop %9
	pop %10
	ret

# Take numerator in $0, denominator in $1, return numerator/denominator in $0
div:
	ret

# rotate a point (%0) (pointer) by two angles (%1 and %2), and stores it in %3 (pointer)
rotate_point:
	push %10
	push %9
	push %8
	push %7
	push %6
	push %5

	# move arguments into registers that aren't overwritten
	mov %7, %0	# src point
	mov %8, %1	# xtheta
	mov %9, %2	# ytheta
	mov %10, %3	# dest point

	# generate rotation matrix x
	mov %0, %8	# generate and save cos
	call cos
	mov %6, %0
	mov %0, %8	# generate and save sin
	call sin
	mov %5, %0
	mov %0, 1	# fill matrix
	mov [rotation_matrix_x], %0		# 1
	mov %0, 0
	mov [rotation_matrix_x+1], %0	# 0
	mov [rotation_matrix_x+2], %0	# 0
	mov [rotation_matrix_x+3], %0	# 0
	mov [rotation_matrix_x+6], %0	# 0
	mov [rotation_matrix_x+4], %6	# cos (xtheta)
	not %0, %5	# negate %5 by inverting the bits and adding one
	add %0, 1
	mov [rotation_matrix_x+5], %0	# -sin (xtheta)
	mov [rotation_matrix_x+7], %5	# sin (xtheta)
	mov [rotation_matrix_x+8], %6	# cos (xtheta)

	# generate rotation matrix y
	mov %0, %9	# generate and save cos
	call cos
	mov %6, %0
	mov %0, %9	# generate and save sin
	call sin
	mov %5, %0
	mov %0, 0
	mov [rotation_matrix_y+1], %0	# 0
	mov [rotation_matrix_y+3], %0	# 0
	mov [rotation_matrix_y+5], %0	# 0
	mov [rotation_matrix_y+7], %0	# 0
	mov [rotation_matrix_y], %6		# cos (ytheta)
	mov [rotation_matrix_y+2], %5	# sin (ytheta)
	mov %0, 1
	mov [rotation_matrix_y+4], %6	# 1
	not %0, %5	# negate %5 by inverting the bits and adding one
	add %0, 1
	mov [rotation_matrix_y+6], %0	# -sin (xtheta)
	mov [rotation_matrix_y+8], %6	# cos (xtheta)

	# make room on the stack for temp point
	sub %SP, 3

	# set up arguments for matrix multiply
	mov %0, rotation_matrix_x
	mov %1, %7
	mov %2, %SP
	# multiply first one
	call matrix_multiply

	# set up arguments for matrix multiply again
	mov %0, rotation_matrix_y	# matrix
	mov %1, %2					# temp point
	mov %2, %10					# dest point
	# multiply first one
	call matrix_multiply

	pop %5
	pop %6
	pop %7
	pop %8
	pop %9
	pop %10
	ret

# Multiply a matrix in %0 (pointer) by a vector in %1 (pointer) and store the result in the vector in %2 (pointer)
# ASSUMES NO ALIASING!!!!!!!!!!!
# matricies are row-major
matrix_multiply:
	push %3
	push %4
	push %5
	push %6
	push %7

	mov %7, 0	# matrix position counter

	matmulloop1:
	mov %5, 0	# accumulator
	mov %6, 0	# counter

	matmulloop2:
	# get two elements
	mov %3, [%0]
	mov %4, [%1]
	# multiply them
	mul %3, %4
	# store in accumulator
	add %5, %LOW
	# increment the pointers and counters
	incr %0
	incr %1
	incr %6
	incr %7
	# test loop condition
	cmp %6, 3
	jl matmulloop2
	# reset vector pointer
	sub %1, 3
	# save new row in return vector
	mov [%2], %5
	incr %2
	# test if we are done
	cmp %7, 9
	jl matmulloop1

	# done
	pop %7
	pop %6
	pop %5
	pop %4
	pop %3
	ret

.data
PLAYER_X:
0

PLAYER_Y:
0

PLAYER_START_X:
10

PLAYER_START_Y:
10

PLAYER_THETA:
0

PLAYER_START_THETA:
0

PLAYER_RADIUS:
10

PLAYER_LIVES:
5

PLAYER_SCORE:
0

PLAYER_BULLET_X:
0

PLAYER_BULLET_Y:
0

PLAYER_BULLET_THETA:
0

PLAYER_BULLET_TIME:
0

AI_X:
100

AI_Y:
100

AI_THETA:
0

AI_RADIUS:
10

AI_FIRE_TIMER:
1000

AI_FIRE_RESET:
1000

AI_BULLET_X:
0

AI_BULLET_Y:
0

AI_BULLET_THETA:
0

AI_BULLET_TIME:
0

AI_START_X:
10

AI_START_Y:
10

AI_START_THETA:
10

rotation_matrix_x:
0
0
0
0
0
0
0
0
0

rotation_matrix_y:
0
0
0
0
0
0
0
0
0

sine_lut:
0b0000000000000000
0b0000000011001001
0b0000000110010010
0b0000001001011011
0b0000001100100011
0b0000001111101100
0b0000010010110101
0b0000010101111101
0b0000011001000101
0b0000011100001101
0b0000011111010101
0b0000100010011100
0b0000100101100100
0b0000101000101010
0b0000101011110001
0b0000101110110110
0b0000110001111100
0b0000110101000001
0b0000111000000101
0b0000111011001001
0b0000111110001100
0b0001000001001111
0b0001000100010001
0b0001000111010011
0b0001001010010100
0b0001001101010100
0b0001010000010011
0b0001010011010001
0b0001010110001111
0b0001011001001100
0b0001011100001000
0b0001011111000011
0b0001100001111101
0b0001100100110111
0b0001100111101111
0b0001101010100110
0b0001101101011101
0b0001110000010010
0b0001110011000110
0b0001110101111001
0b0001111000101011
0b0001111011011100
0b0001111110001011
0b0010000000111001
0b0010000011100111
0b0010000110010010
0b0010001000111101
0b0010001011100110
0b0010001110001110
0b0010010000110100
0b0010010011011010
0b0010010101111101
0b0010011000011111
0b0010011011000000
0b0010011101011111
0b0010011111111101
0b0010100010011001
0b0010100100110100
0b0010100111001101
0b0010101001100101
0b0010101011111010
0b0010101110001110
0b0010110000100001
0b0010110010110010
0b0010110101000001
0b0010110111001110
0b0010111001011010
0b0010111011100011
0b0010111101101011
0b0010111111110001
0b0011000001110110
0b0011000011111000
0b0011000101111001
0b0011000111110111
0b0011001001110100
0b0011001011101110
0b0011001101100111
0b0011001111011110
0b0011010001010011
0b0011010011000110
0b0011010100110110
0b0011010110100101
0b0011011000010010
0b0011011001111100
0b0011011011100101
0b0011011101001011
0b0011011110101111
0b0011100000010001
0b0011100001110001
0b0011100011001111
0b0011100100101010
0b0011100110000011
0b0011100111011010
0b0011101000101111
0b0011101010000010
0b0011101011010010
0b0011101100100000
0b0011101101101100
0b0011101110110110
0b0011101111111101
0b0011110001000010
0b0011110010000100
0b0011110011000101
0b0011110100000010
0b0011110100111110
0b0011110101110111
0b0011110110101110
0b0011110111100010
0b0011111000010100
0b0011111001000100
0b0011111001110001
0b0011111010011100
0b0011111011000101
0b0011111011101011
0b0011111100001110
0b0011111100101111
0b0011111101001110
0b0011111101101010
0b0011111110000100
0b0011111110011100
0b0011111110110001
0b0011111111000011
0b0011111111010011
0b0011111111100001
0b0011111111101100
0b0011111111110100
0b0011111111111011
0b0011111111111110
0b0100000000000000
