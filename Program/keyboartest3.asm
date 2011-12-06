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
`define LOW %11
`define HIGH %12
`define eax %1
`define ebx %2
`define ecx %3
`define edx %4
`define eex %0
`define yvalright %5
`define ymax %6
`define temp1 %7
`define temp2 %8
`define yvalleft %9
`define LCD 16376
`define VGA 16383
`define BULLET_RADIUS 1
`define TANK_RADIUS 10
`define SPEED 100
`define ROTATION_SPEED 5000
`define PLAYER_START_LIVES 5
`define BULLET_SPEED 20
`define BULLET_LIFE 100
`define FIND_THETA_ACCURACY 5
`define DEGREE_90 0x4000      # 90 Degrees in our encoding
`define FIELD_MIN -8192
`define FIELD_MAZ 8192
`define FIT_SCREEN_SHIFT_AMMOUNT 7 # THe ammount of shifts needed to make 2*FIELD SIZE fit on the screen in both x and y axis
`define FIELD_OFFSET 8192 # Offset for field to make it all positive
`define DEBUG_TANK_SIZE 10
`define DEBUG_BULLET_SIZE 10
`define STACK_TOP 11264 # stack starts at 11264 (this is the top of memory, be careful)
`define FP %14
`define SP %13
`define zone1 %5
`define zone3 %6
`define zone2 %9
`define egx %7
`define efx %10
`define PERSPECTIVE -100

# Bootup and initialization Code
init:
	mov %SP, STACK_TOP
	mov %FP, %SP
# Begin der loop
	mov %0, 60
	mov %1, 60
	mov %2, 80
	mov %3, 80
	mov %4, 7
	call main

# Main Loop
main:
	push %0
	push %1
	push %2
	push %3
	push %4

	mov %0, 0
	mov %1, 0
	mov %2, 160
	mov %3, 120
	mov %4, 0
	call drawSquare

	pop %4
	pop %3
	pop %2
	pop %1
	pop %0

	call drawSquare


	mov %10, 0xffff
	mov [VGA], %10
	mov [VGA], %10

	mov %5, [RIGHT_KEY]
	mov %6, [LEFT_KEY]
	sub %5, %6
	add %0, %5
	add %2, %5

	mov [LCD], %0

	je %5, 0, skipReset
		mov [UP_KEY], %5
	skipReset:

	# push eax
	# mov eax, 0x1
	# call pause
	# pop eax
	j main


###
### PAUSE - Handy helper function for drawing stuff and not flashing between buffers too fast.  Send a pause value in on eax ;)
###
pause:
mov ebx, 0xffff
mov edx, 0

pauseLoop2:
mov ecx, 0
pauseLoop1:
incr ecx
cmp ecx, ebx
jne pauseLoop1
incr edx
cmp edx, eax
jne pauseLoop2

ret

###
### END PAUSE
###

# Take top left x in 0, top left y in 1, bottom right x in 2 bottom right y in 3,
# and color in 4
# Draw a square
drawSquare:

	push %0
	push %1
	push %2
	push %3
	push %4
	push %5

	lsh %0, 8
	or %0, %2
	drawSquareLoop:
		jg %1, %3, endDrawSquare

		mov %2, %1
		lsh %2, 3
		or %2, %4

		mov [VGA], %2
		mov [VGA], %0

		add %1, 1
		j drawSquareLoop
	endDrawSquare:

	pop %5
	pop %4
	pop %3
	pop %2
	pop %1
	pop %0
	ret

