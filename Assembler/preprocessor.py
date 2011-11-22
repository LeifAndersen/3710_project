#!/usr/bin/env python

import sys
from os.path import splitext
from os.path import dirname

def print_percentage(percentage):
	if percentage < 10:
		sys.stdout.write("\b\b\b")
	elif percentage >= 10 and  percentage < 100 :
		sys.stdout.write("\b\b\b\b")
	else:
		sys.stdout.write("\b\b\b\b\b")
	sys.stdout.write("%d%%]" % (percentage) )

def parse(infile_name, outfile_name):
	infile = open(infile_name, 'r')
	outfile = open(outfile_name, 'w')

	tokens = {}

	sys.stdout.write("\n\t(1/2)    Finding: [  0%]")
	sys.stdout.flush()

	line_count = len(infile.readlines())

	# Get the tokens
	i = 0
	infile.seek(0)
	for line in infile:
		i+=1
		print_percentage(100 * i/float(line_count))
		sys.stdout.flush()

		line_tokens = line.split()
		if len(line_tokens) == 0:
			continue
		if line_tokens[0][0] == '`':
			if len(line_tokens) < 3 or line_tokens[2] == '#' or line_tokens[1] == '#':
				print "Incorrect preprocessor command on line " + str(i) + ": " + line.strip()
				exit(1)
			tokens[line_tokens[1]] = line_tokens[2]

	sys.stdout.write("\n\t(2/2)  Replacing: [  0%]")
	sys.stdout.flush()

	# Kill the pre-processor commands
	i = 0
	infile.seek(0)
	for line in infile:
		i+=1
		print_percentage(100 * i/float(line_count))
		sys.stdout.flush()

		line_tokens = line.split()
		if len(line_tokens) == 0 or line_tokens[0][0] == '`':
			outfile.write('\n')
			continue

		line_out = ""
		for token in line_tokens:
			if token in tokens:
				line_out += tokens[token]
			elif token[-1] == ',' and token[0:-1] in tokens:
				line_out += tokens[token[0:-1]] + ','
			elif token[0] == '[' and token[-1] == ']' and token[1:-1] in tokens:
				line_out += '[' + tokens[token[1:-1]] + ']'
			elif token[0] == '[' and token[-1] == ',' and token[-2] == ']' and token[1:-2] in tokens:
				line_out += '[' + tokens[token[1:-2]] + '],'
			else:
				line_out += token
			line_out += " "
		line_out += "\n"
		outfile.write(line_out)

	infile.close()
	outfile.close()

def main():
	filestring = sys.argv[1]
	filenameparts = splitext(filestring)
	outfile = filenameparts[0] + ".pp"
	parse(filestring, outfile)

if __name__ == '__main__':
	main()
