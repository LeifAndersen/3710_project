#!/usr/bin/python

import sys
import math

size = 128

def two_to_the(x):
	return 2**x

def main():
	for x in range(0, size + 1):
		y = math.sin((math.pi * x )/ float(2 * size))
		sys.stdout.write("00")
		for j in map(two_to_the, range(1, 14)):
			if (y - (1 / float(j))) > 0:
				y -= 1 / float(j)
				sys.stdout.write("1")
			else:
				sys.stdout.write("0")
		sys.stdout.write("\n")

if __name__ == '__main__':
	main()