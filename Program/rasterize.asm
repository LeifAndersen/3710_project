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
`define efx %5
`define ymax %6
`define temp1 %7
`define temp2 %8
`define yval %9

mov SP, 0x2b #initialize stack
lsh SP, 8
or SP, 0xff
mov FP, SP


#Pass in a pointer to a triangle in memory.
mov eax, points

call rasterize

mov eax, 0xffff
mov [VGA], eax
mov [VGA], eax

infinite:
j infinite

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
#This works until yvalue == y2 || yvalue == y3.
#x for given yvalue, x = xref + (yvalue)*(1/ydif)*xdif.

#Setup for percolate loop:
#left side
mov yval, 0 #[points+2] #Initialize loop counter -- Move smallest y-value into line.
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
#First check if yval == y2 || yval == y3
mov eex, [points+4]
cmp eex, yval #cmp with y2
jne y3cmp
	#y2 == yval.
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
	mov efx, [points+2]
	sub ymax, efx
y3cmp:
mov eex, [points+6]
cmp eex, yval #cmp with y2
jne nochange
	#y3 == yval.
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
	mov efx, [points+2]
	sub ymax, efx
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
add eex, yval
lsh eex, 3
mov %10, [points]
or eex, %10
mov [VGA], eex

#left
mov eex, edx #use eex as temp register.
mul ebx, yval # LOW = xdif * yval (max is 159 * 119 which is within 2^16, even when signed.)
fmul eex, LOW # edx = (yvalue)*(1/ydif) * xdif
add eex, temp1 #temp1 = x for given yvalue, x = xref + (yvalue)*(1/ydif)*xdif = left index to give to painter.

#right
mov %10, ecx #use %10 as temp register.
mul eax, yval # LOW = xdif * yval (max is 159 * 119 which is within 2^16, even when signed.)
fmul %10, LOW # edx = (yvalue)*(1/ydif) * xdif
add %10, temp2 #temp1 = x for given yvalue, x = xref + (yvalue)*(1/ydif)*xdif = left index to give to painter.

#second vga line-write.
lsh eex, 8
or eex, %10
mov [VGA], eex

incr yval
cmp yval, ymax
jne LineLoop
#endloop

ret

.data

points:
2
34
65
3
4
64
17

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