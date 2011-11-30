foo:
jg %0, %1, foo
cmp %1, %0
jle foo
je %2, %3, bar
cmp %2, %3
je bar
bar: