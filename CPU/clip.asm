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
`define %SP %13
`define %FP %14
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
`define BULLET_RADIUS 1
`define TANK_RADIUS 10
`define AI_SPEED 10
`define AI_ROTATION_SPEED 10
`define PLAYER_START_LIVES 5
`define BULLET_SPEED 20
`define BULLET_LIFE 100
`define FIND_THETA_ACCURACY 5
`define DEGREE_90 0      # 90 Degrees in our encoding
`define STACK_TOP 0x2bff # stack starts at 11264 (this is the top of memory, be careful)

# Bootup and initialization Code
init:
	mov %SP, STACK_TOP
	mov %FP, %SP
# Begin der loop
	call main
	
main:

	call clip

	infinite:
	j infinite

clip:
	mov FP, SP
	push eax
	push zone1
	push zone2
	push zone3
	add SP, 10

	#Given a triangle pointed at by eax, first do comparisons to establish the zone values of each point.
		call copyTriangle
		
		mov zone1, 0
		mov zone2, 0
		mov zone3, 0
	
	###Check zone 0, 2
		#t1
		mov eax, [triangle1+1] #y1
		jge eax, 0, p1notinzone0
			or zone1, 1
		p1notinzone0:
		
		jle eax, 119, p1notinzone2
			or zone1, 0b100
		p1notinzone2:	
	
		#t2
		mov eax, [triangle1+3] #y2
		jge eax, 0, p2notinzone0
			or zone2, 1
		p2notinzone0:
		
		jle eax, 119, p2notinzone2
			or zone2, 0b100
		p2notinzone2:
		
		#t3
		mov eax, [triangle1+5] #y3
		jge eax, 0, p3notinzone0
			or zone3, 1
		p3notinzone0:
		
		jle eax, 119, p3notinzone2
			or zone3, 0b100
		p3notinzone2:
	
	###Check zone 1,3
		#t1
		mov eax, [triangle1] #x1
		jle eax, 159, p1notinzone1
			or zone1, 0b10
		p1notinzone1:
		
		jge eax, 0, p1notinzone3
			or zone1, 0b1000
		p1notinzone3:
		
		#t2
		mov eax, [triangle1+2] #x2
		jle eax, 159, p2notinzone1
			or zone2, 0b10
		p2notinzone1:
		
		jge eax, 0, p2notinzone3
			or zone2, 0b1000
		p2notinzone3:
		
		#t3
		mov eax, [triangle1+4] #x3
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
		
		#Six possibilities on which points are in zone 0.
		jne zone1, 1, zone1notin0
			#point 1 is in 0			
			jne zone2, 1, zone1in0zone2out
				#points 1 and 2 are in 0, zone 3 is the pivot point.
				mov eax, [triangle1+4]
				mov ebx, [triangle1+5]
				mov ecx, [triangle1]
				mov edx, [triangle1+1]
				mov eex, 0
				call binarySubdivide
				mov zone1, eax # Zone1 contains the x-value of p1-p3 edge on y=0.
				
				mov eax, [triangle1+4]
				mov ebx, [triangle1+5]
				mov ecx, [triangle1+2]
				mov edx, [triangle1+3]
				mov eex, 0
				call binarySubdivide #eax contains the x-value of p2-p3 edge on y=0.
				
				
				
			zone1in0zone2out:
			jne zone3, 1, zone1in0zone3out
				#zones 1 and 3 are in 0, zone 2 is the pivot point.
				
			zone1in0zone3out:
			#Only zone 1 is in 0, zone 1 is the pivot point.
			
		zone1notin0:
	
	
	checkzone1:
	mov ebx, eax
	and ebx, 0b10
	
	jne ebx, 0b10, checkzone2
	
	checkzone2:
	mov ebx, eax
	and ebx, 0b100
	
	jne ebx, 0b100, checkzone3
	
	checkzone3:
	#We know that it is in zone 3 because it wasnt' in the other zones.
	
	
	### First find pivot point once zone is established.
	
	
















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
	mov [triangle1], ebx
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

	pop eax
	pop ebx	
ret




triangle1:
0
0
0
0
0
0

triangle2:
0
0
0
0
0
0

triangle3:
0
0
0
0
0
0