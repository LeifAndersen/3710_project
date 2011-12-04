mov %2, 0xffe0 #-32
mov %0, 0

jge %2, %0, wrong
mov %1, 1
wrong:

infinite:
j infinite