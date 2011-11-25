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

def pad(infile_str, size, prefix):
	infile = open(infile_str, 'r')

	outfiles = []
	ramfile = open(prefix + "/../CPU/ram.mem", 'w')
	for i in range(0, int(size) / 1024):
		outfiles.append(open("init" + str(i) + ".txt", 'w'))

	sys.stdout.write("\n\t(1/1)    Padding: [  0%]")
	sys.stdout.flush()

	line_count = size
	line_num = 0

	outfile = outfiles[0]
	filepos = 0
	n = 0

	for line in infile:
		if filepos > 1023:
			filepos = 0
			n += 1
			outfile = outfiles[n]
		if len(line) > 0:
			outfile.write(line)
			ramfile.write(line.zfill(6))
			size -= 1
		line_num += 1
		filepos += 1
		print_percentage(100 * line_num/float(line_count))
		sys.stdout.flush()

	for i in range(size):
		if filepos > 1023:
			filepos = 0
			n += 1
			outfile = outfiles[n]
		outfile.write("0\n")
		ramfile.write("00000\n")
		line_num += 1
		filepos += 1
		print_percentage(100 * line_num/float(line_count))
		sys.stdout.flush()

	sys.stdout.write("\n")

	infile.close()
	ramfile.close()
	for i in range(0, int(size) / 1024):
		outfiles[i].close()

def main():
	filestring = sys.argv[1]
	filenameparts = splitext(filestring)
	size = int(sys.argv[2])
	pad(filestring, size)

if __name__ == '__main__':
	main()
