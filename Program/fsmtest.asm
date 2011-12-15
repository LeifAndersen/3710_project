# simple loop test with no stack usage.  Starts heap from bottom
	MOV $0, 7
	MOV $1, 13
	MOV $4, 14
	MOV $2, 42

TESTPARITY:
	MOV $3, $4
	AND $3, 1
	CMP $3, 0
	JE EVEN 		# Jump if $4 is even
	ADD $0, $1
	DECR $4
	CMP $4, 0
	JNE TESTPARITY
	JE WASTELOOP

EVEN:
	ADD $1, $0
	DECR $4
	CMP 0, $4		# other kind of compare
	JNE TESTPARITY

WASTELOOP:
	SUB $1, 0	# 1984 is now the current fib value in hex.  Hold it on the write line
	OR $1, 0
	NOT $5, 0
	JNE WASTELOOP
