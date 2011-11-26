mov %4, 4
mov %5, 5
mov %6, 6
mov [foo+4], %5
mov [foo+6], %6
mov %4, [foo+4]
mov %7, foo
.data
foo: