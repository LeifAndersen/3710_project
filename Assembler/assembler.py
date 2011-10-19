import sys

MEM_START = 0
MEM_INCR = 1

def explode_bomb(line_num):
	pass
def parse_normal_instruction()
def parse_immediate_instruction()

def verify_token_count(line, tokens, count):
	if len(tokens) < count or (len(tokens) > count and tokens[count][0] != '#')
		print "Invalid instruction on line: " + str(line)
		exit(1)

def parse(infile_str, outfile_str): labels = {}
	infile = open(infile_str, 'r')

	# Get label
	i = MEM_START
	for line in infile:
		tokens = line.split()
		if len(tokens) == 0 or tokens[0][0] == '#':
			continue
		
		if tokens[len(tokens) - 1] = ':':
			label_len = len(tokens[0]) - 1
			label = tokens[0][label_len]
			labels[label] = i

		i += MEM_INCR

	# Parse
	f.seek(0)
	i = MEM_START
	for line in infile:
		tokens = line.split()
		if len(tokens) == 0 or tokens[0][0] == '#':
			continue
		
		if tokens[0] == "ADD":
			verify_token_count(tokens, i, 3)
			if tokens[1][0] == '$':
				parse_normal_instruction()
			else
				parse_immediate_instruction()
		elif tokens[0] == "SUB":
			verify_token_count(tokens, i, 3)
			if tokens[1][0] == '$':
				parse_normal_instruction()
			else
				parse_immediate_instruction()
		elif tokens[0] == "AND":
			verify_token_count(tokens, i, 3)
			if tokens[1][0] == '$':
				parse_normal_instruction()
			else
				parse_immediate_instruction()
		elif tokens[0] == "OR":
			verify_token_count(tokens, i, 3)
			if tokens[1][0] == '$':
				parse_normal_instruction()
			else
				parse_immediate_instruction()
		elif tokens[0] == "XOR":
			verify_token_count(tokens, i, 3)
			if tokens[1][0] == '$':
				parse_normal_instruction()
			else
				parse_immediate_instruction()
		elif tokens[0] == "NOT":
			verify_token_count(tokens, i, 2)
		elif tokens[0] == "LSH":
			verify_token_count(tokens, i, 3)
			if tokens[1][0] == '$':
				parse_normal_instruction()
			else
				parse_immediate_instruction()
		elif tokens[0] == "RSH":
			verify_token_count(tokens, i, 3)
			if tokens[1][0] == '$':
				parse_normal_instruction()
			else
				parse_immediate_instruction()
		elif tokens[0] == "ARSH":
			verify_token_count(tokens, i, 3)
			if tokens[1][0] == '$':
				parse_normal_instruction()
			else
				parse_immediate_instruction()
		elif tokens[0] == "MUL":
			verify_token_count(tokens, i, 3)
			if tokens[1][0] == '$':
				parse_normal_instruction()
			else
				parse_immediate_instruction()
		elif tokens[0] == "FMUL":
			verify_token_count(tokens, i, 3)
			if tokens[1][0] == '$':
				parse_normal_instruction()
			else
				parse_immediate_instruction()
		elif tokens[0] == "MOV":
			if tokens[1][0] == '(' and tokens[2][0] == '(':
				explode_bomb(i)
			if tokens[1][0] == '(':
				if tokens[1][len(tokens[1])-1] != ')':
					explode_bomb(i)
				number = int(tokens[1][1:-1])
			elif tokens[2][0] == '(':
				if tokens[2][len(tokens[2])-1] != ')':
					explode_bomb(i)
				number = int(tokens[1][1:-1])
			else
							

		elif tokens[0] == "CMP":
			verify_token_count(tokens, i, 3)
		elif tokens[0] == "MOVMR":
			verify_token_count(tokens, i, 3)
		elif tokens[0] == "MOVRM":
			verify_token_count(tokens, i, 3)
		elif tokens[0] == "CALL":
			verify_token_count(tokens, i, 2)
		elif tokens[0] == "RET":
			verify_token_count(tokens, i, 1)
		elif tokens[0] == "JL":
			verify_token_count(tokens, i, 2)
		elif tokens[0] == "JLE":
			verify_token_count(tokens, i, 2)
		elif tokens[0] == "JNE":
			verify_token_count(tokens, i, 2)
		elif tokens[0] == "JE":
			verify_token_count(tokens, i, 2)
		elif tokens[0] == "POP":
			verify_token_count(tokens, i, 2)
		elif tokens[0] == "PUSH":
			verify_token_count(tokens, i, 2)
		elif tokens[0] == "INCR":
			verify_token_count(tokens, i, 2)
		elif tokens[0] == "DECR":
			verify_token_count(tokens, i, 2)
		else:

		i += MEM_INCR

	# Write the data
	outfile = open(outfile_str, 'w')
	infile.close()
	outfile.close()


def main():
	filestring = sys.argv[1]
	outfile = filestring + ".o"
	parse(filestring, outfile)

if __name__ == '__main__':
	main()
	
