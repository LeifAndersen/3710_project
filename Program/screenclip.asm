#
# ScreenClip
#
# This function takes pre-flattened (post-perspective) triangles and clips them to 0-159 horizontal, 0-119 vertical.
#
# Input: Pointer to the triangle list.
#
# Output: Triangles that are within the screenspace.  Any triangles outside are removed, any partially in/out are chopped into new triangle(s) that fit within the screenspace.