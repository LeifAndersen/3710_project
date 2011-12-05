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
	mov %SP, STACK_TOP
	mov %FP, %SP

	mov %0, bar_matrix
	mov %1, foo_vector
	mov %2, bar_vector
	call matrix_multiply

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
		incr %7
		mov %8, [%0]
		je %8, 1, matmulfmul
		# multiply them
			mul %3, %4
			# store in accumulator
			add %5, %LOW
			j matmuldonemul

			matmulfmul:
			fmul %3, %4
			# store in accumulator
			add %5, %3
		matmuldonemul:
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
	cmp %7, 18
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

.data
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

bar_matrix:
0
0
0
0
0x4000
1
0
0
1
0
0
0
0xb000
1
0
0
0
0

foo_vector:
4
5
6

bar_vector:
99
99
99