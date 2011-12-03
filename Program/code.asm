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
`define yvalright %5
`define ymax %6
`define temp1 %7
`define temp2 %8
`define yvalleft %9
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

# Main Loop
main:

	# Store the registers on the stack
	push $0
	push $1
	push $2
	push $3
	push $4
	push $5
	push $6
	push $7
	push $8
	push $9
	push $10

mainNewPlayer:
	mov %0, 0
	mov [PLAYER_BULLET_TIME], %0
	mov [AI_BULLET_TIME], %0
	mov [PLAYER_SCORE], %0
	mov [AI_TURNING], %0
	mov %0, [PLAYER_START_X]
	mov [PLAYER_X], %0
	mov %0, [PLAYER_START_Y]
	mov [PLAYER_Y], %0
	mov %0, [PLAYER_START_THETA]
	mov [PLAYER_THETA], %0
	mov %0, [AI_START_X]
	mov [AI_X], %0
	mov %0, [AI_START_Y]
	mov [AI_Y], %0
	mov %0, [AI_START_THETA]
	mov [AI_THETA], %0
	mov %0, PLAYER_START_LIVES
	mov [PLAYER_LIVES], %0

mainLoop:
	# Check Inputs
	# Left/Right, update theta
	mov %2, [LEFT_KEY]
	mov %3, [RIGHT_KEY]
	mov %4, [PLAYER_THETA]
	sub %2, %3
	add %4, %2              # %4 has the theta change

	# Up/Down, update x/y
	mov %2, [PLAYER_X]
	mov %3, [PLAYER_Y]
	mov %5, [UP_KEY]
	mov %6, [DOWN_KEY]
	sub %5, %6             # Up-Down now in %6
	mov %0, %4             #
	call sin               # %1 has sin(theta)
	mov %HIGH, %0          # %HIGH has sin(theta)
	mul %HIGH, %5          #
	add %2, %LOW           # Player X now updated by the move amount
	                       #
	mov %0, %4             #
	call cos               # %1 has cos(theta)
	mov %HIGH, %0          #
	mul %HIGH, %5          # %LOW/HIGH has (UP-DOWN)*cos(theta)
	add %4, %LOW
	mov [PLAYER_THETA], %4 # Save the theta

	# Move the AI

	mov %0, [AI_TURNING]
	je %0, 1, mainAITurningRight
	je %0, -1, mainAITurningRight
	mov %4, [AI_X]
	mov %5, [AI_Y]
	mov %6, [AI_THETA]
	mov %0, %6
	call cos
	mov %HIGH, %0
	mul %HIGH, AI_SPEED    # %LOW now has speed*sin(theta), to update Y
	add %4, %LOW           # %4 now has new Y (if possible)
	mov %0, %6
	call sin
	mov %HIGH, %0
	mul %HIGH, AI_SPEED
	add %5, %LOW           # %5 now has possible AI_Y
	j mainAIDoneMoving

mainAITurningRight:
	mov [AI_TARGET_THETA], %0
	mov [AI_THETA], %1
	je %0, %1, mainAIDoneTurning
	sub %1, AI_ROTATION_SPEED
	mov [AI_THETA], %1
	j mainAIDoneMoving

mainAITurningLeft:
	mov [AI_TARGET_THETA], %0
	mov [AI_THETA], %1
	je %0, %1, mainAIDoneTurning
	add %1, AI_ROTATION_SPEED
	mov [AI_THETA], %1
	j mainAIDoneMoving

mainAIDoneTurning:
	mov %0, 0
	mov [AI_TURNING], %0
	mov %0, [AI_THETA]
	mov [AI_BULLET_THETA], %0
	mov %0, BULLET_LIFE
	mov [AI_BULLET_TIME], %0
	mov %0, [AI_X]
	mov [AI_BULLET_X], %0
	mov %0, [AI_Y]
	mov [AI_BULLET_Y], %0

mainAIDoneMoving:

	# Move Player bullet
	mov %6, [PLAYER_BULLET_TIME]
	je %6, 0, mainPlayerBulletFire # If unused, let player fire
	sub %6, 1
	mov [PLAYER_BULLET_TIME], %6

	mov %6, [PLAYER_BULLET_X]
	mov %7, [PLAYER_BULLET_Y]
	mov %0, [PLAYER_BULLET_THETA]
	call cos
	mul %0, BULLET_SPEED
	add %6, %LOW           # 6 now conains bullet x
	mov %0, [PLAYER_BULLET_THETA]
	call sin
	mul %0, BULLET_SPEED
	add %7, %LOW           # 7 now contains bullet y

	# Check bullet AI Collision
	mov %0, %4
	sub %0, %6
	mul %0, %0
	mov %0, %LOW
	mov %1, %5
	sub %1, %7
	mul %1, %1
	add %0, %LOW # 0 now contains (x0-x1)^2+(y0-y1)^2
	mov %1, BULLET_RADIUS
	add %1, TANK_RADIUS
	jg %0, %1, mainEndPlayerBullet # Not a hit

	# Bullet colided with AI
	mov %0, [PLAYER_SCORE]
	add %0, 1
	mov [PLAYER_SCORE], %0
# Reset AI position mov %0, [AI_START_X] mov [AI_X], %0 mov %0, [AI_START_Y] mov [AI_Y], %0
	mov %0, 0
	mov [AI_TURNING], %0

	j mainEndPlayerBullet

mainPlayerBulletFire:
	mov %8, [A_KEY]
	je %8, 0, mainEndPlayerBullet # Didn't fire
	mov [PLAYER_BULLET_X], %2
	mov [PLAYER_BULLET_Y], %3
	mov %1, [PLAYER_THETA]
	mov [PLAYER_BULLET_THETA], %1
	mov %0, BULLET_LIFE
	mov [PLAYER_BULLET_TIME], %0

mainEndPlayerBullet:

	# Move AI bullet
	mov %8, [AI_BULLET_TIME]
	je %8, 0, mainAIBulletFire # If unused, AI Fires turnes and fires bullet
	sub %8, 1
	mov [AI_BULLET_TIME], %8

	mov %8, [AI_BULLET_X]
	mov %9, [AI_BULLET_Y]
	mov %0, [AI_BULLET_THETA]
	call cos
	mul %0, BULLET_SPEED
	add %8, %LOW           # 8 now conains bullet x
	mov %0, [AI_BULLET_THETA]
	call sin
	mul %0, BULLET_SPEED
	add %9, %LOW           # 9 now contains bullet y

	# Check bullet AI Collision
	mov %0, %2
	sub %0, %8
	mul %0, %0
	mov %0, %LOW
	mov %1, %3
	sub %1, %9
	mul %1, %1
	add %0, %LOW # 0 now contains (x0-x1)^2+(y0-y1)^2
	mov %1, BULLET_RADIUS
	add %1, TANK_RADIUS
	jg %0, %1, mainEndPlayerBullet # Not a hit

	# Bullet hit player
	mov %0, [PLAYER_LIVES]
	je %0, 0, mainNewPlayer # Player died, restart game
	sub %0, 1
	mov [PLAYER_LIVES], %0
	mov %0, 0
	mov [AI_BULLET_TIME], %0

	j mainEndAIBullet

mainAIBulletFire:
	mov %0, %5
	sub %0, %3
	mov %1, %4
	sub %1, %2
	call FindTheta
	mov [AI_TARGET_THETA], %0
	mov %1, [AI_THETA]
	je %1, %0, mainAIFire
	mov %1, 1
	mov [AI_TURNING], %1
	j mainEndAIBullet

mainAIFire:
	mov %0, [AI_THETA]
	mov [AI_BULLET_THETA], %0
	mov %0, BULLET_LIFE
	mov [AI_BULLET_TIME], %0
	mov %0, [AI_X]
	mov [AI_BULLET_X], %0
	mov %0, [AI_Y]
	mov [AI_BULLET_Y], %0

mainEndAIBullet:

	# Bullet Player collision

	# Store Final Values
	mov [PLAYER_X], %3
	mov [PLAYER_Y], %4
	mov [AI_X], %6
	mov [AI_Y], %7

	# Reset keyboard counters
	mov %0, 1
	mov [UP_KEY], %0

	# -------------------------------
	# For each triangle, do this, although unless it's an enemy tank, you can skip the AI step.

	#Put model in world coordinates:
	#	Create copy of model on stack from data.
	mov %7, 0				# keep running total of stack frame size. DO NOT MODIFY %7

	mov %0, [tank_model]	# tank size
	mov %3, tank_model		# tank location
	mul %0, 10				# get full size
	mov %0, %LOW
	add %0, 1
	sub %SP, %0				# make room on stack
	add %7, %0
	mov %1, %SP				# dst pointer: space on stack
	mov %2, %0				# size in words
	mov %0, %3				# src pointer
	call memcpy
	# save local tank pointer
	mov %10, %1				# don't touch %10....

	# now if there are bullets in flight, copy them
	# check AI bullet
	mov %0, [AI_BULLET_TIME]
	cmp %0, 0
	mov %9, 0				# make zero so we know if there is a bullet there
	je skipaibullet
	mov %0, [bullet_model]	# bullet size
	mov %3, bullet_model	# bullet location
	mul %0, 10				# get full size
	mov %0, %LOW
	add %0, 1
	sub %SP, %0				# make room on stack
	add %7, %0
	mov %1, %SP				# dst pointer: space on stack
	mov %2, %0				# size in words
	mov %0, %3				# src pointer
	call memcpy
	# save local tank pointer
	mov %9, %1				# don't touch %9....
	skipaibullet:

	# check Player bullet
	mov %0, [PLAYER_BULLET_TIME]
	cmp %0, 0
	mov %8, 0				# make zero so we know if there is a bullet there
	je skiplayerbullet
	mov %0, [bullet_model]	# bullet size
	mov %3, bullet_model	# bullet location
	mul %0, 10				# get full size
	mov %0, %LOW
	add %0, 1
	sub %SP, %0				# make room on stack
	add %7, %0
	mov %1, %SP				# dst pointer: space on stack
	mov %2, %0				# size in words
	mov %0, %3				# src pointer
	call memcpy
	# save local tank pointer
	mov %8, %1				# don't touch %8....
	skiplayerbullet:

#	Scale models (multiply all points by scale vector).
	# do nothing

#	Rotate models around x axis by model angle
	#	rotate tank
	mov %1, [AI_THETA]		# get the rotation for the tank
	mov %0, 0				# other angle is 0
	call setup_rotate
	mov %4, [%10]			# get the size of the tank in triangles
	sub %SP, 9				# make room for triangle to rotate
	mov %1, %SP				# top of the temp triangle (first point)
	mov %0, %10				# pointer to modifiable tank
	incr %0					# skip size field in tank
	rotatetankloop:			# loop that rotates tank points
	incr %0					# skip color
	call rotate_point
	add %0, 3				# move to next point in triangle
	add %1, 3
	call rotate_point
	add %0, 3				# move to next point in triangle
	add %1, 3
	call rotate_point
	mov %2, 9
	sub %0, 6
	sub %1, 6
	mov %3, %0
	mov %0, %1
	mov %1, %3
	call memcpy				# copy rotated triangle back into tank
	decr %4					# done rotating one triangle
	# check if loop again
	jne %4, 0, rotatetankloop
	# done with tank, remove temp storage on stack
	add %SP, 9

	# rotate bullets
	# check if there is an AI bullet to rotate
	je %9, 0, skipaibulletrotate

	mov %1, [AI_BULLET_THETA] # get the rotation for the bullet
	mov %0, 0				# other angle is 0
	call setup_rotate
	mov %4, [%9]			# get the size of the bullet in triangles
	sub %SP, 9				# make room for triangle to rotate
	mov %1, %SP				# top of the temp triangle (first point)
	mov %0, %10				# pointer to modifiable bullet
	incr %0					# skip size field in bullet
	rotateaibulletloop:		# loop that rotates tank points
	incr %0					# skip color
	call rotate_point
	add %0, 3				# move to next point in triangle
	add %1, 3
	call rotate_point
	add %0, 3				# move to next point in triangle
	add %1, 3
	call rotate_point
	mov %2, 9
	sub %0, 6
	sub %1, 6
	mov %3, %0
	mov %0, %1
	mov %1, %3
	call memcpy				# copy rotated triangle back into bullet
	decr %4					# done rotating one triangle
	# check if loop again
	jne %4, 0, rotateaibulletloop
	# done with tank, remove temp storage on stack
	add %SP, 9

	skipaibulletrotate:

	# check if there is a player bullet to rotate
	je %8, 0, skipplayerbulletrotate

	mov %1, [PLAYER_BULLET_THETA] # get the rotation for the bullet
	mov %0, 0				# other angle is 0
	call setup_rotate
	mov %4, [%9]			# get the size of the bullet in triangles
	sub %SP, 9				# make room for triangle to rotate
	mov %1, %SP				# top of the temp triangle (first point)
	mov %0, %10				# pointer to modifiable bullet
	incr %0					# skip size field in bullet
	rotateplayerbulletloop:	# loop that rotates tank points
	incr %0					# skip color
	call rotate_point
	add %0, 3				# move to next point in triangle
	add %1, 3
	call rotate_point
	add %0, 3				# move to next point in triangle
	add %1, 3
	call rotate_point
	mov %2, 9
	sub %0, 6
	sub %1, 6
	mov %3, %0
	mov %0, %1
	mov %1, %3
	call memcpy				# copy rotated triangle back into bullet
	decr %4					# done rotating one triangle
	# check if loop again
	jne %4, 0, rotateplayerbulletloop
	# done with tank, remove temp storage on stack
	add %SP, 9

	skipplayerbulletrotate:

#	Translate model (add entity location to all points in model).
	# translate tank
	sub %SP, 3				# make temp point
	mov %0, %SP
	mov %1, [AI_X]			# copy in AI tank translation (position)
	mov %2, [PLAYER_X]		# offest by camera pos
	sub %1, 2
	mov [%0], %1
	incr %0
	mov %1, [AI_Y]
	mov %2, [PLAYER_Y]		# offest by camera pos
	sub %1, 2
	mov [%0], %1
	incr %0
	mov %1, 0
	mov [%0], %1
	sub %0, 2				# restore pointer
	mov %4, [%10]			# get the size of the tank in triangles
	mov %1, %10				# pointer to modifiable tank
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

	# translate bullets
	# check if there is an AI bullet to translate
	je %9, 0, skipaibullettranslate

	sub %SP, 3				# make temp point
	mov %0, %SP
	mov %1, [AI_BULLET_X]	# copy in AI bullet translation (position)
	mov %2, [PLAYER_X]		# offest by camera pos
	sub %1, 2
	mov [%0], %1
	incr %0
	mov %1, [AI_BULLET_Y]
	mov %2, [PLAYER_Y]		# offest by camera pos
	sub %1, 2
	mov [%0], %1
	incr %0
	mov %1, 0
	mov [%0], %1
	sub %0, 2				# restore pointer
	mov %4, [%9]			# get the size of the bullet in triangles
	mov %1, %9				# pointer to modifiable bullet
	incr %1					# skip size field in bullet
	translateaibulletloop:	# loop that translates bullet points
	incr %1					# skip color
	call vector_add
	add %1, 3				# move to next point
	call vector_add
	add %1, 3				# move to next point
	call vector_add
	add %1, 3				# move to next triangle
	decr %4					# done rotating one triangle
	# check if loop again
	jne %4, 0, translateaibulletloop
	# done with bullet, remove temp storage on stack
	add %SP, 3

	skipaibullettranslate:

	# check if there is a player bullet to rotate
	je %8, 0, skipplayerbullettranslate

	sub %SP, 3				# make temp point
	mov %0, %SP
	mov %1, [PLAYER_BULLET_X]	# copy in AI bullet translation (position)
	mov %2, [PLAYER_X]		# offest by camera pos
	sub %1, 2
	mov [%0], %1
	incr %0
	mov %1, [PLAYER_BULLET_Y]
	mov %2, [PLAYER_Y]		# offest by camera pos
	sub %1, 2
	mov [%0], %1
	incr %0
	mov %1, 0
	mov [%0], %1
	sub %0, 2				# restore pointer
	mov %4, [%8]			# get the size of the bullet in triangles
	mov %1, %8				# pointer to modifiable bullet
	incr %1					# skip size field in bullet
	translateplayerbulletloop:	# loop that translates bullet points
	incr %1					# skip color
	call vector_add
	add %1, 3				# move to next point
	call vector_add
	add %1, 3				# move to next point
	call vector_add
	add %1, 3				# move to next triangle
	decr %4					# done rotating one triangle
	# check if loop again
	jne %4, 0, translateplayerbulletloop
	# done with bullet, remove temp storage on stack
	add %SP, 3

	skipplayerbullettranslate:

#Put model in camera coordinates:
	#	Rotate model around y axis by camera angle.
	#	Rotate model around x axis by camera angle.
		#	Rotate models around x axis by model angle
	#	rotate tank
	mov %1, [PLAYER_THETA]		# get the rotation for the tank
	mov %0, 0				# other angle is 0
	call setup_rotate
	mov %4, [%10]			# get the size of the tank in triangles
	sub %SP, 9				# make room for triangle to rotate
	mov %1, %SP				# top of the temp triangle (first point)
	mov %0, %10				# pointer to modifiable tank
	incr %0					# skip size field in tank
	camerarotatetankloop:			# loop that rotates tank points
	incr %0					# skip color
	call rotate_point
	add %0, 3				# move to next point in triangle
	add %1, 3
	call rotate_point
	add %0, 3				# move to next point in triangle
	add %1, 3
	call rotate_point
	mov %2, 9
	sub %0, 6
	sub %1, 6
	mov %3, %0
	mov %0, %1
	mov %1, %3
	call memcpy				# copy rotated triangle back into tank
	decr %4					# done rotating one triangle
	# check if loop again
	jne %4, 0, camerarotatetankloop
	# done with tank, remove temp storage on stack
	add %SP, 9

	# rotate bullets
	# check if there is an AI bullet to rotate
	je %9, 0, skipaibulletcamerarotate

	mov %1, [PLAYER_THETA] # get the rotation for the bullet
	mov %0, 0				# other angle is 0
	call setup_rotate
	mov %4, [%9]			# get the size of the bullet in triangles
	sub %SP, 9				# make room for triangle to rotate
	mov %1, %SP				# top of the temp triangle (first point)
	mov %0, %10				# pointer to modifiable bullet
	incr %0					# skip size field in bullet
	camerarotateaibulletloop:		# loop that rotates tank points
	incr %0					# skip color
	call rotate_point
	add %0, 3				# move to next point in triangle
	add %1, 3
	call rotate_point
	add %0, 3				# move to next point in triangle
	add %1, 3
	call rotate_point
	mov %2, 9
	sub %0, 6
	sub %1, 6
	mov %3, %0
	mov %0, %1
	mov %1, %3
	call memcpy				# copy rotated triangle back into bullet
	decr %4					# done rotating one triangle
	# check if loop again
	jne %4, 0, camerarotateaibulletloop
	# done with tank, remove temp storage on stack
	add %SP, 9

	skipaibulletcamerarotate:

	# check if there is a player bullet to rotate
	je %8, 0, skipplayerbulletcamerarotate

	mov %1, [PLAYER_THETA] # get the rotation for the bullet
	mov %0, 0				# other angle is 0
	call setup_rotate
	mov %4, [%9]			# get the size of the bullet in triangles
	sub %SP, 9				# make room for triangle to rotate
	mov %1, %SP				# top of the temp triangle (first point)
	mov %0, %10				# pointer to modifiable bullet
	incr %0					# skip size field in bullet
	camerarotateplayerbulletloop:	# loop that rotates tank points
	incr %0					# skip color
	call rotate_point
	add %0, 3				# move to next point in triangle
	add %1, 3
	call rotate_point
	add %0, 3				# move to next point in triangle
	add %1, 3
	call rotate_point
	mov %2, 9
	sub %0, 6
	sub %1, 6
	mov %3, %0
	mov %0, %1
	mov %1, %3
	call memcpy				# copy rotated triangle back into bullet
	decr %4					# done rotating one triangle
	# check if loop again
	jne %4, 0, camerarotateplayerbulletloop
	# done with tank, remove temp storage on stack
	add %SP, 9

	skipplayerbulletcamerarotate:

# back face cull and set color to FFFF if culled
	# tank first
	mov %0, %10
	call backfacecull

	# if ai bullet, do it second
	je %9, 0, skipaibulletcull
	mov %0, %9
	call backfacecull
	skipaibulletcull:

	# if player bullets, do it third (or second)
	je %8, 0, skipplayerbulletcull
	mov %0, %8
	call backfacecull
	skipplayerbulletcull:

# copy all unculled triangles into array to be sorted
	mov %5, 0				# keep total unculled triangle count
	sub %SP, 1				# space for total number of triangles to render
	mov %6, %SP
	# tank first
	mov %4, [%10]			# get size
	mov %0, %10				# pointer into model
	copyculledtankloop:
	incr %0					# pointer now points to color (top of triangle in case we copy)
	mov %1, [%0]
	jne %1, 0xFFFF, dontcopytank
	#should copy
	sub %SP, 10
	mov %1, %SP
	mov %2, 10
	call memcpy
	incr %5					# one more unculled triangle
	dontcopytank:
	add %0, 10				# on to next triangle
	decr %4
	jge %4, 0, copyculledtankloop

		# if ai bullet, do it second
	je %9, 0, skipaibulletcopy
	mov %4, [%9]			# get size
	mov %0, %9				# pointer into model
	copyculledaibulletloop:
	incr %0					# pointer now points to color (top of triangle in case we copy)
	mov %1, [%0]
	jne %1, 0xFFFF, dontcopyaibullet
	#should copy
	sub %SP, 10
	mov %1, %SP
	mov %2, 10
	call memcpy
	incr %5					# one more unculled triangle
	dontcopyaibullet:
	add %0, 10				# on to next triangle
	decr %4
	jge %4, 0, copyculledaibulletloop
	skipaibulletcopy:

	# if player bullets, do it third (or second)
	je %8, 0, skipplayerbulletcopy
	mov %4, [%8]			# get size
	mov %0, %8				# pointer into model
	copyculledplayerbulletloop:
	incr %0					# pointer now points to color (top of triangle in case we copy)
	mov %1, [%0]
	jne %1, 0xFFFF, dontcopyplayerbullet
	#should copy
	sub %SP, 10
	mov %1, %SP
	mov %2, 10
	call memcpy
	incr %5					# one more unculled triangle
	dontcopyplayerbullet:
	add %0, 10				# on to next triangle
	decr %4
	jge %4, 0, copyculledplayerbulletloop
	skipplayerbulletcopy:

	# save total triangle count
	mov [%6], %5			# %6 is the pointer to the array of triangles
							# pointers %10, %9, and %8 are up for grabs now that the triangles from those models have been culled

	# add size of array to running stack total
	mul %5, 10
	add %LOW, 1
	add %7, %LOW

#	Sort triangles by distance of nearest point (furthest away comes first). Insertion sort
	mov %4, 1				# starting index
	mov %0, 1
	sub %SP, 10				# temp triangle
	mov %2, %SP
	mov %0, %6				# triangle array pointer
	incr %6					# skip size

	sorttrianglesouterloop:
	mov %0, %6				# get pointer to model
	mul %4, 10				# get index into model (in words, not triangles)
	add %0, %LOW			# %0 now ready to be used as src in move_triangle
	mov %1, %2				# move temp pointer into dst arg of move_triangle
	call move_triangle
	mov %3, %4				# get a inner loop index
	decr %3

		sorttrianglesinnerloop:
		mov %0, %6				# get pointer to model
		mul %3, 10				# get index into model (in words, not triangles)
		add %0, %LOW			# triangles[i]
		mov %2, %0				# save pointer to triangles[i]
		call find_furthest		# %0 will contain 1 if we should shift and 0 if it is the right position
		je %0, 0, innersortloopdone	# if the triangles[i] is further than temp, don't shift
		mov %0, %2				# restore pointer to triangles[i]
		mov %1, %0
		add %1, 10				# triangles[i+1]
		call move_triangle
		decr %3
		jge %3, 0, sorttrianglesinnerloop

	innersortloopdone:
	mov %1, %6				# set up dst (triangles[i+1])
	mul %3, 10
	add %1, %LOW
	add %1, 10
	mov %0, %2				# set up src (temp)
	call move_triangle
	incr %4
	jl %4, %5, sorttrianglesouterloop

	# clean up stack
	add %SP, 10

#Front-back clipping:
	#	If triangle has both positive and negative z values at this point, it must be clipped to only the positive z space.


	#	Calculate intersection of triangle with screen location via binary subdivision.


	#	If triangle clip results in quad, split quad into two triangles instead.


#Perspective transform:
	#	Using similar triangles and binary subdivision, calculate screen coordinates one point at a time.


#Screen clipping:
	#	If triangle partially off screen, partially on screen, use binary subdivision to find where triangle intersects edges of screen. If result is quad, split into multiple triangles.

#Rasterise


	dontrender:

	# -------------------------------
	# clean up stack
	add %SP, %7

	j mainLoop # Loop again.

mainEnd:
	pop $10
	pop $9
	pop $8
	pop $7
	pop $6
	pop $5
	pop $4
	pop $3
	pop $2
	pop $1
	pop $0
	ret

# given the pointer to a triangle in %0, find the nearest point and return the distance to it squared
nearest_point:
	push %1
	push %2
	push %3
	push %4

	mov %4, %0				# save triangle pointer
	incr %4					# get to p1
	mov %0, %4				# set up args
	call distance_squared	# get distance squared
	mov %1, %0				# save distance to p1
	add %4, 3				# get to p2
	mov %0, %4				# set up args
	call distance_squared	# get distance squared
	mov %2, %0				# save distance to p2
	add %4, 3				# get to p3
	mov %0, %4				# set up args
	call distance_squared	# get distance squared
	mov %3, %0				# save distance to p3

	mov %0, %1				# assume p1 is nearest
	jle %0, %2, isnearer1	# check if p2 is nearer
	mov %0, %2				# if so, set return to that
	isnearer1:				# otherwise keep |p1| in %0
	jle %0, %3, isnearer2	# check if p3 is nearer
	mov %0, %3				# if so, set return to that
	isnearer2:				# otherwise keep %0

	pop $4
	pop %3
	pop %2
	pop %1
	ret

# given the pointer to a point in %0, find the difference squared and return it in %0
distance_squared:
	push %1
	push %2

	mov %1, [%0]
	mul %1, %1
	mov %2, %LOW
	incr %0
	mov %1, [%0]
	mul %1, %1
	add %2, %LOW
	incr %0
	mov %1, [%0]
	mul %1, %1
	add %2, %LOW
	mov %0, %2

	pop %2
	pop %1
	ret

# given two pointers to triangles in %0, and %1, return 1 in %0 if first was furthest and 0 in %0 if second was furthest
find_furthest:
	push %1
	push %2
	push %3

	call nearest_point		# find nearest point in triangle
	mov %2, %0				# save the distance to the nearest point of first triangle

	mov %0, %1				# move second triangle to arg
	call nearest_point
	mov %3, %0				# save the distance to the nearest point of second triangle

	mov %0, 0
	jge %2, %3, firstwasfurthest	# check whether %0 was further away than %1
	add %0, 1				# if not, return 1
	firstwasfurthest:		# if so, return 0

	pop %3
	pop %2
	pop %1
	ret

# move the triangle pointed to by %0 into the triangle pointed to by %1 (WARNING: overwrites the triangle pointed to by %1)
move_triangle:
	push %2

	# completely unrolled
	mov %2, [%0]			# move color
	mov [%1], %2
	incr %0
	incr %1
	mov %2, [%0]			# mov x1
	mov [%1], %2
	incr %0
	incr %1
	mov %2, [%0]			# mov y1
	mov [%1], %2
	incr %0
	incr %1
	mov %2, [%0]			# move z1
	mov [%1], %2
	incr %0
	incr %1
	mov %2, [%0]			# move x2
	mov [%1], %2
	incr %0
	incr %1
	mov %2, [%0]			# move y2
	mov [%1], %2
	incr %0
	incr %1
	mov %2, [%0]			# move z2
	mov [%1], %2
	incr %0
	incr %1
	mov %2, [%0]			# move x3
	mov [%1], %2
	incr %0
	incr %1
	mov %2, [%0]			# move y3
	mov [%1], %2
	incr %0
	incr %1
	mov %2, [%0]			# move z3
	mov [%1], %2

	# reset pointers
	sub %0, 10
	sub %1, 10

	pop %2
	ret

# back-face culls all triangles in a model whose pointer is in %0
backfacecull:
	push %0
	push %1
	push %2
	push %3
	push %4
	push %5

	mov %2, %0				# avoid overwriting
	mov %4, [%2]			# get size of model in triangles
	incr %2					# skip size

	#	|(p3 - p1) x (p3 - p2)|

	backfacecullloop:
	incr %2					# now at first point
	#	(p3 - p1)
	sub %SP, 3				# make temp point in %0
	mov %1, %SP
	# move p3 data into temp point
	add %2, 6				# now at p3
	mov %3, [%2]			# copy x
	mov [%1], %3
	incr %2
	incr %1
	mov %3, [%2]			# copy y
	mov [%1], %3
	incr %2
	incr %1
	mov %3, [%2]			# copy z
	mov [%1], %3
	sub %2, 8				# reset model pointer to p1
	mov %0, %2				# move p1 into arg0, temp pointer is already in %1 =]
	call vector_sub			# temp pointer now points to (p3 - p1)
	mov %5, %1				# save address to temp point in %5

	#	(p3 - p2)
	sub %SP, 3				# make another temp point in %0
	mov %1, %SP
	# move p3 data into temp point
	add %2, 6				# now at p3
	mov %3, [%2]			# copy x
	mov [%1], %3
	incr %2
	incr %1
	mov %3, [%2]			# copy y
	mov [%1], %3
	incr %2
	incr %1
	mov %3, [%2]			# copy z
	mov [%1], %3
	sub %2, 5				# reset model pointer to p2
	mov %0, %2				# move p2 into arg0, temp pointer is already in %1 =]
	call vector_sub			# temp pointer in %1 now points to (p3 - p2)

	# do cross product
	mov	%0, %5				# move (p3 - p1) pointer to arg0 for arg0 x arg1
	call cross3
	# if the magnitude returned in %0 is less than 0, cull by setting color to 0xFFFF
	sub %2, 4				# reset model pointer to color
	jl %0, 0, dontcull

	mov %0, 0xFFFF
	mov [%2], %0			# cull

	dontcull:
	add %2, 10				# get to next triangle
	add %SP, 6				# clean up stack

	decr %4					# size--
	jge %4, 0, backfacecullloop

	ret


# copy memory from [%0], to [%1] of size in %2.
# preserves args
memcpy:
	push %0
	push %1
	push %2
	push %3

	memcpyloop:
	mov %3, [%0]			# mov src into tmp
	mov [%1], %3			# mov tmp into dst
	incr %1					# src++
	incr %0					# dst++
	decr %2					# count--
	jne %2, 0, memcpyloop

	pop %3
	pop %2
	pop %1
	pop %0
	ret

# Take x0 in 0, y0 in 1, x1 in 2 and y1 in 3, return the dot product in 0
# Does not destory any registers other than the return value in 0.
dot:
	push %LOW
	push %HIGH

	mul %0, %2
	mov %0, %LOW
	mul %1, %3
	add %0, %LOW

	pop %HIGH
	pop %LOW
	ret

# Take x0 in 0, y0 in 1, x1 in 2 and y1 in 3, return the cross product in 0
# Does not destory any registers other than the return value in 0.
cross:
	push %LOW
	push %HIGH

	mul %0, %3
	mov %0, %LOW
	mul %1, %2
	sub %0, %LOW

	pop %HIGH
	pop %LOW
	ret

# Take a pointer to an xyz vector in %0, and the second in %1, return the maginude
# of the cross product (squared) in %0
cross3:
	push %2
	push %3
	push %4
	push %5
	push %6
	push %7
	push %LOW
	push %HIGH

	mov %2, [%0]
	add %0, 1
	mov %3, [%0]
	add %0, 1
	mov %4, [%0]

	mov %5, [%1]
	add %1, 1
	mov %6, [%1]
	add %1, 1
	mov %7, [%1]

	mul %3, %7
	mov %0, %LOW
	mul %4, %6
	sub %0, %LOW
	lsh %0, 1

	mul %4, %5
	mov %1, %LOW
	mul %2, %7
	sub %1, %LOW
	lsh %1, 1
	add %0, %1

	mul %2, %6
	mov %1, %LOW
	mul %3, %5
	sub %1, %LOW
	lsh %1, 1
	add %0, %1

	pop %HIGH
	pop %LOW
	pop %7
	pop %6
	pop %5
	pop %4
	pop %3
	pop %2
	ret

# adds the 3-lenth vector in %0 to the 3-lenth vector in %1 and stores it in %1
# src vector preserved, dst vector changed (but passed pointer is preserved)
vector_add:
	push %0
	push %1
	push %2
	push %3

	mov %2, [%0]
	mov %3, [%1]
	add %2, %3
	mov [%1], %2
	incr %0
	incr %1
	mov %2, [%0]
	mov %3, [%1]
	add %2, %3
	mov [%1], %2
	incr %0
	incr %1
	mov %2, [%0]
	mov %3, [%1]
	add %2, %3
	mov [%1], %2

	pop %3
	pop %2
	pop %1
	pop %0
	ret

# subtract the 3-lenth vector in %0 from the 3-lenth vector in %1 and stores it in %1
# src vector preserved, dst vector changed (but passed pointer is preserved)
vector_sub:
	push %0
	push %1
	push %2
	push %3

	mov %2, [%0]
	mov %3, [%1]
	sub %3, %2
	mov [%1], %2
	incr %0
	incr %1
	mov %2, [%0]
	mov %3, [%1]
	sub %3, %2
	mov [%1], %2
	incr %0
	incr %1
	mov %2, [%0]
	mov %3, [%1]
	sub %3, %2
	mov [%1], %2

	pop %3
	pop %2
	pop %1
	pop %0
	ret

# Take the lines with delX in %0, and dely in %1, and return the angle theta of that line in %0
FindTheta:
	push %2
	push %3
	push %4
	push %5
	push %6
	push %7

	mov %7, FIND_THETA_ACCURACY
	mov %6, DEGREE_90 # Value to be added to the angle
	mov %5, 0         # Value to be returned
	mov %4, %0

	findThetaLoop:
		mov %0, %6
		call cos
		mov %2, %0 # 2 has x of comparison vector
		mov %0, %6
		call sin
		mov %3, %0 # 3 has y of comparison vector
		call dot
		jg %0, 0, findThetaAdd # In the top half of the graph
		# In the bottom half of the graph
			sub %5, %7
			j findThetaAddEnd

		findThetaAdd:
			add %5, %7

		findThetaAddEnd:

		jne %7, 0, findThetaLoop
		mov %0, %4
		sub %7, 1
		arsh %6, 1

	mov %0, %5 # Move theta to 0

	pop %7
	pop %6
	pop %5
	pop %4
	pop %3
	pop %2
	ret

# Take top left x in 0, top left y in 1, bottom right x in 2 bottom right y in 3,
# and color in 4
# Draw a square
drawSquare:

	push %5

	lsh %0, 8
	or %0, %2
	drawSquareLoop:
		jg %1, %3, endDrawSquare

		mov %2, %1
		lsh %2, 3
		or %2, %4

		mov [VGA], %2
		mov [VGA], %0

		add %1, 1
		j drawSquareLoop
	endDrawSquare:

	pop %5
	ret

# Take a number in the $0 reg, return the sin of that number into the $0 reg
sin:
	push %10
	push %9
	push %8
	push %7

	# move arg into %10
	mov %10, %0

	# quadrant modify the angles

	mov %9, %10		# switch on quadrant
	rsh %9, 14
	cmp %9, 1
	je second
	cmp %9, 2
	je third
	cmp %9, 3
	je fourth
	j sinend

	second:
	mov %9, sine_lut
	mov %8, %10
	rsh %8, 7
	and %8, 0x7F	# mask angle
	mov %7, 0x7F	# load max
	sub %7, %8		# max - angle
	add %9, %7
	mov %0, [%9]	# addr
	decr %9
	and %9, 0x7F
	mov %7, [%9]	# addr-1
	# multiply
	and %10, 0x7F	# fraction
	lsh %10, 7
	fmul %7, %10
	mov %9, 0x40
	lsh %9, 8
	sub %9, %10		# 1 - fraction
	fmul %0, %9
	add %0, %7
	j sinend

	third:
	mov %9, sine_lut
	mov %8, %10
	rsh %8, 7
	and %8, 0x7F	# mask angle
	sub %8, 0x7F	# angle - max
	add %9, %8
	mov %0, [%9]	# addr
	incr %9
	and %8, 0x7F
	mov %7, [%9]	# addr+1
	# multiply
	and %10, 0x7F	# fraction
	lsh %10, 7
	fmul %7, %10
	mov %9, 0x40
	lsh %9, 8
	sub %9, %10		# 1 - fraction
	fmul %0, %9
	add %0, %7
	not %0, %0
	add %0, 1
	j sinend

	fourth:
	mov %9, sine_lut
	mov %8, %10
	rsh %8, 7
	and %8, 0x7F	# mask angle
	mov %7, 0x7F	# load max
	sub %7, %8		# max - angle
	add %9, %7
	mov %0, [%9]	# addr
	decr %9
	and %8, 0x7F
	mov %7, [%9]	# addr-1
	# multiply
	and %10, 0x7F	# fraction
	lsh %10, 7
	fmul %7, %10
	mov %9, 0x40
	lsh %9, 8
	sub %9, %10		# 1 - fraction
	fmul %0, %9
	add %0, %7
	not %0, %0
	add %0, 1
	j sinend

	sinend:
	mov %9, sine_lut
	mov %8, %10
	rsh %8, 7
	and %8, 0x7F
	add %9, %8
	mov %0, [%9]	# addr
	incr %9
	and %8, 0x7F
	mov %7, [%9]	# addr+1
	# multiply
	and %10, 0x7F	# fraction
	lsh %10, 7
	fmul %7, %10
	mov %9, 0x40
	lsh %9, 8
	sub %9, %10		# 1 - fraction
	fmul %0, %9
	add %0, %7

	# return
	pop %7
	pop %8
	pop %9
	pop %10

	ret

# Take a number in the $0 reg, return the cos of that number into the $0 reg
cos:
	push %10
	push %9

	mov %10, %0
	mov %9, 0xC0	#load 1100000000000000
	lsh %9, 8
	rsh %10, 14		#increment quadrant
	incr %10
	lsh %10, 14
	not %9, %9		#replace quadrant
	and %0, %9
	or %0, %10

	# call sin
	call sin

	pop %9
	pop %10
	ret

# Take numerator in $0, denominator in $1, return numerator/denominator in $0
div:
	ret

# setup rotation matricies with two angles (%0 and %1)
# preserves args
setup_rotate:
	push %9
	push %8
	push %6
	push %1
	push %0

	# move arguments into registers that aren't overwritten
	mov %8, %0	# xtheta
	mov %9, %1	# ytheta

	# generate rotation matrix x
	mov %0, %8	# generate and save cos
	call cos
	mov %6, %0
	mov %0, %8	# generate and save sin
	call sin
	mov %1, %0
	mov %0, 1	# fill matrix
	mov [rotation_matrix_x], %0		# 1
	mov %0, 0
	mov [rotation_matrix_x+1], %0	# 0
	mov [rotation_matrix_x+2], %0	# 0
	mov [rotation_matrix_x+3], %0	# 0
	mov [rotation_matrix_x+6], %0	# 0
	mov [rotation_matrix_x+4], %6	# cos (xtheta)
	not %0, %1	# negate %1 by inverting the bits and adding one
	add %0, 1
	mov [rotation_matrix_x+5], %0	# -sin (xtheta)
	mov [rotation_matrix_x+7], %1	# sin (xtheta)
	mov [rotation_matrix_x+8], %6	# cos (xtheta)

	# generate rotation matrix y
	mov %0, %9	# generate and save cos
	call cos
	mov %6, %0
	mov %0, %9	# generate and save sin
	call sin
	mov %1, %0
	mov %0, 0
	mov [rotation_matrix_y+1], %0	# 0
	mov [rotation_matrix_y+3], %0	# 0
	mov [rotation_matrix_y+5], %0	# 0
	mov [rotation_matrix_y+7], %0	# 0
	mov [rotation_matrix_y], %6		# cos (ytheta)
	mov [rotation_matrix_y+2], %1	# sin (ytheta)
	mov %0, 1
	mov [rotation_matrix_y+4], %6	# 1
	not %0, %1	# negate %1 by inverting the bits and adding one
	add %0, 1
	mov [rotation_matrix_y+6], %0	# -sin (xtheta)
	mov [rotation_matrix_y+8], %6	# cos (xtheta)

	pop %0
	pop %1
	pop %6
	pop %8
	pop %9
	ret

# rotate a point %0 (pointer) and stores it in %1 (pointer)
# preserves arguments
rotate_point:
	push %10
	push %7
	push %2
	push %1
	push %0

	mov %7, %0	# src point
	mov %10, %1	# dest point

	# make room on the stack for temp point
	sub %SP, 3

	# set up arguments for matrix multiply
	mov %0, rotation_matrix_x
	mov %1, %7
	mov %2, %SP
	# multiply first one
	call matrix_multiply

	# set up arguments for matrix multiply again
	mov %0, rotation_matrix_y	# matrix
	mov %1, %2					# temp point
	mov %2, %10					# dest point
	# multiply first one
	call matrix_multiply

	# clean up stack frame
	add %SP, 3

	pop %0
	pop %1
	pop %2
	pop %7
	pop %10
	ret

# Multiply a matrix in %0 (pointer) by a vector in %1 (pointer) and store the result in the vector in %2 (pointer)
# ASSUMES NO ALIASING!!!!!!!!!!!
# matricies are row-major
# preserves arguments
matrix_multiply:
	push %3
	push %4
	push %5
	push %6
	push %7
	push %8
	push %2
	push %1
	push %0

	mov %7, 0	# matrix position counter

	matmulloop1:
	mov %5, 0	# accumulator
	mov %6, 0	# counter

	matmulloop2:
	# get two elements
	mov %3, [%1]
	mov %4, [%0]
	# check which kind of multiply to do
	incr %0
	mov %8, [%0]
	je %8, 1, matmulfmul
	# multiply them
	mul %3, %4
	j matmuldonemul
	matmulfmul:
	fmul %3, %4
	matmuldonemul:
	# store in accumulator
	add %5, %LOW
	# increment the pointers and counters
	incr %0
	incr %1
	incr %6
	incr %7
	# test loop condition
	cmp %6, 3
	jl matmulloop2
	# reset vector pointer
	sub %1, 3
	# save new row in return vector
	mov [%2], %5
	incr %2
	# test if we are done
	cmp %7, 9
	jl matmulloop1

	# done
	pop %0
	pop %1
	pop %2
	pop %8
	pop %7
	pop %6
	pop %5
	pop %4
	pop %3
	ret

.data
PLAYER_X:
0

PLAYER_Y:
0

PLAYER_START_X:
10

PLAYER_START_Y:
10

PLAYER_THETA:
0

PLAYER_START_THETA:
0

PLAYER_RADIUS:
10

PLAYER_LIVES:
5

PLAYER_SCORE:
0

PLAYER_BULLET_X:
0

PLAYER_BULLET_Y:
0

PLAYER_BULLET_THETA:
0

PLAYER_BULLET_TIME:
0

AI_X:
100

AI_Y:
100

AI_TURNING:
0

AI_TARGET_THETA:
0

AI_THETA:
0

AI_RADIUS:
10

AI_FIRE_TIMER:
1000

AI_FIRE_RESET:
1000

AI_BULLET_X:
0

AI_BULLET_Y:
0

AI_BULLET_THETA:
0

AI_BULLET_TIME:
0

AI_START_X:
10

AI_START_Y:
10

AI_START_THETA:
10

rotation_matrix_x:
0
0	# is fixed point flags for each matrix element are static since matricies are know
0
0	# is fixed point
0
0	# is fixed point
0
0	# is fixed point
0
1	# is fixed point
0
1	# is fixed point
0
0	# is fixed point
0
1	# is fixed point
0
1	# is fixed point

rotation_matrix_y:
0
1	# is fixed point
0
0	# is fixed point
0
1	# is fixed point
0
0	# is fixed point
0
0	# is fixed point
0
0	# is fixed point
0
1	# is fixed point
0
0	# is fixed point
0
1	# is fixed point

tank_model:
1
00
00
00
00

bullet_model:
1
00
00
00
00

sine_lut:
0b0000000000000000
0b0000000011001001
0b0000000110010010
0b0000001001011011
0b0000001100100011
0b0000001111101100
0b0000010010110101
0b0000010101111101
0b0000011001000101
0b0000011100001101
0b0000011111010101
0b0000100010011100
0b0000100101100100
0b0000101000101010
0b0000101011110001
0b0000101110110110
0b0000110001111100
0b0000110101000001
0b0000111000000101
0b0000111011001001
0b0000111110001100
0b0001000001001111
0b0001000100010001
0b0001000111010011
0b0001001010010100
0b0001001101010100
0b0001010000010011
0b0001010011010001
0b0001010110001111
0b0001011001001100
0b0001011100001000
0b0001011111000011
0b0001100001111101
0b0001100100110111
0b0001100111101111
0b0001101010100110
0b0001101101011101
0b0001110000010010
0b0001110011000110
0b0001110101111001
0b0001111000101011
0b0001111011011100
0b0001111110001011
0b0010000000111001
0b0010000011100111
0b0010000110010010
0b0010001000111101
0b0010001011100110
0b0010001110001110
0b0010010000110100
0b0010010011011010
0b0010010101111101
0b0010011000011111
0b0010011011000000
0b0010011101011111
0b0010011111111101
0b0010100010011001
0b0010100100110100
0b0010100111001101
0b0010101001100101
0b0010101011111010
0b0010101110001110
0b0010110000100001
0b0010110010110010
0b0010110101000001
0b0010110111001110
0b0010111001011010
0b0010111011100011
0b0010111101101011
0b0010111111110001
0b0011000001110110
0b0011000011111000
0b0011000101111001
0b0011000111110111
0b0011001001110100
0b0011001011101110
0b0011001101100111
0b0011001111011110
0b0011010001010011
0b0011010011000110
0b0011010100110110
0b0011010110100101
0b0011011000010010
0b0011011001111100
0b0011011011100101
0b0011011101001011
0b0011011110101111
0b0011100000010001
0b0011100001110001
0b0011100011001111
0b0011100100101010
0b0011100110000011
0b0011100111011010
0b0011101000101111
0b0011101010000010
0b0011101011010010
0b0011101100100000
0b0011101101101100
0b0011101110110110
0b0011101111111101
0b0011110001000010
0b0011110010000100
0b0011110011000101
0b0011110100000010
0b0011110100111110
0b0011110101110111
0b0011110110101110
0b0011110111100010
0b0011111000010100
0b0011111001000100
0b0011111001110001
0b0011111010011100
0b0011111011000101
0b0011111011101011
0b0011111100001110
0b0011111100101111
0b0011111101001110
0b0011111101101010
0b0011111110000100
0b0011111110011100
0b0011111110110001
0b0011111111000011
0b0011111111010011
0b0011111111100001
0b0011111111101100
0b0011111111110100
0b0011111111111011
0b0011111111111110
0b0100000000000000
