#
# RASTERIZE
#
# Takes in pointer to a triangle: Color + 3 screen coordinates (0 to 159 horizontal, 0 to 119 vertical, start at top, work down).
#
#
# Writes lines out to PRAM.

`define VGA 16383
`define SP %13
`define FP %14
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

mov SP, 0x2b #initialize stack
lsh SP, 8
or SP, 0xff
mov FP, SP


#Pass in a pointer to a triangle in memory.
infinite2:
mov eax, points

call rasterize

mov eax, 0xffff
mov [VGA], eax
mov [VGA], eax

#infinite:
#j infinite

mov eax, 0xf
#call pause

call rasterize

mov eax, [points+2]
lsh eax, 3
or eax, 7
mov [VGA], eax
mov eax, [points+1]
lsh eax, 8
mov [VGA], eax

mov eax, [points+4]
lsh eax, 3
or eax, 7
mov [VGA], eax
mov eax, [points+3]
lsh eax, 8
mov [VGA], eax

mov eax, [points+6]
lsh eax, 3
or eax, 7
mov [VGA], eax
mov eax, [points+5]
lsh eax, 8
mov [VGA], eax

mov eax, 0xf
#call pause

mov eax, 0xffff
mov [VGA], eax
mov [VGA], eax

#call movepoint #This will add motion to the triangle to test various different weird triangles.

j infinite2

rasterize:
# Step one: Determine lowest point and percolate up the two edges connecting to it.
# Possible cases:
#   One lowest point (normal)
#   Two lowest point (horizontal bottom)
#   Three lowest points (horizontal line of pixels)

#For lookup table, must map ydif to 1/ydif. ydif has 120 possible values.


#Sort points by y value, smallest first, biggest last.

mov FP, SP
mov temp1, [points+2]
mov temp2, [points+4]

cmp temp1, temp2
jg temp2, temp1, dontswap
mov [points+2], temp2 # Swap y-coords
mov [points+4], temp1
mov temp1, [points+1] # Load x-coords
mov temp2, [points+3]
mov [points+1], temp2 # Swap x-coords
mov [points+3], temp1
dontswap: #now ebx holds the smaller y-coord of first two points

mov temp1, [points+2]
mov temp2, [points+6]
cmp temp1, temp2
jg temp2, temp1, dontswap2
mov [points+2], temp2
mov [points+6], temp1
mov temp1, [points+1] # Load x-coords
mov temp2, [points+5]
mov [points+1], temp2 # Swap x-coords
mov [points+5], temp1
dontswap2: #now ebx holds the smallest y-coord

#Now sort last 2 points by x-value, lowest first, then highest.

mov temp1, [points+3]
mov temp2, [points+5]
cmp temp1, temp2 #compare x values of other two points
jl temp1, temp2, dontswap3
mov [points+3], temp2
mov [points+5], temp1
mov temp1, [points+4] # Load x-coords
mov temp2, [points+6]
mov [points+4], temp2 # Swap x-coords
mov [points+6], temp1
dontswap3: #Now points are sorted so first is lowest y-value, second is lowest x-value of remaining two.

#Now xrefleft = xrefright = x1
#xdifleft = x2 - xref.
#xdifright = x3-xref.
#ydifleft = y2-y1
#ydifright = y3-y1
#This works until yvalleftue == y2 || yvalleftue == y3.
#x for given yvalleftue, x = xref + (yvalleftue)*(1/ydif)*xdif.

#Setup for percolate loop:
#left side
mov yvalleft, 0 #[points+2] #Initialize loop counter -- Move smallest y-value into line.
mov yvalright, 0
mov temp1, [points+1] #Move xref into temp1
mov ebx, [points+3] #Move x2 into ebx
sub ebx, temp1 #ebx = xdifleft.
mov ecx, [points+2] #y1
mov edx, [points+4] #y2
sub edx, ecx #ydifleft.
mov %10, slopes
add edx, %10
mov edx, [edx] #edx = 1/ydifleft

#right side
mov temp2, [points+1] #Move xref into temp2
mov eax, [points+5] #Move x3 into eax
sub eax, temp2 #eax = x3-x1 = xdifright.
mov eex, [points+2] #y1
mov ecx, [points+6] #y3
sub ecx, eex # ecx = y3-y1 = ydifright.
add ecx, %10
mov ecx, [ecx] #ecx = 1/ydifrigh

mov ymax, 0xffff #This should probably be moved elsewhere.

#percolate loop:

LineLoop:
#First check if yvalleft == y2 || yvalright == y3
mov eex, [points+4]
mov %10, [points+2]
add %10, yvalright
cmp eex, %10 #cmp with y2
jne y3cmp
	#y2 == yvalleft.
	mov temp1, [points+3] #temp1 = xrefleft = x2
	mov ebx, [points+5] #Move x3 into ebx
	sub ebx, temp1 #ebx = xdifleft = x3 - xref = x3 - x2.	
	mov edx, [points+6] #edx = y3
	mov eex, [points+4] #eex = y2
	sub edx, eex #edx = y3 - y2 = ydifleft
	mov %10, slopes
	add edx, %10
	mov edx, [edx] #edx = 1/ydifleft	
	mov ymax, [points+6]
	
	#Check for flat buns
	mov %10, [points+4]
	cmp %10, ymax
	je flatbuns
	
	mov %10, [points+2]
	sub ymax, %10
	mov yvalleft, 0
y3cmp:
mov eex, [points+6]
mov %10, [points+2]
add %10, yvalleft
cmp eex, %10 #cmp with y3
jne nochange
	#y3 == yvalleft.
	mov temp2, [points+5] #temp2 = xref = x3
	mov eax, [points+3] #Move x2 into eax
	sub eax, temp2 #eax = x2-x3 = xdifright.
	mov eex, [points+6] #y3
	mov ecx, [points+4] #y2
	sub ecx, eex # ecx = y2-y3 = ydifright.
	mov %10, slopes
	add ecx, %10
	mov ecx, [ecx] #ecx = 1/ydifright
	mov ymax, [points+4] #probably do the check here to see if ymax == [points+4] already, then this triangle has flat buns.
	mov %10, [points+2]
	sub ymax, %10
	mov yvalright, 0
nochange:

#If yvalue == y2
#xrefleft = x2
#xdifleft = x3-x2
#ydifleft = y3-y2

#If yvalue == y3
#xrefright = x3
#xdifright = x3-x2
#ydifright = y3-y2

#Increment yvalue til it hits the highest one, then done.

#First vga line-write.
mov eex, [points+2]
cmp yvalleft, yvalright
jl leftSmaller
add eex, yvalleft
j doneSmaller

leftSmaller:
add eex, yvalright

doneSmaller:
lsh eex, 3
mov %10, [points]
or eex, %10
mov [VGA], eex

#left
mov eex, edx #use eex as temp register.
mul ebx, yvalleft # LOW = xdif * yvalleft (max is 159 * 119 which is within 2^16, even when signed.)
fmul eex, LOW # edx = (yvalleftue)*(1/ydif) * xdif
add eex, temp1 #temp1 = x for given yvalleftue, x = xref + (yvalleftue)*(1/ydif)*xdif = left index to give to painter.

#right
mov %10, ecx #use %10 as temp register.
mul eax, yvalright # LOW = xdif * yvalleft (max is 159 * 119 which is within 2^16, even when signed.)
fmul %10, LOW # edx = (yvalleftue)*(1/ydif) * xdif
add %10, temp2 #temp1 = x for given yvalleftue, x = xref + (yvalleftue)*(1/ydif)*xdif = left index to give to painter.

#second vga line-write.
lsh eex, 8
or eex, %10
mov [VGA], eex

incr yvalleft
incr yvalright
cmp yvalright, ymax
je endloop
cmp yvalleft, ymax
jne LineLoop

endloop:

ret

flatbuns:
mov eex, [points+6]
lsh eex, 3
mov %10, [points]
or eex, %10
mov [VGA], eex

mov eex, [points+3]
lsh eex, 8
mov %10, [points+5]
or eex, %10
mov [VGA], eex
ret
###
### END RASTERIZE
###

#and eax, eax
#and eax, eax
#and eax, eax

#
# PAUSE - Handy helper function for drawing stuff and not flashing between buffers too fast.  Send a pause value in on eax ;)
#
pause:
mov ebx, 0xffff
mov edx, 0

pauseLoop2:
mov ecx, 0
pauseLoop1:
incr ecx
cmp ecx, ebx
jne pauseLoop1
incr edx
cmp edx, eax
jne pauseLoop2

ret

###
### END PAUSE
###

#
# MOVEPOINT
#
movepoint:

mov eax, [triangle+1] #x1
mov ebx, [triangle+2] #y1

cmp eax, 0
je movey
decr eax
mov [triangle+1], eax
j changecolor

movey:
cmp ebx, 0
je donemovepoint
decr ebx
mov [triangle+2], ebx

changecolor:
mov ecx, [triangle]
cmp ecx, 7
je resetseven
incr ecx
mov [triangle], ecx
j donemovepoint

resetseven:
mov ecx, 2
mov [triangle], ecx

donemovepoint:

call newtriangle

ret
###
### END MOVEPOINT
###

#
# NEWTRIANGLE
# Pass in 7 values on %0-%6
#
newtriangle:

mov eax, [triangle]
mov [points], eax
mov eax, [triangle+1]
mov [points+1], eax
mov eax, [triangle+2]
mov [points+2], eax
mov eax, [triangle+3]
mov [points+3], eax
mov eax, [triangle+4]
mov [points+4], eax
mov eax, [triangle+5]
mov [points+5], eax
mov eax, [triangle+6]
mov [points+6], eax

ret
###
### END NEWTRIANGLE
###

.data

points:
1

84 #4
115 #1

53 #1
67 #10

114 #7
54 #10

triangle:
1
84
115
53
54
114
67

slopes:
0b0000000000000000
0b0100000000000000
0b0010000000000000
0b0001010101010101
0b0001000000000000
0b0000110011001100
0b0000101010101010
0b0000100100100100
0b0000100000000000
0b0000011100011100
0b0000011001100110
0b0000010111010001
0b0000010101010101
0b0000010011101100
0b0000010010010010
0b0000010001000100
0b0000010000000000
0b0000001111000011
0b0000001110001110
0b0000001101011110
0b0000001100110011
0b0000001100001100
0b0000001011101000
0b0000001011001000
0b0000001010101010
0b0000001010001111
0b0000001001110110
0b0000001001011110
0b0000001001001001
0b0000001000110100
0b0000001000100010
0b0000001000010000
0b0000001000000000
0b0000000111110000
0b0000000111100001
0b0000000111010100
0b0000000111000111
0b0000000110111010
0b0000000110101111
0b0000000110100100
0b0000000110011001
0b0000000110001111
0b0000000110000110
0b0000000101111101
0b0000000101110100
0b0000000101101100
0b0000000101100100
0b0000000101011100
0b0000000101010101
0b0000000101001110
0b0000000101000111
0b0000000101000001
0b0000000100111011
0b0000000100110101
0b0000000100101111
0b0000000100101001
0b0000000100100100
0b0000000100011111
0b0000000100011010
0b0000000100010101
0b0000000100010001
0b0000000100001100
0b0000000100001000
0b0000000100000100
0b0000000100000000
0b0000000011111100
0b0000000011111000
0b0000000011110100
0b0000000011110000
0b0000000011101101
0b0000000011101010
0b0000000011100110
0b0000000011100011
0b0000000011100000
0b0000000011011101
0b0000000011011010
0b0000000011010111
0b0000000011010100
0b0000000011010010
0b0000000011001111
0b0000000011001100
0b0000000011001010
0b0000000011000111
0b0000000011000101
0b0000000011000011
0b0000000011000000
0b0000000010111110
0b0000000010111100
0b0000000010111010
0b0000000010111000
0b0000000010110110
0b0000000010110100
0b0000000010110010
0b0000000010110000
0b0000000010101110
0b0000000010101100
0b0000000010101010
0b0000000010101000
0b0000000010100111
0b0000000010100101
0b0000000010100011
0b0000000010100010
0b0000000010100000
0b0000000010011111
0b0000000010011101
0b0000000010011100
0b0000000010011010
0b0000000010011001
0b0000000010010111
0b0000000010010110
0b0000000010010100
0b0000000010010011
0b0000000010010010
0b0000000010010000
0b0000000010001111
0b0000000010001110
0b0000000010001101
0b0000000010001100
0b0000000010001010
0b0000000010001001