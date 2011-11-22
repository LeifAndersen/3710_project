#
# RASTERIZE
#
# Takes in a triangle: Color + 3 screen coordinates (0 to 159 horizontal, 0 to 119 vertical, start at top, work down).
# 
# Writes lines out to PRAM.

'define STACK 11264
'define PRAM 16383


# Step one: Determine lowest point and percolate up the two edges connecting to it.
# Possible cases:
#   One lowest point (normal)
#   Two lowest point (horizontal bottom)
#   Three lowers points (horizontal line of pixels)

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