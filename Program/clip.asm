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
`define PERSPECTIVE -100
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
	mov eax, 600
	push eax	
	mov eax, 60
	push eax
	mov eax, 553
	push eax
	
	mov eax, 600
	push eax	
	mov eax, 0
	push eax	
	mov eax, 0
	push eax
	
	mov eax, 600
	push eax	
	mov eax, 60
	push eax	
	mov eax, -10
	push eax
	
	mov eax, 1
	push eax
	
	mov eax, SP
	call perspectivetransform

	infinite:
	j infinite


### CLIP
###
### Expects a pointer to a triangle in eax.  Triangle is expected to be [eax] = color, [eax+1] = x1, [eax+2] = y1, [eax+3] = x2, [eax+4] = y2, [eax+5] = x3, [eax+6] = y3
###
### NO RETURN VALUE - This function merely clips a triangle that's already been perspective transformed, rasterizes any on-screen parts, then discards the triangle.
###
clip:
	mov FP, 0xfbff
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
				mov FP, 0xfbbf
			ret
		basecase1fail:
		
		mov eax, zone1
		or eax, zone2
		or eax, zone3
		
		jne eax, 0, basecase2fail
			mov FP, 0xfbbb
			call rasterize
			mov FP, 0xbbbb
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
		### At least one point is in zone 0. Could be two points.
	
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
		### At least one point is in zone 1. Could be two points.
		
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
		### At least one point is in zone 2. Could be two points.
		
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
		### At least one point is in zone 3. Could be two points.
		
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
	#Six possibilities on which points are in zone 0.
		jne zone1, 1, point1notin0
			#point 1 is in 0
			jne zone2, 1, point1in0point2out
				# points 1 and 2 are in 0, point 3 is the pivot point.  Already presorted.
				j split
			point1in0point2out:
			jne zone3, 1, point1in0point3out
				# points 1 and 3 are in 0, point 2 is the pivot point.
				# Must sort so point 3 is the pivot. Swap points 2 and 3
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
					#points 2 and 3 are in 0. 1 is pivot.  Swap 1 and 3.
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
		#points 1 and 2 are in 0, point 3 is the pivot point.
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
				
				mov eax, SP
				call clip
				
				add SP, 7
				mov eax, SP
				call clip
				
				add SP, 7
				mov eax, SP
				call clip
				
				add SP, 7
				
				mov FP, 0xfbfb
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
	mov FP, 0xfafa

	###Point 1
		mov ebx, [eax]
		mov [triangle], ebx
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
		
		add eax, 80
		mov [triangle+1], eax
		
		#Superposition.  First, do x1 and z1, then do y1 and z1.
		mov eax, [point+1]
		mov ebx, [point+2]
		mov ecx, 0
		mov edx, PERSPECTIVE
		mov eex, 0
		
		call binarySubdivide
		
		add eax, 60
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
		
		add eax, 80
		mov [triangle+3], eax
		
		#Superposition.  First, do x1 and z1, then do y1 and z1.
		mov eax, [point+1]
		mov ebx, [point+2]
		mov ecx, 0
		mov edx, PERSPECTIVE
		mov eex, 0
		
		call binarySubdivide
		
		add eax, 60
		mov [triangle+4], eax
		
	###Point 3
	
		pop eax
		call copypoint
		add eax, 3
		
		#Superposition.  First, do x1 and z1, then do y1 and z1.
		mov eax, [point]
		mov ebx, [point+2]
		mov ecx, 0
		mov edx, PERSPECTIVE
		mov eex, 0
		
		call binarySubdivide
		
		add eax, 80
		mov [triangle+5], eax
		
		#Superposition.  First, do x1 and z1, then do y1 and z1.
		mov eax, [point+1]
		mov ebx, [point+2]
		mov ecx, 0
		mov edx, PERSPECTIVE
		mov eex, 0
		
		call binarySubdivide
		
		add eax, 60
		mov [triangle+6], eax
	
	mov eax, triangle
	
	mov FP, 0xbcde
	call clip
	mov FP, 0xedcb
	
	###Need to decide on a way to use the outgoing information.  Probably just pump it straight through to clip/rasterize.
	###Need to know incoming data format.


ret
###
###
### END PERSPECTIVE TRANSFORM
###
###


### BINARY SUBDIVIDE
### This method takes in 4 points and a coordinate, and returns the x point of intersection.
### eax = x1, ebx = y1, ecx = x2, edx = y2, eex = y-value of intersection.  return = x-value of intersection. Return is put into eax.
### Note - x and y can be switched to flip axes

binarySubdivide:		
	mov FP, 0xbebe	
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
			mov FP, 0xacac
			ret
		precheckedx:
		
	binarysubdivideloop1:
		#First divide guess value by two.
		je egx, 1, dontround1
			incr egx #round up
		dontround1:
		incr efx #round up
		arsh egx, 1 #egx = (x1-x2)/2
		arsh efx, 1 #efx = (y1-y2)/2
		# If yguess == eex, done
		# efx holds yguess
			jne ebx, eex, binarySubdividenotdone1
				mov FP, 0xacac
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
		je egx, 1, dontround2
			incr egx #round up
		dontround2:
		incr efx #round up
		arsh egx, 1 #egx = (x1-x2)/2
		arsh efx, 1 #efx = (y1-y2)/2
		# If yguess == eex, done
		# efx holds yguess
			jne ebx, eex, binarySubdividenotdone2
				mov FP, 0xacac
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
### Rasterize
###
###
rasterize:
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
### END Rasterize
###
###

.data

zone:
0

point:
0
0
0


points:
0xffff
0xffff
0xffff
0xffff
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
00
0
0
0
0
0
0
0
0
0
0
0
0
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