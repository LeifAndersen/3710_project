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
`define SPEED 100
`define ROTATION_SPEED 5000
`define PLAYER_START_LIVES 5
`define BULLET_SPEED 20
`define BULLET_LIFE 100
`define FIND_THETA_ACCURACY 5
`define DEGREE_90 0x4000      # 90 Degrees in our encoding
`define FIELD_MIN -8192
`define FIELD_MAZ 8192
`define FIT_SCREEN_SHIFT_AMMOUNT 7 # THe ammount of shifts needed to make 2*FIELD SIZE fit on the screen in both x and y axis
`define FIELD_OFFSET 8192 # Offset for field to make it all positive
`define DEBUG_TANK_SIZE 10
`define DEBUG_BULLET_SIZE 10
`define STACK_TOP 11264 # stack starts at 11264 (this is the top of memory, be careful)
`define FP %14
`define SP %13
`define zone1 %5
`define zone3 %6
`define zone2 %9
`define egx %7
`define efx %10
`define PERSPECTIVE -100

# Bootup and initialization Code
init:
	mov %SP, STACK_TOP
	mov %FP, %SP
# Begin der loop
	call main

# Main Loop
main:

	# Store the registers on the stack
	push %0
	push %1
	push %2
	push %3
	push %4
	push %5
	push %6
	push %7
	push %8
	push %9
	push %10

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
	mul %2, ROTATION_SPEED
	add %4, %LOW           # %4 has the theta change
	mov [PLAYER_THETA], %4 # Save the theta

	# Up/Down, update x/y
	mov %2, [PLAYER_X]
	mov %3, [PLAYER_Y]
	mov %5, [UP_KEY]
	mov %6, [DOWN_KEY]
	sub %5, %6             # Up-Down now in %5
	mul %5, SPEED
	mov %5, %LOW           # %5 now hoas ammount to go forward
	mov %0, %4             #
	call cos               # %0 has sin(theta)
	fmul %0, %5            #
	add %2, %0            # Player X now updated by the move amount
	                         #
	mov %0, %4             #
	call sin               # %0 has cos(theta)
	fmul %0, %5            # %LOW/HIGH has (UP-DOWN)*cos(theta)
	add %3, %0

	# TODO DEBUGGING ---------------
	mov [LCD], %2
	# mov [LCD], %3
	mov [PLAYER_X], %2
	mov [PLAYER_Y], %3

	mov %0, [UP_KEY]
	mov %1, [DOWN_KEY]
	add %0, %1
	mov %1, [RIGHT_KEY]
	add %0, %1
	mov %1, [LEFT_KEY]
	add %0, %1
	mov %1, [A_KEY]
	add %0, %1
	mov %1, [B_KEY]
	add %0, %1
	je %0, 0, noInput
		mov [UP_KEY], %0
	noInput:
	j mainEndGameState
	# TODO DEBUGGING ---------------


	# Move the AI

	mov %0, [AI_TURNING]
	je %0, 1, mainAITurningRight
	je %0, -1, mainAITurningLeft
	mov %4, [AI_X]
	mov %5, [AI_Y]
	mov %6, [AI_THETA]
	mov %0, %6
	call cos
	fmul %0, SPEED    # %LOW now has speed*sin(theta), to update Y
	add %4, %0           # %4 now has new Y (if possible)
	mov %0, %6
	call sin
	fmul %0, SPEED
	add %5, %0           # %5 now has possible AI_Y
	j mainAIDoneMoving

mainAITurningRight:
	mov [AI_TARGET_THETA], %0
	mov [AI_THETA], %1
	je %0, %1, mainAIDoneTurning
	sub %1, ROTATION_SPEED
	mov [AI_THETA], %1
	j mainAIDoneMoving

