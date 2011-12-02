`define bar 512
`define %SP %13
`define LCD 16376

mov %SP, 0x2bff

mov %5, 1
push %5
pop %6
mov [bar], %6

forever:
	mov %4, 1
	mov [bar], %4
	mov %2, 15
	displayloop:
	call foo
	mov %0, [bar]
	mov [LCD], %0
	mov %0, 70
	call pause
	decr %2
	jne %2, 0, displayloop
j forever

foo:
	push %0
	push %5
	push %6
	
	mov %0, 0
	mov %5, [bar]
	incr %5
	mov %6, [bar]
	decr %6
	add %0, %6
	add %0, %5
	mov [bar], %0
	
	#mov %0, [bar]
	#incr %0
	#mov [bar], %0
	
	pop %6
	pop %5
	pop %0
	ret
	
# args go in %0 and are preserved
# arg is number of milliseconds to wait
pause:
	push %0
	push %1
	
	outer:
	mov %1, 10000
		inner:
		decr %1
		jne %1, 0, inner
	decr %0
	jne %0, 0, outer

	pop %1
	pop %0
	ret
	