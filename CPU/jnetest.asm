mov %1, 0

clearloop:
incr %1
jne %1, 160, clearloop

infinite:
j infinite