mainAITurningLeft:
	mov [AI_TARGET_THETA], %0
	mov [AI_THETA], %1
	je %0, %1, mainAIDoneTurning
	add %1, ROTATION_SPEED
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
	fmul %0, BULLET_SPEED
	add %6, %0           # 6 now conains bullet x
	mov %0, [PLAYER_BULLET_THETA]
	call sin
	fmul %0, BULLET_SPEED
	add %7, %0           # 7 now contains bullet y

	# Check bullet AI Collision
	mov %0, %4
	sub %0, %6
	lsh %0, 1
	mov %1, %5
	sub %1, %7
	lsh %1, 1
	add %0, %1 # 0 now contains (x0-x1)^2+(y0-y1)^2
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
	fmul %0, BULLET_SPEED
	add %8, %0            # 8 now conains bullet x
	mov %0, [AI_BULLET_THETA]
	call sin
	fmul %0, BULLET_SPEED
	add %9, %0           # 9 now contains bullet y

	# Check bullet AI Collision
	mov %0, %2
	sub %0, %8
	lsh %0, 1
	mov %1, %3
	sub %1, %9
	lsh %1, 1
	add %0, %1 # 0 now contains (x0-x1)^2+(y0-y1)^2
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
	mov FP, 0x8

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

	# Store Final Values
	mov [PLAYER_X], %3
	mov [PLAYER_Y], %4
	mov [AI_X], %6
	mov [AI_Y], %7

	# Reset keyboard counters (if there all 0, just let it slide)
	mov %0, [UP_KEY]
	mov %1, [DOWN_KEY]
	add %0, %1
	mov %1, [RIGHT_KEY]
	add %0, %1
	mov %1, [LEFT_KEY]
	add %0, %1
	mov %1, [A_KEY]
	add %0, %1
	mov %1, [B_KEY]
	add %0, %1
	je %0, 0, mainNoInput
		mov [UP_KEY], %0
	mainNoInput:

mainEndGameState:

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
	mov FP, 0x7

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
	mov FP, 0x6

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
	mov FP, 0x5

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
	mov FP, 0x4

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
	mov FP, 0x3

	skipplayerbullettranslate:
	
#Put model in camera coordinates:
	#	Rotate model around y axis by camera angle.
	#	Rotate model around x axis by camera angle.
		#	Rotate models around x axis by model angle
	#	rotate tank
	mov %1, [PLAYER_THETA]	# get the rotation for the tank
	mov %0, 0				# other angle is 0
	call setup_rotate
	mov %4, [%10]			# get the size of the tank in triangles
	sub %SP, 9				# make room for triangle to rotate
	mov %1, %SP				# top of the temp triangle (first point)
	mov %0, %10				# pointer to modifiable tank
	incr %0					# skip size field in tank
	camerarotatetankloop:	# loop that rotates tank points
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
	mov FP, 0x2

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
	mov FP, 0xf0
	
# back face cull and set color to FFFF if culled
	# tank first
	mov %0, %10
	mov [LCD], %0
	call backfacecull
	mov FP, 0xf1

	# if ai bullet, do it second
	je %9, 0, skipaibulletcull
	mov %0, %9
	call backfacecull
	mov FP, 0xf2
	skipaibulletcull:

	# if player bullets, do it third (or second)
	je %8, 0, skipplayerbulletcull
	mov %0, %8
	call backfacecull
	mov FP, 0xf3
	skipplayerbulletcull:

	foo:
	j foo

	
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

	# %6 contains the pointer to the "model" that contains all triangles to be rendered.

	call drawtriangles
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
	mov FP, 0x1
	j mainLoop # Loop again.

mainEnd:
	pop %10
	pop %9
	pop %8
	pop %7
	pop %6
	pop %5
	pop %4
	pop %3
	pop %2
	pop %1
	pop %0
	ret

