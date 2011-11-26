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
`define xrefleft %5
`define xrefright %6
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

#Percolate loop:
mov yval, [points+2] #Initialize loop counter -- Move smallest y-value into line.

#First check if yval == y2 || yval == y3
mov eax, [points+4]
cmp eax, yval #cmp with y2
jne y3cmp

y3cmp:
mov eax, [points+6]
cmp eax, yval #cmp with y2
jne nochange

nochange:

mov temp1, [points+1] #Move xref into eax
mov ebx, [points+3] #Move x2 into eax
sub ebx, temp1 #ebx = xdifleft.
mov ecx, [points+2] #y1
mov edx, [points+4] #y2
sub edx, ecx #ydifleft.

mov %10, slopes
add edx, %10
mov edx, [edx] #edx = 1/ydifleft
fmul edx, yval #edx = (yvalue)*(1/ydif)
mul edx, ebx #since result is within -160 to 160, LOW has entire result. (yvalue)*(1/ydif) * xdif
add temp1, LOW #temp1 = x for given yvalue, x = xref + (yvalue)*(1/ydif)*xdif = left index to give to painter.




#If yvalue == y2
#xrefleft = x2
#xdifleft = x3-x2
#ydifleft = y3-y2 

#If yvalue == y3
#xrefright = x3
#xdifright = x3-x2
#ydifright = y3-y2 

#Increment yvalue til it hits the highest one, then done.

# Step two: Percolate upward and use y value and x distance between two endpoints and the startpoint as index into lookup table.  Then multiply by return.
# Use x of root point as reference.
# Two cases to calculate left index:
# Case 1: reference > other (in which case subtract lookup result from x)
# Case 2: reference < other (in which case add lookup result from x)
# Same situation for right index, except its going to be the rightmost line instead of the leftmost.
# x values of points opposite reference can be use to calculate whose leftmost/rightmost.
# with these values and color, write to the queue.
# Each time y is incremented, check if y == the y value of one of the points.  If so, that point will form a new line with the third vertice. This
# creates a funky triangle situation where now the top point is reference instead of bottom.

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