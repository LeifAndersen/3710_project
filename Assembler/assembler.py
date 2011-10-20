import sys
from collections import deque

MEM_START = 0
MEM_INCR = 1

# Lists of instruction ops categorized by type (types unique to assembler)
I_CAPABLE = ["ADD", "SUB", "AND", "OR", "XOR", "NOT", "LSH", "RSH", "ARSH", "MUL", "FMUL", "CMP"]
SPECIAL_14_BIT = ["CALL", "RET"]

# Dictionary of instructions and their opcodes
OP_CODES = {"ADD": 2, "SUB": 3, "AND": 6, "OR": 7, "XOR": 8, "NOT": 9, "LSH": 10, "RSH": 11, "ARSH": 12, "FMUL": 13, "FMUL": 14, "MOVR": 15, "CMP": 4, "CMPR": 5, "MOVMR": 2, "MOVRM": 3, "CALL": 4, "MOVMRI": 5, "MOVRMI": 6, "RET": 7, "JL": 8, "JLE": 9, "JNE": 10, "JE": 11, "POP": 12, "PUSH": 13, "PUSHI": 14, "INCR": 60, "DECR": 61}

# get the class of parse that should be performed
def get_instruction_type(OP):
	if OP in I_CAPABLE:
		return "I-Capable"
	elif OP in SPECIAL_14_BIT:
		return "14-Bit Immediate"
	else:
		return OP

# error reporting for bad instructions
def explode_bomb(line_num):
	print "Bad instruction on line: " + str(line)
	exit(1)

# error reporting for mismatched parens
def delim_mismatch(line_num):
	print "Delimiter mismatch on line: " + str(line)
	exit(1)

# truncates number to the bottom 'bits' bits.
def truncate_bits(num, bits):
	return num % pow(2, bits)

# takes tokens of R-Type instruction and encodes to a string of the hex
def encode_R_to_R_instruction(tokens, upper_op_code):
	return str(hex((upper_op_code << 12) + (int(tokens[2][1:-1]) << 8) + (OP_CODES[tokens[0]] << 4) + int(tokens[1][1:-1])))

# takes tokens of I-Type instruction and encodes to a string of the hex
def encode_Imm_to_R_instruction(tokens):
	immediate = 0
	if check_for_hex(tokens[1]):
		immediate = int(tokens[1], 16)
	else:
		immediate = int(tokens[1])
	return  str(hex((OP_CODES[tokens[0]] << 12) + (int(tokens[2][1:-1]) << 8) + truncate(immediate, 8)))

# takes tokens of Special I-Type instruction and encodes to a string of the hex
def encode_14_Bit_Imm_instruction(tokens):
	immediate = 0
	if check_for_hex(tokens[1]):
		immediate = int(tokens[1], 16)
	else:
		immediate = int(tokens[1])
	return  str(hex((OP_CODES[tokens[0]] << 14) + truncate(immediate, 14)))

def check_for_hex(string):
	if string[1] == "x":
		return True
	else:
		return False

def verify_token_count(line_num, tokens, count):
	if len(tokens) < count or (len(tokens) > count and tokens[count][0] != '#'):
		print "Invalid instruction on line: " + str(line)
		exit(1)

