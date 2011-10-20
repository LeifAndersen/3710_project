import sys
from os.path import splitext

def convert(infile_str, outfile_str):
	infile = open(infile_str, 'r')
	outfile = open(outfile_str, 'w')
	for line in infile:
		binary = str(bin(int(line[:-1], 16)))
		if len(binary) <= 20:
			outfile.write(("0" * (20 - len(binary))) + binary[2:] + "\n")
		else:
			outfile.write(binary[2:] + "\n")

	infile.close()
	outfile.close()

def main():
	filestring = sys.argv[1]
	filenameparts = splitext(filestring)
	outfile = filenameparts[0] + ".b"
	convert(filestring, outfile)

if __name__ == '__main__':
	main()