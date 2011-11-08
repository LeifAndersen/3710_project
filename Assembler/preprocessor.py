import sys
from os.path import splitext
from os.path import dirname

def parse(infile_name, outfile_name):
	infile = open(infile_name, 'r')
	outfile = open(outfile_name, 'w')

	tokens = {}
	
	# Get the tokens
	i = 0
	for line in infile:
		line_tokens = line.split()
		if len(line_tokens) == 0:
			continue
		if line_tokens[0] = '`':
			if len(line_tokens) != 3:
				print "Incoredt preprocessor command on line " + str(i) + "."
			tokens[tokens[1]] = tokens[2]
		i+=1

	# Kill the pre-processor commands
	infile.seek(0)	
	for line in infile:
		line_tokens = line.split()
		if len(line_tokens) == 0 or line_tokens[0] == '`':
			continue

		line_out = ""
		for token in line_tokens:
			if token in tokens:
				line_out += tokens[token]
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
