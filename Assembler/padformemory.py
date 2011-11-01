#!/usr/bin/env python
# usage
#	./pad.py AssembledFile NumOfAddresses
import sys
from os.path import splitext

def pad(infile_str, outfile_str, size):
	infile = open(infile_str, 'r')
	outfile = open(outfile_str, 'w')
	for line in infile:
		if len(line) > 0:
			outfile.write(line)
			size -= 1

	for i in range(size):
		outfile.write("0\n")

	infile.close()
	outfile.close()

def main():
	filestring = sys.argv[1]
	filenameparts = splitext(filestring)
	outfile = filenameparts[0] + ".mem"
	size = int(sys.argv[2])
	pad(filestring, outfile, size)

if __name__ == '__main__':
	main()
