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
`define AI_SPEED 10
`define AI_ROTATION_SPEED 10
`define PLAYER_START_LIVES 5
`define BULLET_SPEED 20
`define BULLET_LIFE 100
`define FIND_THETA_ACCURACY 5
`define DEGREE_90 0      # 90 Degrees in our encoding
`define STACK_TOP 11264 # stack starts at 11264 (this is the top of memory, be careful)

main:

	mov %0, foo_model
	add %0, 1			# skip the count
	call furthest_point

	mov [LCD], %0

	forever:
	j forever

# given the pointer to a triangle in %0, find the farthest point and return the distance to it squared
furthest_point:
	push %1
	push %2
	push %3
	push %4

	mov %4, %0				# save triangle pointer
	incr %4					# get to p1
	mov %0, %4				# set up args
	call distance_squared	# get distance squared
	mov [LCD], %0
	mov %1, %0				# save distance to p1
	add %4, 3				# get to p2
	mov %0, %4				# set up args
	call distance_squared	# get distance squared
	mov [LCD], %0
	mov %2, %0				# save distance to p2
	add %4, 3				# get to p3
	mov %0, %4				# set up args
	call distance_squared	# get distance squared
	mov [LCD], %0
	mov %3, %0				# save distance to p3

	mov %0, %1				# assume p1 is nearest
	jge %0, %2, isfarther1	# check if p2 is farther
	mov %0, %2				# if so, set return to that
	isfarther1:				# otherwise keep |p1| in %0
	jge %0, %3, isfarther2	# check if p3 is farther
	mov %0, %3				# if so, set return to that
	isfarther2:				# otherwise keep %0

	pop $4
	pop %3
	pop %2
	pop %1
	ret

# given the pointer to a point in %0, find the difference squared and return it in %0
distance_squared:
	push %1
	push %2

	mov %1, [%0]
	mul %1, %1
	mov %2, %LOW
	incr %0
	mov %1, [%0]
	mul %1, %1
	add %2, %LOW
	incr %0
	mov %1, [%0]
	mul %1, %1
	add %2, %LOW
	mov %0, %2

	pop %2
	pop %1
	ret

.data

foo_model:
2
0
1
1
1
1
3
4
1
4
3
0
1
1
1
1
4
5
8
9
12
