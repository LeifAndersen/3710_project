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

# Bootup and initialization Code
init:
	mov SP, STACK_TOP
	mov FP, SP
	
	call main
	
main:
	mov eax, 30
	push eax
	
	mov eax, 120
	push eax
	
	mov eax, 31
	push eax
	
	mov eax, 40
	push eax
	
	mov eax, 0xffe0
	push eax
	
	mov eax, 80
	push eax
	
	mov eax, 1
	push eax
	
	mov eax, SP
	incr eax

	call copyTriangle

	call clip

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
		### At least one point is in zone 0. Could be two points.
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
				mov eax, [triangle+5]
				mov ebx, [triangle+6]
				mov ecx, [triangle+1]
				mov edx, [triangle+2]
				mov eex, 0
				call binarySubdivide
				mov zone1, eax # Zone1 contains the x-value of p1-p3 edge on y=0.
				
				mov eax, [triangle+5]
				mov ebx, [triangle+6]
				mov ecx, [triangle+3]
				mov edx, [triangle+4]
				mov eex, 0
				call binarySubdivide #eax contains the x-value of p2-p3 edge on y=0.
				
				#Now form the three new triangles and push them onto the stack, recursive call to clip.
				mov ebx, [triangle+2]
				push ebx
				mov ebx, [triangle+1]
				push ebx
				push 0
				push zone1
				push 0
				push eax
				
				mov ebx, [triangle+2]
				push ebx
				mov ebx, [triangle+1]
				push ebx
				mov ebx, [triangle+4]
				push ebx
				mov ebx, [triangle+3]
				push ebx
				push 0
				push eax
				
				mov ebx, [triangle+6]
				push ebx
				mov ebx, [triangle+5]
				push ebx
				push 0
				push zone1
				push 0
				push eax
				
				mov eax, SP
				decr eax
				call clip
				
				sub SP, 6
				mov eax, SP
				decr eax
				call clip
				
				sub SP, 6
				mov eax, SP
				decr eax
				call clip
				
				sub SP, 6
				
				ret			
###
###
### END CLIP
###
###


### Z CLIPPING
###
### Expects a 3-d triangle to be in the triangle array.
###
###

###
###
###
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
### This method takes in 4 points and a coordinate, and returns the x point of intersection.
### eax = x1, ebx = y1, ecx = x2, edx = y2, eex = y-value of intersection.  return = x-value of intersection. Return is put into eax.
### Note - x and y can be switched to flip axes

binarySubdivide:
	#Find x and y differences, divide them by 2, add to lower point, check closeness.

	binarysubdivideloop:
		# If y1 == eex, done
			jne ebx, eex, binarySubdividenotdone
				ret
			binarySubdividenotdone:
			
			mov efx, ebx #efx = y1
			sub efx, edx #efx = y1 - y2
			arsh efx, 1 #efx = (y1-y2)/2
			
			mov egx, eax #eax = x1
			sub egx, ecx #egx = x1-x2
			arsh egx, 1 #egx = (x1-x2)/2
			
		# If y1 < eex
			jge ebx, eex, y1belowlimit
				sub ebx, efx #ebx = y1 - (y1-y2)/2 = new y1.
				sub eax, egx #eax = x1 - (x1-x2)/2 = new x1.
			j binarysubdivideloop
			y1belowlimit:
		# If y1 > eex
				add ebx, efx #ebx = y1 + (y1-y2)/2 = new y1.
				add eax, egx #eax = x1 + (x1-x2)/2 = new x1.
		
j binarysubdivideloop

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

rasterize:

ret

.data

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