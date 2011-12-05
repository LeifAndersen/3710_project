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

	mov %0, 0x4000			#90 degrees
	call cos
	mov [LCD], %0
	mov %0, 0x8000			#180 degrees
	call cos
	mov [LCD], %0
	mov %0, 0x0000			#0 degrees
	call cos
	mov [LCD], %0
	mov %0, 0x2000			#45 degrees
	call cos
	mov [LCD], %0
	mov %0, 0x1500			#30 degrees
	call cos
	mov [LCD], %0
	mov %0, 0x5555			#120 degrees
	call cos
	mov [LCD], %0

	forever:
	j forever

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
	j first

	second:
	mov %9, sine_lut
	mov %8, %10
	rsh %8, 7
	and %8, 0x7F	# mask angle
	mov %7, 0x7F	# load max
	sub %7, %8		# max - angle
	add %9, %7
	mov %0, [%9]	# addr
	mov %9, sine_lut
	sub %7, 1
	and %7, 0x7F
	add %9, %7
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
	and %8, 0x7F	# mask angle
	add %9, %8
	mov %0, [%9]	# addr
	mov %9, sine_lut
	add %8, 1
	and %8, 0x7F
	add %9, %8
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
	xor %0, 0x8000
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
	mov %9, sine_lut
	sub %7, 1
	and %7, 0x7F
	add %9, %7
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
	xor %0, 0x8000
	j sinend

	first:
	mov %9, sine_lut
	mov %8, %10
	rsh %8, 7
	and %8, 0x7F
	add %9, %8
	mov %0, [%9]	# addr
	mov %9, sine_lut
	add %8, 1
	and %8, 0x7F
	add %9, %8
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
	
	sinend:

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
	
.data
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
