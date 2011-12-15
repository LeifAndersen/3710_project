###
### CLIPPING
###
 
`define UP_KEY 16382
`define DOWN_KEY 16381
`define RIGHT_KEY 16380
`define LEFT_KEY 16379
`define A_KEY 16378
`define B_KEY 16377
`define %LOW %11
`define %HIGH %12
`define SP %13
`define FP %14
`define LOW %11
`define HIGH %12
`define eax %1
`define ebx %2
`define ecx %3
`define edx %4
`define eex %0
`define zone1 %5
`define zone3 %6
`define egx %7
`define temp2 %8
`define zone2 %9
`define efx %10
`define LCD 16376
`define VGA 16383
`define STACK_TOP 0x2bff
`define PERSPECTIVE 10
`define temp1 %7
`define yvalleft %9
`define yvalright %5
`define ymax %6

# Bootup and initialization Code
init:
	mov SP, STACK_TOP
	mov FP, SP
	
	call main
	
main:
	mov eax, 180
	push eax
	
	mov eax, 205
	push eax
	
	mov eax, -60
	push eax
	
	mov eax, 140
	push eax
	
	mov eax, 50
	push eax
	
	mov eax, -35
	push eax
	
	mov eax, 1
	push eax
	
	mov eax, SP
	call clip

	mov eax, 0xffff
	mov [VGA], eax
	mov [VGA], eax

	infinite:
	j infinite


### CLIP
###
### Expects a pointer to a triangle in eax.  Triangle is expected to be [eax] = color, [eax+1] = x1, [eax+2] = y1, [eax+3] = x2, [eax+4] = y2, [eax+5] = x3, [eax+6] = y3
###
### NO RETURN VALUE - This function merely clips a triangle that's already been perspective transformed, rasterizes any on-screen parts, then discards the triangle.
###
clip:
	#mov FP, SP
	#push eax
	#push zone1
	#push zone2
	#push zone3
	#add SP, 10
	mov temp2, [eax]
	
	call copyTriangle
	
	#Given a triangle pointed at by eax, first do comparisons to establish the zone values of each point.
		# call copyTriangle # Don't need this because perspective already puts the triangle into triangle:
		
		mov zone1, 0
		mov zone2, 0
		mov zone3, 0
	
	###Check zone 0, 2
		#t1
		mov eax, [triangle+2] #y1
		jge eax, 0, p1notinzone0
			or zone1, 1
		p1notinzone0:
		
		jle eax, 119, p1notinzone2
			or zone1, 0b100
		p1notinzone2:	
	
		#t2
		mov eax, [triangle+4] #y2
		jge eax, 0, p2notinzone0
			or zone2, 1
		p2notinzone0:
		
		jle eax, 119, p2notinzone2
			or zone2, 0b100
		p2notinzone2:
		
		#t3
		mov eax, [triangle+6] #y3
		jge eax, 0, p3notinzone0
			or zone3, 1
		p3notinzone0:
		
		jle eax, 119, p3notinzone2
			or zone3, 0b100
		p3notinzone2:
	
	###Check zone 1,3
		#t1
		mov eax, [triangle+1] #x1
		jle eax, 159, p1notinzone1
			or zone1, 0b10
		p1notinzone1:
		
		jge eax, 0, p1notinzone3
			or zone1, 0b1000
		p1notinzone3:
		
		#t2
		mov eax, [triangle+3] #x2
		jle eax, 159, p2notinzone1
			or zone2, 0b10
		p2notinzone1:
		
		jge eax, 0, p2notinzone3
			or zone2, 0b1000
		p2notinzone3:
		
		#t3
		mov eax, [triangle+5] #x3
		jle eax, 159, p3notinzone1
			or zone3, 0b10
		p3notinzone1:
		
		jge eax, 0, p3notinzone3
			or zone3, 0b1000
		p3notinzone3:
		
	### Now we have established which zones every1 is in
	### Next step is the base case: if zone1 & zone2 & zone3 != 0, return.
	### Else if zone1 | zone2 | zone3 == 0, rasterize.

		mov eax, zone1
		and eax, zone2
		and eax, zone3
		
		je eax, 0, basecase1fail
			ret
		basecase1fail:
		
		mov eax, zone1
		or eax, zone2
		or eax, zone3
		
		jne eax, 0, basecase2fail
			call rasterize
			ret
		basecase2fail:
	
	### Reduction step.  Check zone by zone.
	### 
	###
	
	mov eax, zone1
	or eax, zone2
	or eax, zone3
	
	
	#Check zone 0.
	mov ebx, eax
	and ebx, 1
	
	jne ebx, 1, checkzone1
		### At least one point is in zone 0. Could be two triangle.
	
		mov egx, 0	
		mov [zone], egx
		
		### No longer need to save this zone information, so we can modify zone1, zone2, zone3
		and zone1, 1 #Make zone 0 the only bit left.
		and zone2, 1
		and zone3, 1
		
		mov eex, 0 #Prepare eex for split, eex is a param for it.
		
		j presplitsort	
	checkzone1:
	mov ebx, eax
	and ebx, 0b10
	
	jne ebx, 0b10, checkzone2
		### At least one point is in zone 1. Could be two triangle.
		
		mov egx, 1
		mov [zone], egx
		
		### No longer need to save this zone information, so we can modify zone1, zone2, zone3
		rsh zone1, 1
		rsh zone2, 1
		rsh zone3, 1
		
		and zone1, 1 #Make zone 0 the only bit left.
		and zone2, 1
		and zone3, 1
		
		mov eex, 159 #Prepare eex for split, eex is a param for it.
		
		j presplitsort	
	
	checkzone2:
	mov ebx, eax
	and ebx, 0b100
	
	jne ebx, 0b100, checkzone3
		### At least one point is in zone 2. Could be two triangle.
		
		mov egx, 2
		mov [zone], egx
		
		### No longer need to save this zone information, so we can modify zone1, zone2, zone3
		rsh zone1, 2
		rsh zone2, 2
		rsh zone3, 2
		
		and zone1, 1 #Make zone 0 the only bit left.
		and zone2, 1
		and zone3, 1
		
		mov eex, 119 #Prepare eex for split, eex is a param for it.
		
		j presplitsort
	
	checkzone3:
		### At least one point is in zone 3. Could be two triangle.
		
		mov egx, 3
		mov [zone], egx
		
		### No longer need to save this zone information, so we can modify zone1, zone2, zone3
		rsh zone1, 3
		rsh zone2, 3
		rsh zone3, 3
		
		and zone1, 1 #Make zone 0 the only bit left.
		and zone2, 1
		and zone3, 1
		
		mov eex, 0 #Prepare eex for split, eex is a param for it.
		
		j presplitsort	
	
	
	### First find pivot point once zone is established.
	
	### PRE-SPLIT SORT
	### Determine pivot point and then go to split.
	###
	presplitsort:
	#Six possibilities on which triangle are in zone 0.
		jne zone1, 1, point1notin0
			#point 1 is in 0
			jne zone2, 1, point1in0point2out
				# triangle 1 and 2 are in 0, point 3 is the pivot point.  Already presorted.
				j split
			point1in0point2out:
			jne zone3, 1, point1in0point3out
				# triangle 1 and 3 are in 0, point 2 is the pivot point.
				# Must sort so point 3 is the pivot. Swap triangle 2 and 3
				mov eax, [triangle+3]
				mov ebx, [triangle+5]
				mov [triangle+3], ebx
				mov [triangle+5], eax
				mov eax, [triangle+4]
				mov ebx, [triangle+6]
				mov [triangle+4], ebx
				mov [triangle+6], eax
				
				j split				
			point1in0point3out:
			#Only point 1 is in 0, point 1 is the pivot point. Must swap point 1 and 3.
				mov eax, [triangle+1]
				mov ebx, [triangle+5]
				mov [triangle+1], ebx
				mov [triangle+5], eax
				mov eax, [triangle+2]
				mov ebx, [triangle+6]
				mov [triangle+2], ebx
				mov [triangle+6], eax
				
				j split			
			point1notin0:
			jne zone2, 1, point2notin0
				#point 2 is in 0
				jne zone3, 1, point2in0point3out
					#triangle 2 and 3 are in 0. 1 is pivot.  Swap 1 and 3.
					mov eax, [triangle+1]
					mov ebx, [triangle+5]
					mov [triangle+1], ebx
					mov [triangle+5], eax
					mov eax, [triangle+2]
					mov ebx, [triangle+6]
					mov [triangle+2], ebx
					mov [triangle+6], eax
					
					j split
			point2in0point3out:
				#point 2 is the pivot.  Swap 2 and 3.
				mov eax, [triangle+3]
				mov ebx, [triangle+5]
				mov [triangle+3], ebx
				mov [triangle+5], eax
				mov eax, [triangle+4]
				mov ebx, [triangle+6]
				mov [triangle+4], ebx
				mov [triangle+6], eax
				
				j split
			point2notin0:
				#point 3 is the pivot. Already sorted.
					j split
	
	###
	### SPLIT
	###
	split:
		#triangle 1 and 2 are in 0, point 3 is the pivot point.
			mov efx, [zone]
			and efx, 1 #if zone is odd, that means its a side zone, flip input to binarysubdivide.
			je efx, 1, swapinputsforbinary
				mov eax, [triangle+5]
				mov ebx, [triangle+6]
				mov ecx, [triangle+1]
				mov edx, [triangle+2]
				#mov eex, 0
				call binarySubdivide
				mov zone1, eax # Zone1 contains the x-value of p1-p3 edge on y=0.
				
				mov eax, [triangle+5]
				mov ebx, [triangle+6]
				mov ecx, [triangle+3]
				mov edx, [triangle+4]
				#mov eex, 0
				call binarySubdivide #eax contains the x-value of p2-p3 edge on y=0.
				j checkpivotside
				
			swapinputsforbinary:
				mov eax, [triangle+6]
				mov ebx, [triangle+5]
				mov ecx, [triangle+2]
				mov edx, [triangle+1]
				#mov eex, 0
				call binarySubdivide
				mov zone1, eax # Zone1 contains the x-value of p1-p3 edge on y=0.
				
				mov eax, [triangle+6]
				mov ebx, [triangle+5]
				mov ecx, [triangle+4]
				mov edx, [triangle+3]
				#mov eex, 0
				call binarySubdivide #eax contains the x-value of p2-p3 edge on y=0.
			
			checkpivotside:
				
				###
				### Must check which side of boundary the pivot is on, and then create the new triangles so ones outside the boundary don't include the boundary value.
				###
				
				mov ebx, [zone]
				#zone0
				jne ebx, 0, tryzone1
					mov efx, -1
					#If pivot.y < 0, pivotoutsideboundaryx
					mov ecx, [triangle+6]
					jl ecx, 0, pivotoutsideboundaryx
					j pivotinsideboundaryx
					
				tryzone1:
				jne ebx, 1, tryzone2
					mov efx, 160
					mov ecx, [triangle+5]
					jg ecx, 159, pivotoutsideboundaryy
					j pivotinsideboundaryy
					
				tryzone2:
				jne ebx, 2, tryzone3
					mov efx, 120
					mov ecx, [triangle+6]
					jg ecx, 119, pivotoutsideboundaryx
					j pivotinsideboundaryx
					
				tryzone3:
				#Must be in this zone if it wasn't in the others.
					mov efx, -1
					mov ecx, [triangle+5]
					jl ecx, 0, pivotoutsideboundaryy
					j pivotinsideboundaryy
					
				### Pivot outside boundary
				###
				###
				
				pivotoutsideboundaryx:
				
				#Now form the three new triangles and push them onto the stack, recursive call to clip.
				mov ebx, [triangle+2]
				push ebx
				mov ebx, [triangle+1]
				push ebx
				push eex
				push zone1
				push eex
				push eax
				push temp2
				
				mov ebx, [triangle+2]
				push ebx
				mov ebx, [triangle+1]
				push ebx
				mov ebx, [triangle+4]
				push ebx
				mov ebx, [triangle+3]
				push ebx
				push eex
				push eax
				push temp2
				
				mov ebx, [triangle+6]
				push ebx
				mov ebx, [triangle+5]
				push ebx
				push efx
				push zone1
				push efx
				push eax
				push temp2
				
				j donepushingtriangles
				
				### Pivot inside boundary
				###
				###
				
				pivotinsideboundaryx:
				
				#Now form the three new triangles and push them onto the stack, recursive call to clip.
				mov ebx, [triangle+2]
				push ebx
				mov ebx, [triangle+1]
				push ebx
				push efx
				push zone1
				push efx
				push eax
				push temp2
				
				mov ebx, [triangle+2]
				push ebx
				mov ebx, [triangle+1]
				push ebx
				mov ebx, [triangle+4]
				push ebx
				mov ebx, [triangle+3]
				push ebx
				push efx
				push eax
				push temp2
				
				mov ebx, [triangle+6]
				push ebx
				mov ebx, [triangle+5]
				push ebx
				push eex
				push zone1
				push eex
				push eax
				push temp2
				
				j donepushingtriangles
					
				### Pivot outside boundary
				###
				###
				
				pivotoutsideboundaryy:
				
				#Now form the three new triangles and push them onto the stack, recursive call to clip.
				mov ebx, [triangle+2]
				push ebx
				mov ebx, [triangle+1]
				push ebx
				push zone1
				push eex
				push eax
				push eex
				push temp2
				
				mov ebx, [triangle+2]
				push ebx
				mov ebx, [triangle+1]
				push ebx
				mov ebx, [triangle+4]
				push ebx
				mov ebx, [triangle+3]
				push ebx
				push eax
				push eex
				push temp2
				
				mov ebx, [triangle+6]
				push ebx
				mov ebx, [triangle+5]
				push ebx
				push zone1
				push efx
				push eax
				push efx
				push temp2
				
				j donepushingtriangles
				
				### Pivot inside boundary
				###
				###
				
				pivotinsideboundaryy:
				
				#Now form the three new triangles and push them onto the stack, recursive call to clip.
				mov ebx, [triangle+2]
				push ebx
				mov ebx, [triangle+1]
				push ebx
				push zone1
				push efx
				push eax
				push efx
				push temp2
				
				mov ebx, [triangle+2]
				push ebx
				mov ebx, [triangle+1]
				push ebx
				mov ebx, [triangle+4]
				push ebx
				mov ebx, [triangle+3]
				push ebx
				push eax
				push efx
				push temp2
				
				mov ebx, [triangle+6]
				push ebx
				mov ebx, [triangle+5]
				push ebx
				push zone1
				push eex
				push eax
				push eex
				push temp2
				
				donepushingtriangles:
				
				incr FP ########## test code
				mov eax, SP
				call clip
				
				incr FP ########## test code
				add SP, 7
				mov eax, SP
				call clip
				
				incr FP ########## test code
				add SP, 7
				mov eax, SP
				call clip
				
				incr FP ########## test code
				add SP, 7
				
				ret			
###
###
### END CLIP
###
###


### PERSPECTIVE TRANSFORM
###
### Expects a pointer to a triangle in eax.  Triangle is expected to be [eax] = color, [eax+1] = x1, [eax+2] = y1, [eax+3] = z1, [eax+4] = x2, [eax+5] = y2, [eax+66] = z2, [eax+7] = x3, [eax+8] = y3, [eax+9] = z3
###
###
perspectivetransform:

	###Point 1
		incr eax
		call copypoint
		add eax, 3
		push eax
		
		#Superposition.  First, do x1 and z1, then do y1 and z1.
		mov eax, [point]
		mov ebx, [point+2]
		mov ecx, 0
		mov edx, PERSPECTIVE
		mov eex, 0
		
		call binarySubdivide
		
		mov [triangle+1], eax
		
		#Superposition.  First, do x1 and z1, then do y1 and z1.
		mov eax, [point+1]
		mov ebx, [point+2]
		mov ecx, 0
		mov edx, PERSPECTIVE
		mov eex, 0
		
		call binarySubdivide
		
		mov [triangle+2], eax
	
	###Point 2
	
		pop eax
		call copypoint
		add eax, 3
		push eax
		
		#Superposition.  First, do x1 and z1, then do y1 and z1.
		mov eax, [point]
		mov ebx, [point+2]
		mov ecx, 0
		mov edx, PERSPECTIVE
		mov eex, 0
		
		call binarySubdivide
		
		mov [triangle+3], eax
		
		#Superposition.  First, do x1 and z1, then do y1 and z1.
		mov eax, [point+1]
		mov ebx, [point+2]
		mov ecx, 0
		mov edx, PERSPECTIVE
		mov eex, 0
		
		call binarySubdivide
		
		mov [triangle+4], eax
		
	###Point 3
	
		pop eax
		call copypoint
		add eax, 3
		push eax
		
		#Superposition.  First, do x1 and z1, then do y1 and z1.
		mov eax, [point]
		mov ebx, [point+2]
		mov ecx, 0
		mov edx, PERSPECTIVE
		mov eex, 0
		
		call binarySubdivide
		
		mov [triangle+5], eax
		
		#Superposition.  First, do x1 and z1, then do y1 and z1.
		mov eax, [point+1]
		mov ebx, [point+2]
		mov ecx, 0
		mov edx, PERSPECTIVE
		mov eex, 0
		
		call binarySubdivide
		
		mov [triangle+6], eax
	
	mov eax, triangle
	
	call clip
	
	###Need to decide on a way to use the outgoing information.  Probably just pump it straight through to clip/rasterize.
	###Need to know incoming data format.
	


ret
###
###
### END PERSPECTIVE TRANSFORM
###
###


### BINARY SUBDIVIDE
### This method takes in 4 triangle and a coordinate, and returns the x point of intersection.
### eax = x1, ebx = y1, ecx = x2, edx = y2, eex = y-value of intersection.  return = x-value of intersection. Return is put into eax.
### Note - x and y can be switched to flip axes

binarySubdivide:		
	mov FP, 0xbbbb	
	### Find lowest point (most negative y) to start with.
		jge edx, ebx, ebxislowest
			mov efx, ebx
			mov ebx, edx
			mov edx, efx
			
			mov efx, eax
			mov eax, ecx
			mov ecx, efx
		ebxislowest:
		
	### Set up difference outside loop. efx is y difference.  egx is x difference.
			mov efx, edx #efx = y1
			sub efx, ebx #efx = y1 - y2
			
			mov egx, ecx #eax = x1
			sub egx, eax #egx = x1-x2
			
		###efx is guaranteed pos
			
		###Must ensure egx is positive.
			jge egx, 0, egxpositive
				not egx, egx
				add egx, 1
				j binarysubdivideloop2
			egxpositive:
		
		jne edx, eex, precheckedx
			mov eax, ecx
			ret
		precheckedx:
		
	binarysubdivideloop1:
		#First divide guess value by two.
		incr egx #round up
		incr efx #round up
		arsh egx, 1 #egx = (x1-x2)/2
		arsh efx, 1 #efx = (y1-y2)/2
		# If yguess == eex, done
		# efx holds yguess
			jne ebx, eex, binarySubdividenotdone1
				ret
			binarySubdividenotdone1:
		
		# If y1 < eex
			jge ebx, eex, y1belowlimit1
				add ebx, efx #ebx = y1 + (y1-y2)/2 = new y1.
				add eax, egx #eax = x1 + (x1-x2)/2 = new x1.
			j binarysubdivideloop1
			y1belowlimit1:
		# If y1 > eex
				sub ebx, efx #ebx = y1 - (y1-y2)/2 = new y1.
				sub eax, egx #eax = x1 - (x1-x2)/2 = new x1.
		
		j binarysubdivideloop1
		
	binarysubdivideloop2:
		#First divide guess value by two.
		incr egx #round up
		incr efx #round up
		arsh egx, 1 #egx = (x1-x2)/2
		arsh efx, 1 #efx = (y1-y2)/2
		# If yguess == eex, done
		# efx holds yguess
			jne ebx, eex, binarySubdividenotdone2
				ret
			binarySubdividenotdone2:
		
		# If y1 < eex
			jge ebx, eex, y1belowlimit2
				add ebx, efx #ebx = y1 + (y1-y2)/2 = new y1.
				sub eax, egx #eax = x1 + (x1-x2)/2 = new x1.
			j binarysubdivideloop2
			y1belowlimit2:
		# If y1 > eex
				sub ebx, efx #ebx = y1 - (y1-y2)/2 = new y1.
				add eax, egx #eax = x1 - (x1-x2)/2 = new x1.
		
		j binarysubdivideloop2
		
###
###
### END BINARY SUBDIVIDE
###
###


###
###
### COPY TRIANGLE
###
###
copyTriangle:
	mov FP, 0xafaf
	push ebx
	push eax
	
	mov ebx, [eax]
	mov [triangle], ebx
	incr eax
	mov ebx, [eax]
	mov [triangle+1], ebx
	incr eax
	mov ebx, [eax]
	mov [triangle+2], ebx
	incr eax
	mov ebx, [eax]
	mov [triangle+3], ebx
	incr eax
	mov ebx, [eax]
	mov [triangle+4], ebx
	incr eax
	mov ebx, [eax]
	mov [triangle+5], ebx
	incr eax
	mov ebx, [eax]
	mov [triangle+6], ebx
	
	pop eax
	pop ebx	
ret

copypoint:
	mov FP, 0xcbcb
	push ebx
	push eax
	
	mov ebx, [eax]
	mov [point], ebx
	incr eax
	mov ebx, [eax]
	mov [point+1], ebx
	incr eax
	mov ebx, [eax]
	mov [point+2], ebx
	
	pop eax
	pop ebx
ret

###
###
### Rasterize 2
###
###
rasterize2:
push zone1
push zone2
push zone3

mov zone1, 0xffff
mov zone2, 0xffff
mov zone3, 0xffff
mov LOW, 0xffff
mov HIGH, 0xffff

mov zone1, [triangle]
mov zone1, [triangle+1]
mov zone1, [triangle+2]
mov zone1, [triangle+3]
mov zone1, [triangle+4]
mov zone1, [triangle+5]
mov zone1, [triangle+6]

pop zone3
pop zone2
pop zone1

ret

###
###
### END Rasterize 2
###
###

###
###
### RASTERIZE
###
###
###
###
### RASTERIZE
###
###
###
###
### RASTERIZE
###
###
###
###
### RASTERIZE
###
###
###
###
### RASTERIZE
###
###


rasterize:
# Step one: Determine lowest point and percolate up the two edges connecting to it.
# Possible cases:
#   One lowest point (normal)
#   Two lowest point (horizontal bottom)
#   Three lowest triangle (horizontal line of pixels)

#For lookup table, must map ydif to 1/ydif. ydif has 120 possible values.


#Sort triangle by y value, smallest first, biggest last.

mov FP, 0xfefe
mov temp1, [triangle+2]
mov temp2, [triangle+4]
mov eax, [triangle+6]
jne temp1, temp2, notthesamey
jne temp2, eax, notthesamey
###triangle form horizontal line.  Special case.
	lsh temp1, 3
	mov temp2, [triangle]
	or temp1, temp2
	mov [VGA], temp1
	
	mov temp1, [triangle+1]
	mov temp2, [triangle+3]
	mov eax, [triangle+5]
	
	jl temp1, temp2, temp1smallerysame
		mov temp1, temp2
	temp1smallerysame:
	
	jl temp1, eax, temp1smallerysame2
		mov temp1, eax
	temp1smallerysame2:
	
	mov ebx, [triangle+1]
	mov temp2, [triangle+3]
	mov eax, [triangle+5]
	
	jg ebx, temp2, ebxbiggerysame1
		mov ebx, temp2
	ebxbiggerysame1:
	
	jg ebx, eax, ebxbiggerysame2
		mov ebx, eax
	ebxbiggerysame2:
	
	lsh temp1, 8
	or temp1, ebx
	mov [VGA], temp1
	ret
	
notthesamey:

cmp temp1, temp2
jg temp2, temp1, dontswap
mov [triangle+2], temp2 # Swap y-coords
mov [triangle+4], temp1
mov temp1, [triangle+1] # Load x-coords
mov temp2, [triangle+3]
mov [triangle+1], temp2 # Swap x-coords
mov [triangle+3], temp1
dontswap: #now ebx holds the smaller y-coord of first two triangle

mov temp1, [triangle+2]
mov temp2, [triangle+6]
cmp temp1, temp2
jg temp2, temp1, dontswap2
mov [triangle+2], temp2
mov [triangle+6], temp1
mov temp1, [triangle+1] # Load x-coords
mov temp2, [triangle+5]
mov [triangle+1], temp2 # Swap x-coords
mov [triangle+5], temp1
dontswap2: #now ebx holds the smallest y-coord

#must do (p2-p1)x(p3-p1)
#if > 0, good,
#if < 0, swap x2, x3
###(x2 - x1) * (y3 - y1) - (x3 - x1) * (y2 - y1)

mov temp1, [triangle+1] #x1
mov temp2, [triangle+2] #y1
mov eax, [triangle+3] #x2
mov ebx, [triangle+4] #y2
mov ecx, [triangle+5] #x3
mov edx, [triangle+6] #y3

sub eax, temp1
sub edx, temp2
sub ecx, temp1
sub ebx, temp2

mul eax, edx
mov eax, LOW

mul ecx, ebx
mov ebx, LOW

sub eax, ebx

#Cross product is done, result in eax.
jl eax, 0, dontswap3
mov temp1, [triangle+3] #x2
mov temp2, [triangle+5] #x3
mov [triangle+3], temp2
mov [triangle+5], temp1
mov temp1, [triangle+4] # Load x-coords
mov temp2, [triangle+6]
mov [triangle+4], temp2 # Swap x-coords
mov [triangle+6], temp1
dontswap3: #Now triangle are sorted so first is lowest y-value, second is lowest x-value of remaining two.

#Now xrefleft = xrefright = x1
#xdifleft = x2 - xref.
#xdifright = x3-xref.
#ydifleft = y2-y1
#ydifright = y3-y1
#This works until yvalleftue == y2 || yvalleftue == y3.
#x for given yvalleftue, x = xref + (yvalleftue)*(1/ydif)*xdif.

###
###Setup for percolate loop:
###

#left side
mov yvalleft, 0 #Initialize loop counter -- Move smallest y-value into line.
mov yvalright, 0
mov temp1, [triangle+1] #Move xref into temp1
mov ebx, [triangle+3] #Move x2 into ebx
sub ebx, temp1 #ebx = xdifleft.
mov ecx, [triangle+2] #y1
mov edx, [triangle+4] #y2
sub edx, ecx #ydifleft.
mov %10, slopes
add edx, %10
mov edx, [edx] #edx = 1/ydifleft

#right side
mov temp2, [triangle+1] #Move xref into temp2
mov eax, [triangle+5] #Move x3 into eax
sub eax, temp2 #eax = x3-x1 = xdifright.
mov eex, [triangle+2] #y1
mov ecx, [triangle+6] #y3
sub ecx, eex # ecx = y3-y1 = ydifright.
add ecx, %10
mov ecx, [ecx] #ecx = 1/ydifrigh

mov ymax, 0x00ff #This should probably be moved elsewhere.

#percolate loop:

LineLoop:
#First check if ymax is already set.  If so, flat top, skip this stuff.
jne ymax, 0xff, nochange
#Second check if yvalleft == y2 || yvalright == y3
mov eex, [triangle+4]
mov %10, [triangle+2]
add %10, yvalright
cmp eex, %10 #cmp with y2
jne y3cmp
	#y2 == yvalright + y1.
	mov temp1, [triangle+3] #temp1 = xrefleft = x2
	mov ebx, [triangle+5] #Move x3 into ebx
	sub ebx, temp1 #ebx = xdifleft = x3 - xref = x3 - x2.	
	mov edx, [triangle+6] #edx = y3
	mov eex, [triangle+4] #eex = y2
	sub edx, eex #edx = y3 - y2 = ydifleft
	mov %10, slopes
	add edx, %10
	mov edx, [edx] #edx = 1/ydifleft
	mov ymax, [triangle+6]
	
	#Check for flat buns
	mov %10, [triangle+4]
	cmp %10, ymax
	je flatbuns
	
	mov %10, [triangle+2]
	sub ymax, %10
	mov yvalleft, 0
y3cmp:
mov eex, [triangle+6]
mov %10, [triangle+2]
add %10, yvalleft
cmp eex, %10 #cmp with y3
jne nochange
	#y3 == yvalleft + y1.
	mov temp2, [triangle+5] #temp2 = xref = x3
	mov eax, [triangle+3] #Move x2 into eax
	sub eax, temp2 #eax = x2-x3 = xdifright.
	mov eex, [triangle+6] #y3
	mov ecx, [triangle+4] #y2
	sub ecx, eex # ecx = y2-y3 = ydifright.
	mov %10, slopes
	add ecx, %10
	mov ecx, [ecx] #ecx = 1/ydifright
	mov ymax, [triangle+4] #probably do the check here to see if ymax == [triangle+4] already, then this triangle has flat buns.
	mov %10, [triangle+2]
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
#mov eex, [triangle+2]
#cmp yvalleft, yvalright
#jl leftSmaller
#add eex, yvalleft
#j doneSmaller

#leftSmaller:
#add eex, yvalright

#doneSmaller:
#lsh eex, 3
#mov %10, [triangle]
#or eex, %10
#mov [VGA], eex

####left
mov eex, edx #use eex as temp register.  eex = 1/ydifleft
mul ebx, yvalleft # LOW = xdif * yvalleft (max is 159 * 119 which is within 2^16, even when signed.)
fmul eex, LOW # edx = (yvalleftue)*(1/ydif) * xdif
add eex, temp1 #temp1 = x for given yvalleftue, x = xref + (yvalleftue)*(1/ydif)*xdif = left index to give to painter.

####right
mov %10, ecx #use %10 as temp register.
mul eax, yvalright # LOW = xdif * yvalleft (max is 159 * 119 which is within 2^16, even when signed.)
fmul %10, LOW # edx = (yvalleft)*(1/ydif) * xdif
add %10, temp2 #temp1 = x for given yvalleftue, x = xref + (yvalleft)*(1/ydif)*xdif = right index to give to painter.



#second vga line-write.
lsh eex, 8
or eex, %10
#mov [VGA], eex

#Push eex onto the stack, going to create an array of all the line-write values.
push eex

incr yvalleft
incr yvalright
#cmp yvalright, ymax
#je endloop
#cmp yvalleft, ymax
#jne LineLoop
jg yvalright, ymax, endloop
jle yvalleft, ymax, LineLoop

endloop:

###
###Currently all line-write values are on the stack in reverse order.  Must now calculate mid-triangle between to draw triangles.
###

#Store end yvalue in ymax
mov ymax, [triangle+2]

#Store yvalue counter in eax.
mov eax, [triangle+4]
mov ebx, [triangle+6]
jge eax, ebx, haveyvalue
mov eax, ebx
haveyvalue:

###First y-value is special case cus no prev value, do it before hand
pop edx
pop eex

#want c - (c-d >> 1)
#right shift c and d to get left triangle, and with ff to get right triangle.
mov temp1, edx
mov temp2, eex

rsh temp1, 8
rsh temp2, 8

mov LOW, temp1

#have left triangle now.
sub temp1, temp2 # temp1 = c-d
arsh temp1, 1 #divide by 2
jge temp1, 0, positive1
incr temp1
positive1:

mov temp2, LOW
sub temp2, temp1 #temp2 = c - (c-d)/2 = midpoint left.

mov %10, edx
mov temp1, eex

and %10, 0xff #%10 = right point high.
and temp1, 0xff #%10 = right point low.

mov HIGH, %10

#have right triangle now.
sub %10, temp1 # %10 = c-d
arsh %10, 1 #divide by 2
jge %10, 0, positive2
incr %10
positive2:

mov temp1, HIGH
sub temp1, %10 #temp1 = c - (c-d)/2 = midpoint right.

#Compare all midtriangle/endtriangle, write the min as left, the max as right.
jl HIGH, temp1, temp1bigger
mov temp1, HIGH
temp1bigger:

jg LOW, temp2, temp2smaller
mov temp2, LOW
temp2smaller:
lsh temp2, 8

mov ebx, eax #Copy eax as temp into ebx.
lsh ebx, 3
mov %10, [triangle]
or ebx, %10
mov [VGA], ebx

or temp1, temp2
mov [VGA], temp1

decr eax

###
### NEW DRAW METHOD WITH MIDtriangle
###
#ecx holds prev L/R value.  eax holds current y-value. edx holds current L/R value.  eex holds next L/R y-value.   
FillLoop:
mov ebx, eax #Copy eax as temp into ebx.
lsh ebx, 3
mov %10, [triangle]
or ebx, %10
mov [VGA], ebx

mov ecx, edx
mov edx, eex
pop eex

#want c - (c-d >> 1)
#right shift c and d to get left triangle, and with ff to get right triangle.
mov temp1, edx
mov temp2, eex

rsh temp1, 8
rsh temp2, 8

mov LOW, temp1

#have left triangle now.
sub temp1, temp2 # temp1 = c-d
arsh temp1, 1 #divide by 2
jge temp1, 0, positive3
incr temp1
positive3:

mov temp2, LOW
sub temp2, temp1 #temp2 = c - (c-d)/2 = high midpoint left.

mov %10, edx
mov temp1, eex

and %10, 0xff #%10 = right point high.
and temp1, 0xff #%10 = right point low.

mov HIGH, %10

#have right triangle now.
sub %10, temp1 # %10 = c-d
arsh %10, 1 #divide by 2
jge %10, 0, positive4
incr %10
positive4:

mov temp1, HIGH
sub temp1, %10 #temp1 = c - (c-d)/2 = high midpoint right.

#Compare all midtriangle/endtriangle, write the min as left, the max as right.
jl HIGH, temp1, temp1bigger2
mov temp1, HIGH
temp1bigger2:

jg LOW, temp2, temp2smaller2
mov temp2, LOW
temp2smaller2:

#Need low midpoint left, low midpoint right.  Available regs: ebx, %10, yvalleft, yvalright, LOW, HIGH

mov yvalleft, ecx
mov yvalright, edx

rsh yvalleft, 8
rsh yvalright, 8

#have left triangle now.
sub yvalleft, yvalright # yvalleft = c-d
arsh yvalleft, 1 #divide by 2
jge yvalleft, 0, positive5
incr yvalleft
positive5:

mov yvalright, LOW
add yvalright, yvalleft #yvalright = c + (c-d)/2 = low midpoint left.  Add because LOW is the upper of the two this time, not the lower

mov %10, ecx
mov yvalleft, edx

and %10, 0xff #%10 = right point high.
and yvalleft, 0xff #%10 = right point low.

#have right triangle now.
sub %10, yvalleft # %10 = c-d
arsh %10, 1 #divide by 2
jge %10, 0, positive6
incr %10
positive6:

mov yvalleft, HIGH
add yvalleft, %10 #yvalleft = c + (c-d)/2 = low midpoint right.  Add because high is the upper of the two this time, not the lower.

#Compare all midtriangle/endtriangle, write the min as left, the max as right.
jl yvalleft, temp1, temp1bigger3
mov temp1, yvalleft
temp1bigger3:

jg yvalright, temp2, temp2smaller3
mov temp2, yvalright
temp2smaller3:

##
## temp1 temp2 now contain the correct left/right indices.
##

lsh temp2, 8
or temp1, temp2
mov [VGA], temp1

#pop ebx
#mov [VGA], ebx

decr eax
jle eax, ymax, endFillLoop

j FillLoop

endFillLoop:

#want c - (c-d >> 1)
#right shift c and d to get left triangle, and with ff to get right triangle.
mov temp1, eex
mov temp2, edx

rsh temp1, 8
rsh temp2, 8

mov LOW, temp1

#have left triangle now.
sub temp1, temp2 # temp1 = c-d
arsh temp1, 1 #divide by 2
jge temp1, 0, positive7
incr temp1
positive7:

mov temp2, LOW
sub temp2, temp1 #temp2 = c - (c-d)/2 = midpoint left.

mov %10, eex
mov temp1, edx

and %10, 0xff #%10 = right point high.
and temp1, 0xff #%10 = right point low.

mov HIGH, %10

#have right triangle now.
sub %10, temp1 # %10 = c-d
arsh %10, 1 #divide by 2
jge %10, 0, positive8
incr %10
positive8:

mov temp1, HIGH
sub temp1, %10 #temp1 = c - (c-d)/2 = midpoint right.

#Compare all midtriangle/endtriangle, write the min as left, the max as right.
jl HIGH, temp1, temp1bigger4
mov temp1, HIGH
temp1bigger4:

jg LOW, temp2, temp2smaller4
mov temp2, LOW
temp2smaller4:
lsh temp2, 8

mov ebx, eax #Copy eax as temp into ebx.
lsh ebx, 3
mov %10, [triangle]
or ebx, %10
mov [VGA], ebx

or temp1, temp2
mov [VGA], temp1

ret

flatbuns:
mov eex, [triangle+3]
lsh eex, 8
mov %10, [triangle+5]
or eex, %10
push eex

j endloop


###
###
### END RASTERIZE
###
###
###
###
### END RASTERIZE
###
###
###
###
### END RASTERIZE
###
###
###
###
### END RASTERIZE
###
###
###
###
### END RASTERIZE
###
###

.data

zone:
0

point:
0
0
0

triangle:
0
0
0
0
0
0
0
0
0


state:
0

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