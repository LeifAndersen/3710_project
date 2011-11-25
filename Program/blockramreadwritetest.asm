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
`define LCD 16376

# check that it is possible to read and write to all block rams
Main:
	mov %0, 1
	mov [block], %0
	mov [block+1024], %0
	mov [block+2048], %0
	mov [block+3072], %0
	mov [block+4096], %0
	mov [block+5120], %0
	mov [block+6144], %0
	mov [block+7168], %0
	mov [block+8192], %0
	mov [block+9216], %0
	mov [block+10240], %0
	mov [block+11264], %0

	# mov stuff into one register
	mov %1, [block]
	mov %2, [block+1024]
	lsh %1, 1
	or  %1, %2
	mov %2, [block+2048]
	lsh %1, 1
	or  %1, %2
	mov %2, [block+3072]
	lsh %1, 1
	or  %1, %2
	mov %2, [block+4096]
	lsh %1, 1
	or  %1, %2
	mov %2, [block+5120]
	lsh %1, 1
	or  %1, %2
	mov %2, [block+6144]
	lsh %1, 1
	or  %1, %2
	mov %2, [block+7168]
	lsh %1, 1
	or  %1, %2
	mov %2, [block+8192]
	lsh %1, 1
	or  %1, %2
	mov %2, [block+9216]
	lsh %1, 1
	or  %1, %2
	mov %2, [block+10240]
	lsh %1, 1
	or  %1, %2
	mov %2, [block+11264]
	lsh %1, 1
	or  %1, %2

	# put the number on the LCD
	mov [LCD], %1
forever:
	j forever

.data
block:
