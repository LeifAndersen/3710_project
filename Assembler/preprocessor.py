#!/usr/bin/env python

import sys
from os.path import splitext
from os.path import dirname

def parse(infile_name, outfile_name):
	infile = open(infile_name, 'r')
	outfile = open(outfile_name, 'w')

	tokens = {}
	
	print '.', 
	# Get the tokens
	i = 0
	for line in infile:
		line_tokens = line.split()
		if len(line_tokens) == 0:
			continue
		if line_tokens[0][0] == '`':
			if len(line_tokens) != 3:
				print "Incoredt preprocessor command on line " + str(i) + "."
			tokens[line_tokens[1]] = line_tokens[2]
		i+=1

	print '.', 
	# Kill the pre-processor commands
	infile.seek(0)	
	for line in infile:
		line_tokens = line.split()
		if len(line_tokens) == 0 or line_tokens[0][0] == '`':
			outfile.write('\n')
			continue

		line_out = ""
		for token in line_tokens:
			if token in tokens:
				line_out += tokens[token]
			elif token[-1] == ',' and token in tokens:
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
	print '.', 

def main():
	filestring = sys.argv[1]
	filenameparts = splitext(filestring)
	outfile = filenameparts[0] + ".pp"
	parse(filestring, outfile)

if __name__ == '__main__':
	main()
