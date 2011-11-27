#!/usr/bin/python

import sys
import math

size = 128

def two_to_the(x):
	return 2**x

def main():
	sys.stdout.write("sine_lut:\n")
	for x in range(0, size):
		y = math.sin((math.pi * x )/ float(2 * size))
		sys.stdout.write("0b00")
		for j in map(two_to_the, range(1, 15)):
			if (y - (1 / float(j))) >= 0:
				y -= 1 / float(j)
				sys.stdout.write("1")
			else:
				sys.stdout.write("0")
		sys.stdout.write("\n")
		sys.stdout.write("0b0100000000000000\n")

	sys.stdout.write("\ndiv_lut:\n")
	sys.stdout.write("0b0000000000000000\n")
	sys.stdout.write("0b0100000000000000\n")
	for x in range(2, 120):
		y = 1/float(x)
		sys.stdout.write("0b00")
		for j in map(two_to_the, range(1, 15)):
			if (y - (1 / float(j))) >= 0:
				y -= 1 / float(j)
				sys.stdout.write("1")
			else:
				sys.stdout.write("0")
		sys.stdout.write("\n")

if __name__ == '__main__':
	main()