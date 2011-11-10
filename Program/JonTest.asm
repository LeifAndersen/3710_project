`define LCD_MEM 0x8192

init:
	call main
	j init

skipMe:
	j errorEnd

back:
	mov %1, 0x1984
	mov [LCD_MEM], %1
	mov %2, -1
	jae %2, 1, realend
	j errorEnd

main:
	mov %1, 5
	jl 1, %1, back

realend:
	ret

errorEnd:
	mv %1, 0xdead
	mov [LCD_MEM], %1
	j errorEnd
