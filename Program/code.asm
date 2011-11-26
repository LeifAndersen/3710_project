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
# stack starts at 11264 (this is the top of memory, be careful)

# Bootup and initialization Code
init:
	mov %SP, 0x2B
	lsh %SP, 8
	or %SP, 0xFF
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
	ret

# Take a number in the $0 reg, return the cos of that number into the $0 reg
cos:
	ret

# Take numerator in $0, denominator in $1, return numerator/denominator in $0
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

sine_lut:
0b000000000000000
0b000000001100100
0b000000011001001
0b000000100101101
0b000000110010001
0b000000111110110
0b000001001011010
0b000001010111110
0b000001100100010
0b000001110000110
0b000001111101010
0b000010001001110
0b000010010110010
0b000010100010101
0b000010101111000
0b000010111011011
0b000011000111110
0b000011010100000
0b000011100000010
0b000011101100100
0b000011111000110
0b000100000100111
0b000100010001000
0b000100011101001
0b000100101001010
0b000100110101010
0b000101000001001
0b000101001101000
0b000101011000111
0b000101100100110
0b000101110000100
0b000101111100001
0b000110000111110
0b000110010011011
0b000110011110111
0b000110101010011
0b000110110101110
0b000111000001001
0b000111001100011
0b000111010111100
0b000111100010101
0b000111101101110
0b000111111000101
0b001000000011100
0b001000001110011
0b001000011001001
0b001000100011110
0b001000101110011
0b001000111000111
0b001001000011010
0b001001001101101
0b001001010111110
0b001001100001111
0b001001101100000
0b001001110101111
0b001001111111110
0b001010001001100
0b001010010011010
0b001010011100110
0b001010100110010
0b001010101111101
0b001010111000111
0b001011000010000
0b001011001011001
0b001011010100000
0b001011011100111
0b001011100101101
0b001011101110001
0b001011110110101
0b001011111111000
0b001100000111011
0b001100001111100
0b001100010111100
0b001100011111011
0b001100100111010
0b001100101110111
0b001100110110011
0b001100111101111
0b001101000101001
0b001101001100011
0b001101010011011
0b001101011010010
0b001101100001001
0b001101100111110
0b001101101110010
0b001101110100101
0b001101111010111
0b001110000001000
0b001110000111000
0b001110001100111
0b001110010010101
0b001110011000001
0b001110011101101
0b001110100010111
0b001110101000001
0b001110101101001
0b001110110010000
0b001110110110110
0b001110111011011
0b001110111111110
0b001111000100001
0b001111001000010
0b001111001100010
0b001111010000001
0b001111010011111
0b001111010111011
0b001111011010111
0b001111011110001
0b001111100001010
0b001111100100010
0b001111100111000
0b001111101001110
0b001111101100010
0b001111101110101
0b001111110000111
0b001111110010111
0b001111110100111
0b001111110110101
0b001111111000010
0b001111111001110
0b001111111011000
0b001111111100001
0b001111111101001
0b001111111110000
0b001111111110110
0b001111111111010
0b001111111111101
0b001111111111111
0b001111111111111
