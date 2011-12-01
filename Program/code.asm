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
`define BULLET_RADIUS 1
`define TANK_RADIUS 10
`define AI_SPEED 10
`define AI_ROTATION_SPEED 10
`define PLAYER_START_LIVES 5
`define BULLET_SPEED 20
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
	mov [AI_TURNING], %0
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
	mov %0, PLAYER_START_LIVES
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

	# Move the AI
	
	mov %0, [AI_TURNING]
	je %0, 1, mainAITurningRight
	je %0, -1, mainAITurningRight
	mov %4, [AI_X]
	mov %5, [AI_Y]
	mov %6, [AI_THETA]
	mov %0, %6
	call cos
	mov %HIGH, %0
	mul %HIGH, AI_SPEED    # %LOW now has speed*sin(theta), to update Y
	add %4, %LOW           # %4 now has new Y (if possible)
	mov %0, %6
	call sin
	mov %HIGH, %0
	mul %HIGH, AI_SPEED
	add %5, %LOW           # %5 now has possible AI_Y
<<<<<<< HEAD
	j mainAIDoneMoving

mainAITurningRight:
	mov [AI_TARGET_THETA], %0
	mov [AI_THETA], %1
	je %0, %1, mainAIDoneTurning
	sub %1, AI_ROTATION_SPEED
	mov [AI_THETA], %1
	j mainAIDoneMoving

mainAITurningLeft:
	mov [AI_TARGET_THETA], %0
	mov [AI_THETA], %1
	je %0, %1, mainAIDoneTurning
	add %1, AI_ROTATION_SPEED
	mov [AI_THETA], %1
	j mainAIDoneMoving
	
mainAIDoneTurning:
	mov %0, 0
	mov [AI_TURNING], %0

mainAIDoneMoving:
=======
>>>>>>> 445b2531cb74bddd24d0f4896bf2519df8b95993

	# Move Player bullet
	mov %6, [PLAYER_BULLET_TIME]
	je %6, 0, mainPlayerBulletFire # If unused, let player fire
	sub %6, 1
	mov [PLAYER_BULLET_TIME], %6

	mov %6, [PLAYER_BULLET_X]
	mov %7, [PLAYER_BULLET_Y]
	mov %0, [PLAYER_BULLET_THETA]
	call cos
	mul %0, BULLET_SPEED
	add %6, %LOW           # 6 now conains bullet x
	mov %0, [PLAYER_BULLET_THETA]
	call sin
	mul %0, BULLET_SPEED
	add %7, %LOW           # 7 now contains bullet y

	# Check bullet AI Collision
	mov %0, %4
	sub %0, %6
	mul %0, %0
	mov %0, %LOW
	mov %1, %5
	sub %1, %7
	mul %1, %1
	add %0, %LOW # 0 now contains (x0-x1)^2+(y0-y1)^2
	mov %1, BULLET_RADIUS
	add %1, TANK_RADIUS
	jg %0, %1, mainEndPlayerBullet # Not a hit

	# Bullet colided with AI
	mov %0, [PLAYER_SCORE]
	add %0, 1
	mov [PLAYER_SCORE], %0

	# Reset AI position
	mov %0, [AI_START_X]
	mov [AI_X], %0
	mov %0, [AI_START_Y]
	mov [AI_Y], %0
	mov %0, 0
	mov [AI_TURNING], %0

	j mainEndPlayerBullet

mainPlayerBulletFire:
	mov %8, [A_KEY]
	je %8, 0, mainEndPlayerBullet # Didn't fire
	mov [PLAYER_BULLET_X], %2
	mov [PLAYER_BULLET_Y], %3
	mov %1, [PLAYER_THETA]
	mov [PLAYER_BULLET_THETA], %1

mainEndPlayerBullet:

	# Move AI bullet
	mov %8, [AI_BULLET_TIME]
	je %8, 0, mainAIBulletFire # If unused, AI Fires turnes and fires bullet
	sub %8, 1
	mov [AI_BULLET_TIME], %8

	mov %8, [AI_BULLET_X]
	mov %9, [AI_BULLET_Y]
	mov %0, [AI_BULLET_THETA]
	call cos
	mul %0, BULLET_SPEED
	add %8, %LOW           # 8 now conains bullet x
	mov %0, [AI_BULLET_THETA]
	call sin
	mul %0, BULLET_SPEED
	add %9, %LOW           # 9 now contains bullet y

	# Check bullet AI Collision
	mov %0, %2
	sub %0, %8
	mul %0, %0
	mov %0, %LOW
	mov %1, %3
	sub %1, %9
	mul %1, %1
	add %0, %LOW # 0 now contains (x0-x1)^2+(y0-y1)^2
	mov %1, BULLET_RADIUS
	add %1, TANK_RADIUS
	jg %0, %1, mainEndPlayerBullet # Not a hit

	# Bullet hit player
	mov %0, [PLAYER_LIVES]
	je %0, 0, mainNewPlayer # Player died, restart game
	sub %0, 1
	mov [PLAYER_LIVES], %0
	mov %0, 0
	mov [AI_BULLET_TIME], %0

	j mainEndAIBullet

