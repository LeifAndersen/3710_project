
#	Translate model (add entity location to all points in model).
# take a model in %6
translate_model:
	push %0
	push %1
	push %2
	push %4

	# translate tank
	sub %SP, 3				# make temp point
	mov %0, %SP
	mov %1, [AI_X]			# copy in AI tank translation (position)
	mov %2, [PLAYER_X]		# offest by camera pos
	sub %1, %2
	mov [%0], %1
	incr %0
	mov %1, 0
	mov [%0], %1
	incr %0
	mov %1, [AI_Y]			# y = z, mind = blown
	mov %2, [PLAYER_Y]		# offest by camera pos
	sub %1, %2
	mov [%0], %1
	sub %0, 2				# restore pointer
	mov %4, [%6]			# get the size of the tank in triangles
	mov %1, %6				# pointer to modifiable tank
	incr %1					# skip size field in tank
	translatetankloop:		# loop that translates tank points
	incr %1					# skip color
	call vector_add
	add %1, 3				# move to next point
	call vector_add
	add %1, 3				# move to next point
	call vector_add
	add %1, 3				# move to next triangle
	decr %4					# done rotating one triangle
	# check if loop again
	jne %4, 0, translatetankloop
	# done with tank, remove temp storage on stack
	add %SP, 3

	pop %4
	pop %2
	pop %1
	pop %0
	ret