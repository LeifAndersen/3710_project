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


main:
	mov %SP, STACK_TOP
	mov %FP, %SP

	mov %0, bullet_model
	call backfacecull

	forever:
	j forever


# back-face culls all triangles in a model whose pointer is in %0
backfacecull:
	push %0
	push %1
	push %2
	push %3
	push %4
	push %5

	mov %2, %0				# avoid overwriting
	mov %4, [%2]			# get size of model in triangles
	incr %2					# skip size

	#	|(p3 - p1) x (p3 - p2)|

	backfacecullloop:
	incr %2					# now at first point
	#	(p3 - p1)
	sub %SP, 3				# make temp point in %0
	mov %1, %SP
	# move p3 data into temp point
	add %2, 6				# now at p3
	mov %3, [%2]			# copy x
	mov [%1], %3
	incr %2
	incr %1
	mov %3, [%2]			# copy y
	mov [%1], %3
	incr %2
	incr %1
	mov %3, [%2]			# copy z
	mov [%1], %3
	sub %2, 8				# reset model pointer to p1
	mov %0, %2				# move p1 into arg0, temp pointer is already in %1 =]
	call vector_sub			# temp pointer now points to (p3 - p1)
	mov %5, %1				# save address to temp point in %5

	#	(p3 - p2)
	sub %SP, 3				# make another temp point in %0
	mov %1, %SP
	# move p3 data into temp point
	add %2, 6				# now at p3
	mov %3, [%2]			# copy x
	mov [%1], %3
	incr %2
	incr %1
	mov %3, [%2]			# copy y
	mov [%1], %3
	incr %2
	incr %1
	mov %3, [%2]			# copy z
	mov [%1], %3
	sub %2, 5				# reset model pointer to p2
	mov %0, %2				# move p2 into arg0, temp pointer is already in %1 =]
	call vector_sub			# temp pointer in %1 now points to (p3 - p2)

	# do cross product
	mov	%0, %5				# move (p3 - p1) pointer to arg0 for arg0 x arg1
	call cross3
	# if the magnitude returned in %0 is less than 0, cull by setting color to 0xFFFF
	sub %2, 4				# reset model pointer to color
	jl %0, 0, dontcull

	mov %0, 0xFFFF
	mov [%2], %0			# cull

	dontcull:
	add %2, 10				# get to next triangle
	add %SP, 6				# clean up stack

	decr %4					# size--
	jge %4, 0, backfacecullloop

	pop %5
	pop %4
	pop %3
	pop %2
	pop %1
	pop %0
	ret

# Take a pointer to an xyz vector in %0, and the second in %1, return the maginude
# of the cross product (squared) in %0
cross3:
	push %2
	push %3
	push %4
	push %5
	push %6
	push %7
	push %LOW
	push %HIGH

	mov %2, [%0]
	add %0, 1
	mov %3, [%0]
	add %0, 1
	mov %4, [%0]

	mov %5, [%1]
	add %1, 1
	mov %6, [%1]
	add %1, 1
	mov %7, [%1]

	mul %3, %7
	mov %0, %LOW
	mul %4, %6
	sub %0, %LOW
	lsh %0, 1

	mul %4, %5
	mov %1, %LOW
	mul %2, %7
	sub %1, %LOW
	lsh %1, 1
	add %0, %1

	mul %2, %6
	mov %1, %LOW
	mul %3, %5
	sub %1, %LOW
	lsh %1, 1
	add %0, %1

	pop %HIGH
	pop %LOW
	pop %7
	pop %6
	pop %5
	pop %4
	pop %3
	pop %2
	ret

# adds the 3-lenth vector in %0 to the 3-lenth vector in %1 and stores it in %1
# src vector preserved, dst vector changed (but passed pointer is preserved)
vector_add:
	push %0
	push %1
	push %2
	push %3

	mov %2, [%0]
	mov %3, [%1]
	add %2, %3
	mov [%1], %2
	incr %0
	incr %1
	mov %2, [%0]
	mov %3, [%1]
	add %2, %3
	mov [%1], %2
	incr %0
	incr %1
	mov %2, [%0]
	mov %3, [%1]
	add %2, %3
	mov [%1], %2

	pop %3
	pop %2
	pop %1
	pop %0
	ret

# subtract the 3-lenth vector in %0 from the 3-lenth vector in %1 and stores it in %1
# src vector preserved, dst vector changed (but passed pointer is preserved)
vector_sub:
	push %0
	push %1
	push %2
	push %3

	mov %2, [%0]
	mov %3, [%1]
	sub %3, %2
	mov [%1], %2
	incr %0
	incr %1
	mov %2, [%0]
	mov %3, [%1]
	sub %3, %2
	mov [%1], %2
	incr %0
	incr %1
	mov %2, [%0]
	mov %3, [%1]
	sub %3, %2
	mov [%1], %2

	pop %3
	pop %2
	pop %1
	pop %0
	ret

.data
0xFFFF
0xFFFF
0xFFFF
0xFFFF

bullet_model:
12
# Face 0
1 #color
1 #-
-49
3
-1 #-
-49
3
-1 #-
-49
-3
1 #color
1 #-
-49
3
-1 #-
-49
-3
1 #-
-49
-3
# Face 1
2 #color
1 #-
-51
3
1 #-
-51
-3
-1 #-
-51
-3
2 #color
1 #-
-51
3
-1 #-
-51
-3
-1 #-
-51
3
# Face 2
1 #color
1 #-
-49
3
1 #-
-49
-3
1 #-
-51
-3
1 #color
1 #-
-49
3
1 #-
-51
-3
1 #-
-51
3
# Face 3
2 #color
1 #-
-49
-3
-1 #-
-49
-3
-1 #-
-51
-3
2 #color
1 #-
-49
-3
-1 #-
-51
-3
1 #-
-51
-3
# Face 4
1 #color
-1 #-
-49
-3
-1 #-
-49
3
-1 #-
-51
3
1 #color
-1 #-
-49
-3
-1 #-
-51
3
-1 #-
-51
-3
# Face 5
2 #color
-1 #-
-49
3
1 #-
-49
3
1 #-
-51
3
2 #color
-1 #-
-49
3
1 #-
-51
3
-1 #-
-51
3

0xFFFF