mainAIBulletFire:

	mov %0, %5
	sub %0, %3
	mov %1, %4
	sub %1, %2
	call FindTheta
	mov [AI_TARGET_THETA], %0
	mov %1, [AI_THETA]
	je %1, %0, mainAIFire
	mov %1, 1
	mov [AI_TURNING], %1
	j mainEndAIBullet

mainAIFire:
	

mainEndAIBullet:

	# Bullet Player collision

	# Store Final Values
	mov [PLAYER_X], %3
	mov [PLAYER_Y], %4
	mov [AI_X], %6
	mov [AI_Y], %7

	# Reset keyboard counters
	mov %0, 1
	mov [UP_KEY], %0

	# -------------------------------
	# For each triangle, do this, although unless it's an enemy tank, you can skip the AI step.

	#Put model in world coordinates:
	#	Create copy of model on stack from data.
	mov %0, [tank_model]	# AI tank
	mov %3, tank_model
	sub $SP, %0				# make room.
	mul %0, 10
	add %3, %0				# src pointer: ending address of tank (copy backward)
	mov %1, %SP				# dst pointer: space on stack
	copytankloop:
	mov %2, [%0]			# mov src into tmp
	mov [%1], %2			# mov tmp into dst
	decr %1					# src--
	decr %0					# count--
	jne %0, 0, copytankloop

	#	Scale model (multiply all points by scale vector).
	#	Rotate model around x axis by model angle.
	#	Rotate model around y axis by model angle.
	#	Translate model (add entity location to all points in model).

	#Put model in camera coordinates:
	#	Rotate model around y axis by camera angle.
	#	Rotate model around x axis by camera angle.

	# Rasterise

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

# Take x0 in 0, y0 in 1, x1 in 2 and y1 in 3, return the dot product in 0
# Does not destory any registers other than the return value in 0.
dot:
	push %LOW
	push %HIGH
	
	mul %0, %2
	mov %0, %LOW
	mul %1, %3
	add %0, %HIGH
	
	pop %HIGH
	pop %LOW
	ret

# Take the lines with delX in %0, and dely in %1, and return the angle theta of that line in %0
FindTheta:
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
	mov %9, sine_lut
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
	mov %9, sine_lut
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
	mov %9, sine_lut
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
	mov %9, sine_lut
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

# rotate a point (%0) (pointer) and stores it in %1 (pointer)
setup_rotate:
	push %9
	push %8
	push %6

	# move arguments into registers that aren't overwritten
	mov %8, %0	# xtheta
	mov %9, %1	# ytheta

	# generate rotation matrix x
	mov %0, %8	# generate and save cos
	call cos
	mov %6, %0
	mov %0, %8	# generate and save sin
	call sin
	mov %1, %0
	mov %0, 1	# fill matrix
	mov [rotation_matrix_x], %0		# 1
	mov %0, 0
	mov [rotation_matrix_x+1], %0	# 0
	mov [rotation_matrix_x+2], %0	# 0
	mov [rotation_matrix_x+3], %0	# 0
	mov [rotation_matrix_x+6], %0	# 0
	mov [rotation_matrix_x+4], %6	# cos (xtheta)
	not %0, %1	# negate %1 by inverting the bits and adding one
	add %0, 1
	mov [rotation_matrix_x+5], %0	# -sin (xtheta)
	mov [rotation_matrix_x+7], %1	# sin (xtheta)
	mov [rotation_matrix_x+8], %6	# cos (xtheta)

	# generate rotation matrix y
	mov %0, %9	# generate and save cos
	call cos
	mov %6, %0
	mov %0, %9	# generate and save sin
	call sin
	mov %1, %0
	mov %0, 0
	mov [rotation_matrix_y+1], %0	# 0
	mov [rotation_matrix_y+3], %0	# 0
	mov [rotation_matrix_y+5], %0	# 0
	mov [rotation_matrix_y+7], %0	# 0
	mov [rotation_matrix_y], %6		# cos (ytheta)
	mov [rotation_matrix_y+2], %1	# sin (ytheta)
	mov %0, 1
	mov [rotation_matrix_y+4], %6	# 1
	not %0, %1	# negate %1 by inverting the bits and adding one
	add %0, 1
	mov [rotation_matrix_y+6], %0	# -sin (xtheta)
	mov [rotation_matrix_y+8], %6	# cos (xtheta)

	pop %6
	pop %8
	pop %9
	ret

# setup rotation matricies with two angles (%0 and %1)
rotate_point:
	push %10
	push %7
	push %2

	mov %7, %0	# src point
	mov %10, %1	# dest point

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

	pop %2
	pop %7
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

AI_TURNING:
0

AI_TARGET_THETA:
0

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
