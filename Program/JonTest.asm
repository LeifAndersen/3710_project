`define LCD_MEM 0

init:
	call main
	j main

skipMe:
	j errorEnd

back:
	mov [LCD_MEM] 0x1984
	mov %2, -1
	jae %2, 1, realend
	j errorEnd

main:
	MOV %1, 5
	jl 1, %1, back

realend:
	ret

errorEnd:
	mov [LCD_MEM], 0xdead
	j errorEnd
