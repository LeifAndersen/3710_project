mov %1, 0

clearloop:
incr %1
jl %1, 160, clearloop

infinite:
j infinite