# given the pointer to a triangle in %0, find the farthest point and return the distance to it squared
furthest_point:
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
	jge %0, %2, isfarther1	# check if p2 is farther
	mov %0, %2				# if so, set return to that
	isfarther1:				# otherwise keep |p1| in %0
	jge %0, %3, isfarther2	# check if p3 is farther
	mov %0, %3				# if so, set return to that
	isfarther2:				# otherwise keep %0

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

	call furthest_point		# find nearest point in triangle
	mov %2, %0				# save the distance to the nearest point of first triangle

	mov %0, %1				# move second triangle to arg
	call furthest_point
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
	mov FP, 0xb0
	call vector_sub			# temp pointer now points to (p3 - p1)
	mov FP, 0xb1
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
	mov FP, 0xb2
	call vector_sub			# temp pointer in %1 now points to (p3 - p2)
	mov FP, 0xb3

	# do cross product
	mov	%0, %5				# move (p3 - p1) pointer to arg0 for arg0 x arg1
	mov FP, 0xb4
	call cross3
	mov FP, 0xb5
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

	pop %5
	pop %4
	pop %3
	pop %2
	pop %1
	pop %0
	mov FP, 0xb6
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

# Simply draws, does not kill any registers
drawDebuggingGraphics:

	push %0
	push %1
	push %2
	push %3
	push %4

	mov %0, 0 # Black screen
	mov %1, 0
	mov %2, 160
	mov %3, 120
	mov %4, 0
	call drawSquare
	
	mov %0, [PLAYER_X]  # Your tank
	mov %1, [PLAYER_Y]
	add %0, FIELD_OFFSET
	add %1, FIELD_OFFSET
	arsh %0, FIT_SCREEN_SHIFT_AMMOUNT
	arsh %1, FIT_SCREEN_SHIFT_AMMOUNT
	mov %0, %2
	sub %0, DEBUG_TANK_SIZE
	add %2, DEBUG_TANK_SIZE
	mov %1, %3
	sub %1, DEBUG_TANK_SIZE
	add %3, DEBUG_TANK_SIZE
	mov %4, 1
	call drawSquare


	
	mov %0, [AI_X]  # Enemy Tank
	mov %1, [AI_Y]
	add %0, FIELD_OFFSET
	add %1, FIELD_OFFSET
	arsh %0, FIT_SCREEN_SHIFT_AMMOUNT
	arsh %1, FIT_SCREEN_SHIFT_AMMOUNT
	mov %0, %2
	sub %0, DEBUG_TANK_SIZE
	add %2, DEBUG_TANK_SIZE
	mov %1, %3
	sub %1, DEBUG_TANK_SIZE
	add %3, DEBUG_TANK_SIZE
	mov %4, 3
	call drawSquare

	mov %0, [PLAYER_BULLET_TIME]
	je %0, 0, mainDebugNoDrawPlayerBullet
		mov %0, 0xf00
		mov %0, [PLAYER_BULLET_X]  # Your bullet
		mov %1, [PLAYER_BULLET_Y]
		add %0, FIELD_OFFSET
		add %1, FIELD_OFFSET
		arsh %0, FIT_SCREEN_SHIFT_AMMOUNT
		arsh %1, FIT_SCREEN_SHIFT_AMMOUNT
		mov %0, %2
		sub %0, DEBUG_BULLET_SIZE
		add %2, DEBUG_BULLET_SIZE
		mov %1, %3
		sub %1, DEBUG_BULLET_SIZE
		add %3, DEBUG_BULLET_SIZE
		mov %4, 5
		call drawSquare
	mainDebugNoDrawPlayerBullet:

	mov %0, [AI_BULLET_TIME]
	je %0, 0, mainDebugNoDrawAIBullet
		mov %0, [AI_BULLET_X]  # Your bullet
		mov %1, [AI_BULLET_Y]
		add %0, FIELD_OFFSET
		add %1, FIELD_OFFSET
		arsh %0, FIT_SCREEN_SHIFT_AMMOUNT
		arsh %1, FIT_SCREEN_SHIFT_AMMOUNT
		mov %0, %2
		sub %0, DEBUG_BULLET_SIZE
		add %2, DEBUG_BULLET_SIZE
		mov %1, %3
		sub %1, DEBUG_BULLET_SIZE
		add %3, DEBUG_BULLET_SIZE
		mov %4, 6
		call drawSquare
	mainDebugNoDrawAIBullet:

	mov %0, 0xffff # DRAW
	mov [VGA], %0
	mov [VGA], %0
	
	pop %4
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
	
	mov FP, 0xd0
	
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

	push %0
	push %1
	push %2
	push %3
	push %4
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
	pop %4
	pop %3
	pop %2
	pop %1
	pop %0
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
	j first

	second:
	mov %9, sine_lut
	mov %8, %10
	rsh %8, 7		# shift down to angle
	and %8, 0x7F	# mask angle
	mov %7, 0x7F	# load max
	sub %7, %8		# max - angle
	add %9, %7		# get offset into lookup table
	mov %0, [%9]	# addr
	mov %9, sine_lut
	sub %7, 1		# subtract 1 from (max - angle)
	and %7, 0x7F	# mask to roll around 127
	add %9, %7		# get offset into lookup table
	mov %7, [%9]	# addr-1
	# multiply
	and %10, 0x7F	# fraction
	lsh %10, 7		# put fraction bits right below the radix
	fmul %7, %10	# fmul fraction and (addr-1)
	mov %9, 0x40	# make 1.0
	lsh %9, 8		# still making 1.0
	sub %9, %10		# 1 - fraction
	fmul %0, %9		# fmul 1.0 - frac and addr
	add %0, %7		# add the two fmul results together
	j sinend

	third:
	mov %9, sine_lut
	mov %8, %10
	rsh %8, 7
	and %8, 0x7F	# mask angle
	add %9, %8		# get offset
	mov %0, [%9]	# addr
	mov %9, sine_lut
	je %8, 127, skipadd3rd	# edge case
	add %8, 1
	and %8, 0x7F
	skipadd3rd:
	add %9, %8		# get offset
	mov %7, [%9]	# addr+1
	# multiply
	and %10, 0x7F	# fraction
	lsh %10, 7		# put up next to radix
	fmul %7, %10	# frac times addr+1
	mov %9, 0x40	# 1.0
	lsh %9, 8		# 1.0
	sub %9, %10		# 1.0 - fraction
	fmul %0, %9		# addr * (1.0 - frac)
	add %0, %7		# add them
	not %0, %0		# negate, two's comliment style
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
	mov %9, sine_lut
	sub %7, 1
	and %7, 0x7F
	add %9, %7
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
	not %0, %0		# negate, two's comliment style
	add %0, 1
	j sinend

	first:
	mov %9, sine_lut
	mov %8, %10
	rsh %8, 7
	and %8, 0x7F
	add %9, %8
	mov %0, [%9]	# addr
	mov %9, sine_lut
	je %8, 127, skipadd1st	# edge case
	add %8, 1
	and %8, 0x7F
	skipadd1st:
	add %9, %8
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

	sinend:

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
	mov %0, 1	# fill matrix. Odd offsets are the flag bits for fmul
	mov [rotation_matrix_x], %0		# 1
	mov [rotation_matrix_x+9], %0	# 1
	mov [rotation_matrix_x+11], %0	# 1
	mov [rotation_matrix_x+15], %0	# 1
	mov [rotation_matrix_x+17], %0	# 1
	mov %0, 0
	mov [rotation_matrix_x+1], %0	# 0
	mov [rotation_matrix_x+3], %0	# 0
	mov [rotation_matrix_x+5], %0	# 0
	mov [rotation_matrix_x+7], %0	# 0
	mov [rotation_matrix_x+13], %0	# 0
	mov [rotation_matrix_x+2], %0	# 0
	mov [rotation_matrix_x+4], %0	# 0
	mov [rotation_matrix_x+6], %0	# 0
	mov [rotation_matrix_x+12], %0	# 0
	mov [rotation_matrix_x+8], %6	# cos (xtheta)
	not %0, %1		# negate, two's comliment style
	add %0, 1
	mov [rotation_matrix_x+10], %0	# -sin (xtheta)
	mov [rotation_matrix_x+14], %1	# sin (xtheta)
	mov [rotation_matrix_x+16], %6	# cos (xtheta)

	# generate rotation matrix y
	mov %0, %9	# generate and save cos
	call cos
	mov %6, %0
	mov %0, %9	# generate and save sin
	call sin
	mov %1, %0
	mov %0, 0
	mov [rotation_matrix_y+3], %0	# 0
	mov [rotation_matrix_y+7], %0	# 0
	mov [rotation_matrix_y+9], %0	# 0
	mov [rotation_matrix_y+11], %0	# 0
	mov [rotation_matrix_y+15], %0	# 0
	mov [rotation_matrix_y+2], %0	# 0
	mov [rotation_matrix_y+6], %0	# 0
	mov [rotation_matrix_y+10], %0	# 0
	mov [rotation_matrix_y+14], %0	# 0
	mov [rotation_matrix_y], %6		# cos (ytheta)
	mov [rotation_matrix_y+4], %1	# sin (ytheta)
	mov %0, 1
	mov [rotation_matrix_y+1], %0	# 1
	mov [rotation_matrix_y+5], %0	# 1
	mov [rotation_matrix_y+13], %0	# 1
	mov [rotation_matrix_y+17], %0	# 1
	mov [rotation_matrix_y+8], %0	# 1
	not %0, %1		# negate, two's comliment style
	add %0, 1
	mov [rotation_matrix_y+12], %0	# -sin (xtheta)
	mov [rotation_matrix_y+16], %6	# cos (xtheta)

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
		incr %7
		mov %8, [%0]
		je %8, 1, matmulfmul
		# multiply them
			mul %3, %4
			# store in accumulator
			add %5, %LOW
			j matmuldonemul

			matmulfmul:
			fmul %3, %4
			# store in accumulator
			add %5, %3
		matmuldonemul:
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
	cmp %7, 18
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
	mov FP, 0xbbaa
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
			mov FP, 0xfbfb
			ret
		basecase1fail:
		
		mov eax, zone1
		or eax, zone2
		or eax, zone3
		
		jne eax, 0, basecase2fail
			mov FP, 0xfbfb
			call rasterize
			or %1, %1 #mov FP, 0xdddd
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
				
				mov eax, SP
				call clip
				
				#and %1, %1 ########## test code
				add SP, 7
				mov eax, SP
				call clip
				
				#and %1, %1 ########## test code
				add SP, 7
				mov eax, SP
				call clip
				
				#and %1, %1 ########## test code
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
			mov FP, 0xacac
			mov eax, ecx
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
	#mov FP, 0xabfa
	and %1, %1
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

