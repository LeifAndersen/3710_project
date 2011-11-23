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

# VGA write format
#
#	word 1: 15:10 - unused
#			 9:3  - height
#			 2:0  - color
#	word 2: 15:8  - start
#			 7:0  - end

# generate some pattern
Main:
	mov %SP, STACK
	mov %FP, %SP
	# set initial arguments to generate (it is recursive)
	mov %7, 64		# initial size of screen block
	mov %8, 0		# distance from the top of the screen
	call Generate
	# change buffers
	mov %10, 0xFFFF
	mov [VGA], %10
	mov [VGA], %10
forever:
	j forever

Generate: # args come in $7 and $8
	# recursively fill the screen with increasingly segmented blocks of color
	push %FP
	mov %FP, %SP
	mov %0, 0	# horizontal loop variable
	mov %2, 0	# color counter
	mov %3, 4	# color
outergen:
	# check what color to do
	cmp %2, %7
	jne dontflipcolor
	xor %3, 4
	mov %2, 0
dontflipcolor:
	# make the first word
	mov %5, %8	# set y pos
	lsh %5, 3
	or %5, %3	# complete first word with the color
	mov [VGA], %5 	# write the first word
	# make the second word
	mov %4, %0
	mov %5, %4
	add %4, 1
	lsh %5, 8	# make room for end value
	or %5, %4
	mov [VGA], %5 	# write the second word
	# check the loop bound
	incr %0
	incr %2
	cmp %0, 160
	jne outergen # repeat loop
	# call self with new arguments
	rsh %7, 1
	incr %8
	cmp %8, 120
	je donegen
	call Generate
donegen:
	pop %FP
	ret

.data

Heap:  #the heap grows up from the data section