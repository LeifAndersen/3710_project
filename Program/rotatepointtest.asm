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
`define DEGREE_90 0x4000      # 90 Degrees in our encoding
`define STACK_TOP 11264 # stack starts at 11264 (this is the top of memory, be careful)

main:
	mov %SP, STACK_TOP
	mov %FP, %SP

	mov %0, 0
	mov %1, DEGREE_90
	call setup_rotate
	mov %0, foo_point
	mov %1, bar_point
	call rotate_point

	forever:
	j forever

# Multiply a matrix in %0 (pointer) by a vector in %1 (pointer) and store the result in the vector in %2 (pointer)
# ASSUMES NO ALIASING!!!!!!!!!!!
# matricies are row-major
# preserves arguments
matrix_multiply:
	push %3
	push %4
	push %5
	push %6
	push %7
	push %8
	push %2
	push %1
	push %0

	mov %7, 0	# matrix position counter

	matmulloop1:
	mov %5, 0	# accumulator
	mov %6, 0	# counter

	matmulloop2:
	# get two elements
	mov %3, [%1]
	mov %4, [%0]
	# check which kind of multiply to do
	incr %0
	mov %8, [%0]
	je %8, 1, matmulfmul
	# multiply them
	mul %3, %4
	j matmuldonemul
	matmulfmul:
	fmul %3, %4
	matmuldonemul:
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
	pop %0
	pop %1
	pop %2
	pop %8
	pop %7
	pop %6
	pop %5
	pop %4
	pop %3
	ret

# setup rotation matricies with two angles (%0 and %1)
# preserves args
setup_rotate:
	push %9
	push %8
	push %6
	push %1
	push %0

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

	pop %0
	pop %1
	pop %6
	pop %8
	pop %9
	ret

# rotate a point %0 (pointer) and stores it in %1 (pointer)
# preserves arguments
rotate_point:
	push %10
	push %7
	push %2
	push %1
	push %0

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

	# clean up stack frame
	add %SP, 3

	pop %0
	pop %1
	pop %2
	pop %7
	pop %10
	ret


.data
0xFFFF
0xFFFF
0xFFFF
0xFFFF

foo_point:
0
0
200

0xFFFF

bar_point:
99
99
99

0xFFFF

foo_matrix:
2
0
-1
0
1
0
0
0
-2
0
1
0
1
0
-2
0
0
0

0xFFFF

bar_vector:
4
5
6

0xFFFF

baz_vector:
99
99
99

0xFFFF

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
0
0
0
0
0
0
0
0
0


0xFFFF

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
0
0
0
0
0
0
0
0
0

0xFFFF