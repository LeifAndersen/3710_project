# simple loop test with no stack usage.
	AND %0, %0
	MOV %0, 0x19
	LSH %0, 8
	MOV %5, 0x84
	ADD %0, %5
	MOV [0x1984], %0
	MOV %1, 14			# counter
	MOV %2, 7			# first
	MOV %3, 13			# second

FIBLIOOP:				# Fun stuff.  Prints out the value of fib after running 14 times
	# add the second to the first, then the new first to the second, then check the counter and decrement twice
	ADD %2, %3
	ADD %3, %2
	DECR %1
	DECR %1
	CMP %1, 0
	JNE FIBLIOOP

WASTELOOP:				# 1984 is now the current fib value in hex.  Hold it on the write line
	MOV %4, [%2]		# Go to the memory location with address of the final number of the fib we generated
	CMP %4, %2			# if it was correct, it should have loaded 1984 from address 1984 and thus should be equal to 1984
	JE END

ERRORLOOP:				# otherwise, fall through and display error message
	MOV %4, 0xDE
	LSH %4, 8
	ADD %4, 0xAD

END:
	MOV [8192], %4
	MOV $9, [0x404]