#!/usr/bin/env python
# usage
#	./pad.py AssembledFile NumOfAddresses
import sys
from os.path import splitext

def print_percentage(percentage):
	if percentage < 10:
		sys.stdout.write("\b\b\b")
	elif percentage >= 10 and  percentage < 100 :
		sys.stdout.write("\b\b\b\b")
	else:
		sys.stdout.write("\b\b\b\b\b")
	sys.stdout.write("%d%%]" % (percentage) )

def pad(infile_str, outfile_str, size):
	infile = open(infile_str, 'r')
	outfile = open(outfile_str, 'w')

	sys.stdout.write("\n(1/2)    Copying: [  0%]")
	sys.stdout.flush()

	line_count = len(infile.readlines())
	line_num = 0

	infile.seek(0)
	for line in infile:
		if len(line) > 0:
			outfile.write(line)
			size -= 1
		line_num += 1
		print_percentage(100 * line_num/float(line_count))
		sys.stdout.flush()

	sys.stdout.write("\n(2/2)    Padding: [  0%]")
	sys.stdout.flush()

	line_count = size
	line_num = 0

	for i in range(size):
		outfile.write("0\n")
		line_num += 1
		print_percentage(100 * line_num/float(line_count))
		sys.stdout.flush()

	sys.stdout.write("\n")

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