### Z CLIP
###
### Expects a pointer to a triangle (1 color, 3 sets of xyz in that order) in %0
###
###
zclip:

	mov eax, %0
	add eax, 4
	mov ebx, [eax]
	jge ebx, 0, safepoint1
		ret
	safepoint1:
	add eax, 3
	mov ebx, [eax]
	jge ebx, 0, safepoint2
		ret
	safepoint2:
	
	add eax, 3
	mov ebx, [eax]
	jge ebx, 0, safepoint3
		ret
	safepoint3:
	
	###Triangle is entirely in positive z. Safe to draw.
	mov eax, %0
	call perspectivetransform

ret
###
###
### END Z CLIP
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

### DRAW TRIANGLES
###
### Expects a pointer to a triangle list in %6
###
###
drawtriangles:

	push %0
	push %1
	push %2
	push %3
	push %4
	push %5
	push %6
	push %7
	push %8
	push %9
	push %10
	push FP

	mov %0, %6
	mov %1, [%6] #%1 is size in triangle count.
	incr %0
	mov %2, 1 #%2 is loop counter.
	
	drawtriangleloop:
	
	call zclip
	incr %2
	jg %2, %1, drawtrianglecleanup
	add %0, 10
	
	j drawtriangleloop
	
	drawtrianglecleanup:

	pop FP
	pop %10
	pop %9
	pop %8
	pop %7
	pop %6
	pop %5
	pop %4
	pop %3
	pop %2
	pop %1
	pop %0
	
