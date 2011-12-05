#!/usr/bin/env python
import sys

def is_binary(s):
    try:
        int(s, 2)
        return True
    except:
        return False

def is_hex(s):
    try:
        int(s, 16)
        return True
    except:
        return False

def two_to_the(x):
	return 2**x

def main():
	# if binary, convert to int
	if is_binary(sys.argv[1]):
		pw = 0
		y = 0
		numstr = (bin(int(sys.argv[1], 2))[2:]).zfill(16)
		for char in numstr:
			if char == '1':
				y += (1 / float(two_to_the(pw)))
			else:
				pass
			pw += 1
		print y

	elif is_hex(sys.argv[1]):
		pw = 0
		y = 0
		numstr = (bin(int(sys.argv[1], 16))[2:]).zfill(16)
		for char in numstr:
			if char == '1':
				y += (1 / float(two_to_the(pw)))
			else:
				pass
			pw += 1
		print y

	# if decimal or hex convert to binary
	else:
		y = float(sys.argv[1])
		for j in map(two_to_the, range(0, 15)):
			if (y - (1/float(j))) >= 0:
				y -= 1 / float(j)
				sys.stdout.write("1")
			else:
				sys.stdout.write("0")
		sys.stdout.write("\n")

if __name__ == '__main__':
	main()