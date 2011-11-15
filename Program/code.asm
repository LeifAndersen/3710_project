`define UP_KEY 0
`define DOWN_KEY 0
`define LEFT_KEY 0
`define RIGHT_KEY 0
`define A_KEY 0
`define B_KEY 0
`define %HIGH %12
`define %LOW %11

# Bootup and initialization Code
init:
	# Begin der loop
	call main

# Main Loop
main:
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

	# -------------------------------
	# Move AI
	mov %6, [AI_THETA]
	mov %7, [AI_X]
	mov %8, [AI_Y]

	# Store Final Values
	mov [PLAYER_THETA], %3
	mov [PLAYER_X], %4
	mov [PLAYER_Y], %5

	# -------------------------------
	# Process State
	
	j main

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

PLAYER_THETA:
0

AI_X:
100

AI_Y:
100

AI_THETA:
0

AI_FIRE_TIMER:
1000

AI_FIRE_RESET:
1000
