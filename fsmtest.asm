# simple loop test with no stack usage.  Starts heap from bottom
MOVRI 7, $0
MOVRI 13, $1
MOVRI 14, $4
MOVRI 42, $2

.TESTPARITY
MOVR $4, $3
ANDI 1, $3
CMPI 0, $3
JE EVEN 		# Jump if $4 is even
ADD $1, $0
DECR $4
CMPI 0, $4
JNE TESTPARITY
JE WASTELOOP

.EVEN
ADD $0, $1
DECR $4
CMPI 0, $4
JNE TESTPARITY

.WASTELOOP
SUBI 0, $1	# 1984 is now the current fib value in hex.  Hold it on the write line
ORI 0, $1
NOTI 0, $8
JNE WASTELOOP