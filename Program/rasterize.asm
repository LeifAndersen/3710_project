#
# RASTERIZE
#
# Takes in pointer to a triangle: Color + 3 screen coordinates (0 to 159 horizontal, 0 to 119 vertical, start at top, work down).
#  
#
# Writes lines out to PRAM.

`define VGA 1638
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
jg temp1, temp2, dontswap3
mov [points+3], temp2
mov [points+5], temp1
mov temp1, [points+4] # Load x-coords
mov temp2, [points+6]
mov [points+4], temp2 # Swap x-coords
mov [points+6], temp1
dontswap3: #Now points are sorted so first is lowest y-value, second is highest x-value of remaining two.

ret

#Now xrefleft = xrefright = x1
#xdifleft = x2 - xref.
#xdifright = x3-xref.
#ydifleft = y2-y1
#ydifright = y3-y1
#This works until yvalue == y2 || yvalue == y3.
#x for given yvalue, x = xref + (yvalue)*(1/ydif)*xdif.

#Setup for percolate loop:
#left side
mov yval, [points+2] #Initialize loop counter -- Move smallest y-value into line.
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
mov ecx, [points+4] #y3
sub ecx, eex # ecx = y3-y1 = ydifright.
add ecx, %10
mov ecx, [ecx] #ecx = 1/ydifrigh

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
nochange:

#First vga line-write.
mov eex, yval
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

infinite2:
j infinite2

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
0
0
0