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
`define STACK 11264 # stack starts at 11264 (this is the top of memory, be careful)

# Bootup and initialization Code
init:
	mov %SP, STACK

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
	mov [PLAYER_SCORE], %0
	mov [PLAYER_X], %0
	mov [PLAYER_Y], %0
	mov [PLAYER_THETA], %0
	mov [PLAYER_BULLET_TIME], %0
	mov [AI_X], %0
	mov [AI_Y], %0
	mov [AI_THETA], %0
	mov [AI_BULLET_TIME], %0
	mov %0, 5
	mov [PLAYER_LIVES], %0

mainLoop:
	# Check Inputs
	# Left/Right, update theta
	mov %3, [PLAYER_THETA]
	mov %4, [LEFT_KEY]
	mov %5, [RIGHT_KEY]
	sub %4, %5
	add %3, %4

	# Up/Down, update x/y
	mov %4, [PLAYER_X]
	mov %5, [PLAYER_Y]
	mov %6, [UP_KEY]
	mov %7, [DOWN_KEY]
	sub %6, %7         # Up-Down now in %6
	mov %1, %3         #
	call sin           # %1 has sin(theta)
	mov %HIGH, %1      # %HIGH has sin(theta)
	mul %HIGH, %6      #
	add %4, %LOW       # Player X now updated by the move amount
	                   #
	mov %1, %3         #
	call cos           # %1 has cos(theta)
	mov %HIGH, %1      #
	mul %HIGH, %6      # %LOW/HIGH has (UP-DOWN)*cos(theta)
	add %5, %LOW

	# TODO Move only when AI not in the way

	# -------------------------------
	# Move AI
	mov %6, [AI_THETA]
	mov %7, [AI_X]
	mov %8, [AI_Y]

	# -------------------------------
	# Move bullet

	# Bullet collide against anything?

	# Store Final Values
	mov [PLAYER_THETA], %3
	mov [PLAYER_X], %4
	mov [PLAYER_Y], %5
	mov [AI_THETA], %6
	mov [AI_X], %7
	mov [AI_Y], %8

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

# Take a number in the $1 reg, return the sin of that number into the $1 reg
sin:
	ret

# Take a number in the $1 reg, return the cos of that number into the $1 reg
cos:
	ret

# Take numerator in $1, denominator in $2, return numerator/denominator in $1
div:
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

sine_lut:
000000000000000
000000001100100
000000011001001
000000100101101
000000110010001
000000111110110
000001001011010
000001010111110
000001100100010
000001110000110
000001111101010
000010001001110
000010010110010
000010100010101
000010101111000
000010111011011
000011000111110
000011010100000
000011100000010
000011101100100
000011111000110
000100000100111
000100010001000
000100011101001
000100101001010
000100110101010
000101000001001
000101001101000
000101011000111
000101100100110
000101110000100
000101111100001
000110000111110
000110010011011
000110011110111
000110101010011
000110110101110
000111000001001
000111001100011
000111010111100
000111100010101
000111101101110
000111111000101
001000000011100
001000001110011
001000011001001
001000100011110
001000101110011
001000111000111
001001000011010
001001001101101
001001010111110
001001100001111
001001101100000
001001110101111
001001111111110
001010001001100
001010010011010
001010011100110
001010100110010
001010101111101
001010111000111
001011000010000
001011001011001
001011010100000
001011011100111
001011100101101
001011101110001
001011110110101
001011111111000
001100000111011
001100001111100
001100010111100
001100011111011
001100100111010
001100101110111
001100110110011
001100111101111
001101000101001
001101001100011
001101010011011
001101011010010
001101100001001
001101100111110
001101101110010
001101110100101
001101111010111
001110000001000
001110000111000
001110001100111
001110010010101
001110011000001
001110011101101
001110100010111
001110101000001
001110101101001
001110110010000
001110110110110
001110111011011
001110111111110
001111000100001
001111001000010
001111001100010
001111010000001
001111010011111
001111010111011
001111011010111
001111011110001
001111100001010
001111100100010
001111100111000
001111101001110
001111101100010
001111101110101
001111110000111
001111110010111
001111110100111
001111110110101
001111111000010
001111111001110
001111111011000
001111111100001
001111111101001
001111111110000
001111111110110
001111111111010
001111111111101
001111111111111
001111111111111
