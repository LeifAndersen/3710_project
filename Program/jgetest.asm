mov %1, 1

jge %1, 0, label

incr %1

label:
j label