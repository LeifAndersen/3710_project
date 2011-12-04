### Z CLIPPING
###
### Expects a 3-d triangle to be in the triangle array. Expects a pointer to a triangle in eax.  Triangle is expected to be [eax] = color, [eax+1] = x1, [eax+2] = y1, [eax+3] = z1, [eax+4] = x2, [eax+5] = y2, [eax+66] = z2, [eax+7] = x3, [eax+8] = y3, [eax+9] = z3
###
###
zclip:
		mov efx, eax
	
		mov zone1, 0
		mov zone2, 0
		mov zone3, 0
		
		add eax, 3 #point eax at z1
		mov ebx, [eax]
		jge ebx, 0, point1zpositive
			mov zone1, 1
		point1zpositive:
		
		add eax, 3 #point eax at z2
		mov ebx, [eax]
		jge ebx, 0, point2zpositive
			mov zone2, 1
		point2zpositive:
		
		add eax, 3 #point eax at z3
		mov ebx, [eax]
		jge ebx, 0, point3zpositive
			mov zone3, 1
		point3zpositive:
		
		
		###
		### Z BASE CASE
		###
		mov eax, zone1
		and eax, zone2
		and eax, zone3
		
		je eax, 0, zbasecase1fail
			ret
		zbasecase1fail:
		
		mov eax, zone1
		or eax, zone2
		or eax, zone3
		
		jne eax, 0, zbasecase2fail
			call rasterize
			ret
		zbasecase2fail:
		
		###
		### Z REDUCTION STEP
		###
		
		### At least one point is in znegative. Could be two points.
		### No longer need to save this zone information, so we can modify zone1, zone2, zone3
		
		mov eex, 0 #Prepare eex for split, eex is a param for it.
		
		#Six possibilities on which points are in z negative.
		jne zone1, 1, zpoint1notin0
			#point 1 is in 0
			jne zone2, 1, zpoint1in0point2out
				# points 1 and 2 are in 0, point 3 is the pivot point.  Already presorted.
				j split
			zpoint1in0point2out:
			jne zone3, 1, zpoint1in0point3out
				# points 1 and 3 are in 0, point 2 is the pivot point.
				# Must sort so point 3 is the pivot. Swap points 2 and 3
				mov eax, [triangle+4]
				mov ebx, [triangle+7]
				mov [triangle+4], ebx
				mov [triangle+7], eax
				mov eax, [triangle+5]
				mov ebx, [triangle+8]
				mov [triangle+5], ebx
				mov [triangle+8], eax
				mov eax, [triangle+6]
				mov ebx, [triangle+9]
				mov [triangle+6], ebx
				mov [triangle+9], eax
				
				j split				
			zpoint1in0point3out:
			#Only point 1 is in 0, point 1 is the pivot point. Must swap point 1 and 3.
				mov eax, [triangle+1]
				mov ebx, [triangle+7]
				mov [triangle+1], ebx
				mov [triangle+7], eax
				mov eax, [triangle+2]
				mov ebx, [triangle+8]
				mov [triangle+2], ebx
				mov [triangle+8], eax
				mov eax, [triangle+3]
				mov ebx, [triangle+9]
				mov [triangle+3], ebx
				mov [triangle+9], eax
				
				j split			
			zpoint1notin0:
			jne zone2, 1, zpoint2notin0
				#point 2 is in 0
				jne zone3, 1, zpoint2in0point3out
					#points 2 and 3 are in 0. 1 is pivot.  Swap 1 and 3.
					mov eax, [triangle+1]
					mov ebx, [triangle+7]
					mov [triangle+1], ebx
					mov [triangle+7], eax
					mov eax, [triangle+2]
					mov ebx, [triangle+8]
					mov [triangle+2], ebx
					mov [triangle+8], eax
					mov eax, [triangle+3]
					mov ebx, [triangle+9]
					mov [triangle+3], ebx
					mov [triangle+9], eax
					
					j split
			zpoint2in0point3out:
				#point 2 is the pivot.  Swap 2 and 3.
				mov eax, [triangle+4]
				mov ebx, [triangle+7]
				mov [triangle+4], ebx
				mov [triangle+7], eax
				mov eax, [triangle+5]
				mov ebx, [triangle+8]
				mov [triangle+5], ebx
				mov [triangle+8], eax
				mov eax, [triangle+6]
				mov ebx, [triangle+9]
				mov [triangle+6], ebx
				mov [triangle+9], eax
				
				j zsplit
			zpoint2notin0:
				#point 3 is the pivot. Already sorted.
					j zsplit
					
					###
	### Z SPLIT
	###
	zsplit:
		#points 1 and 2 are in 0, point 3 is the pivot point.
				mov eax, [triangle+1]
				mov ebx, [triangle+3]
				mov ecx, [triangle+7]
				mov edx, [triangle+9]
				call binarySubdivide
				mov zone1, eax # Zone1 contains the x-value of p1-p3 edge on z=0.
				
				mov eax, [triangle+2]
				mov ebx, [triangle+3]
				mov ecx, [triangle+8]
				mov edx, [triangle+9]
				call binarySubdivide 
				mov zone2, eax # Zone2 contains the y-value of p1-p3 edge on z=0.
								
				mov eax, [triangle+4]
				mov ebx, [triangle+6]
				mov ecx, [triangle+7]
				mov edx, [triangle+9]
				call binarySubdivide
				mov zone3, eax # Zone3 contains the x-value of p2-p3 edge on z=0.
								
				mov eax, [triangle+5]
				mov ebx, [triangle+6]
				mov ecx, [triangle+8]
				mov edx, [triangle+9]
				call binarySubdivide #eax contains the y-value of p2-p3 edge on z=0.
				
			###Now form the three new triangles and push them onto the stack, recursive call to clip.
			###T1
				mov ebx, [triangle+3]
				push ebx
				mov ebx, [triangle+2]
				push ebx
				mov ebx, [triangle+1]				
				push ebx
				
				push 0
				push zone2
				push zone1
				
				push 0
				push eax
				push zone3
				push [efx]
				
			###T2
				mov ebx, [triangle+3]
				push ebx
				mov ebx, [triangle+2]
				push ebx
				mov ebx, [triangle+1]
				push ebx
				
				mov ebx, [triangle+6]
				push ebx
				mov ebx, [triangle+5]
				push ebx
				mov ebx, [triangle+4]
				push ebx
				
				push 0
				push eax
				push zone3
				push [efx]
				
			###T3
				mov ebx, [triangle+9]
				push ebx
				mov ebx, [triangle+8]
				push ebx
				mov ebx, [triangle+7]
				push ebx
				
				push 0
				push zone2
				push zone1
				
				push 0
				push eax
				push zone3
				push [efx]
			
			###
			### DONE PUSHING TRIANGLES
				
				mov eax, SP
				decr eax
				call perspectivetransform
				
				sub SP, 10
				mov eax, SP
				decr eax
				call perspectivetransform
				
				sub SP, 10
				mov eax, SP
				decr eax
				call perspectivetransform
				
				sub SP, 10
				
				ret			

###
###
### END Z CLIP
###
###