ret
###
###
### END DRAW TRIANGLES
###
###

.data
PLAYER_X:
20

PLAYER_Y:
20

PLAYER_START_X:
-1000

PLAYER_START_Y:
-1000

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
1000

AI_START_Y:
1000

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
26
# Face 0
1 #color
-50 #-
0
-80
-84 #-
-70
-130
85 #-
-70
-130
1 #color
-50 #-
0
-80
85 #-
-70
-130
50 #-
0
-80
# Face 1
2 #color
85 #-
-70
-130
-84 #-
-70
-130
-85 #-
-70
114
2 #color
85 #-
-70
-130
-85 #-
-70
114
84 #-
-70
114
# Face 2
1 #color
-84 #-
-70
-130
-50 #-
0
-80
-50 #-
0
64
1 #color
-84 #-
-70
-130
-50 #-
0
64
-85 #-
-70
114
# Face 3
2 #color
50 #-
0
-80
85 #-
-70
-130
84 #-
-70
114
2 #color
50 #-
0
-80
84 #-
-70
114
50 #-
0
64
# Face 4
3 #color
84 #-
-70
114
-85 #-
-70
114
-50 #-
0
64
3 #color
84 #-
-70
114
-50 #-
0
64
50 #-
0
64
# Face 5
4 #color
25 #-
-120
-44
39 #-
-70
-64
-39 #-
-70
-64
4 #color
25 #-
-120
-44
-39 #-
-70
-64
-25 #-
-120
-44
# Face 6
3 #color
25 #-
-120
-44
-25 #-
-120
-44
-25 #-
-120
28
3 #color
25 #-
-120
-44
-25 #-
-120
28
25 #-
-120
28
# Face 7
4 #color
-25 #-
-120
-44
-39 #-
-70
-64
-39 #-
-70
48
4 #color
-25 #-
-120
-44
-39 #-
-70
48
-25 #-
-120
28
# Face 8
1 #color
39 #-
-70
-64
25 #-
-120
-44
25 #-
-120
28
1 #color
39 #-
-70
-64
25 #-
-120
28
39 #-
-70
48
# Face 9
1 #color
25 #-
-120
28
-25 #-
-120
28
-39 #-
-70
48
1 #color
25 #-
-120
28
-39 #-
-70
48
39 #-
-70
48
# Face 10
1 #color
0 #-
-110
28
-14 #-
-96
28
-14 #-
-96
114
1 #color
0 #-
-110
28
-14 #-
-96
114
0 #-
-110
114
# Face 11
1 #color
0 #-
-110
28
14 #-
-96
28
14 #-
-96
114
1 #color
0 #-
-110
28
14 #-
-96
114
0 #-
-110
114
# Face 12
1 #color
-14 #-
-96
28
14 #-
-96
28
14 #-
-96
114
1 #color
-14 #-
-96
28
14 #-
-96
114
-14 #-
-96
114

bullet_model:
12
# Face 0
1 #color
1 #-
-49
3
-1 #-
-49
3
-1 #-
-49
-3
1 #color
1 #-
-49
3
-1 #-
-49
-3
1 #-
-49
-3
# Face 1
2 #color
1 #-
-51
3
1 #-
-51
-3
-1 #-
-51
-3
2 #color
1 #-
-51
3
-1 #-
-51
-3
-1 #-
-51
3
# Face 2
1 #color
1 #-
-49
3
1 #-
-49
-3
1 #-
-51
-3
1 #color
1 #-
-49
3
1 #-
-51
-3
1 #-
-51
3
# Face 3
2 #color
1 #-
-49
-3
-1 #-
-49
-3
-1 #-
-51
-3
2 #color
1 #-
-49
-3
-1 #-
-51
-3
1 #-
-51
-3
# Face 4
1 #color
-1 #-
-49
-3
-1 #-
-49
3
-1 #-
-51
3
1 #color
-1 #-
-49
-3
-1 #-
-51
3
-1 #-
-51
-3
# Face 5
2 #color
-1 #-
-49
3
1 #-
-49
3
1 #-
-51
3
2 #color
-1 #-
-49
3
1 #-
-51
3
-1 #-
-51
3

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