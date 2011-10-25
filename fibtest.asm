# simple loop test with no stack usage.
	MOV $0, 1984
	MOV [1984], $0
	MOV $1, 14			# counter
	MOV $2, 7			# first
	MOV $3, 13			# second

FIBLIOOP:				# Fun stuff.  Prints out the value of fib after running 14 times
	# add the second to the first, then the new first to the second, then check the counter and decrement twice
	ADD $2, $3
	ADD $3, $2
	DECR $1
	DECR $1
	CMP $1, 0
	JNE FIBLIOOP

WASTELOOP:				# 1984 is now the current fib value in hex.  Hold it on the write line
	ADD $2, 0			# (put the value we got on the write line so the LCD shows it)
	MOV $4, [$2]		# Go to the memory location with address of the final number of the fib we generated
	CMP $4, $2			# if it was correct, it should have loaded 1984 from address 1984 and thus should be equal to 1984
	JE WASTELOOP

ERRORLOOP:				# otherwise, fall through and display error message
	ADD $4, 0xDEAD
	CMP $4, 0xDEAD
	JE ERRORLOOP