def parse(infile_str, outfile_str):
	labels = {}
	infile = open(infile_str, 'r')
	instruction_queue_first_pass = deque()

	# Parse
	f.seek(0)
	i = MEM_START
	for line in infile:
		# we also need to remove the commas
		tokens = line.split()
		if len(tokens) == 0 or tokens[0][0] == '#':
			# empty lines, comments, and labels
			continue

		if tokens[0][-1] == ":":
			# Label, push to instruction queue
			instruction_queue_first_pass.enqueu(tokens[0])

		instruction_type = get_instruction_type(tokens[0])

		# for each instruction, get the opcode using OP_CODES[tokens[0]]

		if instruction_type == "I-Capable":
			if tokens[0] == "NOT":
				verify_token_count(i - MEM_START, tokens, 2)
			else:
				verify_token_count(i - MEM_START, tokens, 3)
			if tokens[1][0] == "$":
				# push this
				encode_R_to_R_instruction(tokens, 0)
			else:
				# push this
				encode_Imm_to_R_instruction(tokens)

		elif instruction_type == "14-Bit Immediate":
			# push this
			encode_14_Bit_Imm_instruction(tokens)

		elif instruction_type == "INCR" or instruction_type == "DECR":
			# encode by hand
			# push 0x30000 + (opcode << 12) + (R << 8) + 0

		elif instruction_type == "POP" or instruction_type == "PUSH":
			# encode by hand
			# push (opcode << 14) + (R << 10) + 0

		elif instruction_type == "PUSHI":
			# encode by hand
			# push (opcode << 14) + truncate(tokens[1], 14)

		elif instruction_type == "MOV":
			if tokens[1][0] == '(' and tokens[2][0] == '(':
				explode_bomb(i - MEM_START)
			if tokens[1][0] == '(':
				if tokens[1][-1] != ')':
					delim_mismatch(i - MEM_START)
				else:
					if tokens[1][1] == "$":	# MOV ($R), $R
						# MOVMR
						# push 0x1000 + (tokens[2] << 8) + (opcode << 4) + tokens[1]
					else:					# MOV (Imm), $R
						# psuedoisntruction becomes
						#     MOVMRI Imm
						#     MOVR $MR, $R
						# push 0x14000 + truncate(tokens[1][1:len(tokens[1]) - 1], 14)
						# push 0x1000 + (tokens[2] << 8) + (opcode << 4) + tokens[1]

			elif tokens[2][0] == '(':
				if tokens[2][-1] != ')':
					delim_mismatch(i - MEM_START)
				else:
					if tokens[1][1] == "$":	# MOV $R, ($R)
						# MOVRM
						# push 0x1000 + (tokens[1] << 8) + (opcode << 4) + tokens[2]
					else:					# MOV $R, (Imm)
						# psuedoisntruction becomes
						#     MOVR $R, $MR
						#     MOVRMI Imm
						# push 0x1000 + (tokens[1] << 8) + (opcode << 4) + tokens[2]
						# push 0x18000 + truncate(tokens[1][1:len(tokens[1]) - 1], 14)
			else: # Other MOV: MOV $R, $R and MOV Imm, $R
				if tokens[1][0] == "$":
					# push this
					encode_R_to_R_instruction(tokens, 1)
				else:
					# push this
					encode_Imm_to_R_instruction(tokens)

		elif instruction_type == "JE" or instruction_type == "JNE" or instruction_type == "JLE" or instruction_type == "JL":
			# push jumps directly, don't encode on first pass

		else:
			# bad instruction, explode
			explode_bomb(i - MEM_START)

		i += MEM_INCR

	# Get labels (must be done after first pass to allow for psuedo instructions to expand)
	i = MEM_START
	instruction_queue_second_pass = deque()
	for instruction in instruction_queue_first_pass:
		# when finding labels, we need to remove them from the code so we don't
		# have gaps in our addressing
		tokens = instruction.split()
		if len(tokens) == 0 or tokens[0][0] == '#':
			continue

		# Iterate through whole deque once, removing labels and saving the address
		# of the next instruction as their value.  Enqueue only the instructions
		# into second pass deque
		if tokens[-1] = ':':
			label = tokens[0][0:-2]
			labels[label] = i
		else:
			# push instruction to second pass deque
			i += MEM_INCR

	for instruction in instruction_queue_second_pass:
		tokens = instruction.split()
		# write each instruction to the instruction stream replacing labels as you
		# go.
		# call encode_14_Bit_Imm_instruction() on jumps (lines with more than one token)
		if len(tokes) > 1
			# encode and save to instruction stream with label address


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

