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

# Bootup and initialization Code
init:
	mov %SP, STACK_TOP
	mov %FP, %SP
# Begin der loop
	call main

# Main Loop
main:


.data
CUBE:
12
# Face 0 Bottum
1 #color
1 #- 
1
1
-1 #- 
1
1
-1 #- 
1
-1
1 #color
1 #- 
1
1
-1 #- 
1
-1
1 #- 
1
-1
# Face 1
2 #color
1 #- 
-1
1
1 #- 
-1
-1
-1 #- 
-1
-1
2 #color
1 #- 
-1
1
-1 #- 
-1
-1
-1 #- 
-1
1
# Face 2
3 #color
1 #- 
1
1
1 #- 
1
-1
1 #- 
-1
-1
3 #color
1 #- 
1
1
1 #- 
-1
-1
1 #- 
-1
1
# Face 3
4 #color
1 #- 
1
-1
-1 #- 
1
-1
-1 #- 
-1
-1
4 #color
1 #- 
1
-1
-1 #- 
-1
-1
1 #- 
-1
-1
# Face 4
5 #color
-1 #- 
1
-1
-1 #- 
1
1
-1 #- 
-1
1
5 #color
-1 #- 
1
-1
-1 #- 
-1
1
-1 #- 
-1
-1
# Face 5
6 #color
-1 #- 
1
1
1 #- 
1
1
1 #- 
-1
1
6 #color
-1 #- 
1
1
1 #- 
-1
1
-1 #- 
-1
1

