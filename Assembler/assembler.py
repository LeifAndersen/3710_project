#!/usr/bin/env python
import sys
from os.path import splitext
from collections import deque

MEM_START = 0
MEM_INCR = 1

# Lists of instruction ops categorized by type (types unique to assembler)
I_CAPABLE = ["ADD", "SUB", "AND", "OR", "XOR", "NOT", "LSH", "RSH", "ARSH", "MUL", "FMUL", "CMP"]
SPECIAL_14_BIT = ["CALL", "RET", "PUSHI"]

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

# get the class of parse that should be performed
def trim_reg(reg_str):
	if reg_str[0] == "[":
		return truncate_bits(int(reg_str[2:-1]), 4)
	else:
		return truncate_bits(int(reg_str[1:]), 4)

# error reporting for bad instructions
def explode_bomb(line_num, line):
	print "Bad instruction on line " + str(line_num) + ": \"" + line.strip() + "\""
	exit(1)

# error reporting for mismatched parens
def delim_mismatch(line_num, line):
	print "Delimiter mismatch on line " + str(line_num) + ": \"" + line.strip() + "\""
	exit(1)

# truncates number to the bottom 'bits' bits.
def truncate_bits(num, bits):
	return num % pow(2, bits)

def check_for_hex(string):
	if len(string) > 1 and string[1] == "x":
		return True
	else:
		return False

# takes tokens of R-Type instruction and encodes to a string of the hex
def encode_R_to_R_instruction(tokens, upper_op_code):
	return str(hex((upper_op_code << 12) + (trim_reg(tokens[1]) << 8) + (OP_CODES[tokens[0]] << 4) + trim_reg(tokens[2])))

# takes tokens of I-Type instruction and encodes to a string of the hex
def encode_Imm_to_R_instruction(tokens):
	immediate = 0
	if check_for_hex(tokens[2]):
		immediate = int(tokens[2], 16)
	else:
		immediate = int(tokens[2])
	return  str(hex((OP_CODES[tokens[0]] << 12) + (trim_reg(tokens[1]) << 8) + truncate_bits(immediate, 8)))

# takes tokens of Special I-Type instruction and encodes to a string of the hex
def encode_14_Bit_Imm_instruction(tokens):
	immediate = 0
	if check_for_hex(tokens[1]):
		immediate = int(tokens[1], 16)
	else:
		immediate = int(tokens[1])
	return  str(hex((OP_CODES[tokens[0]] << 14) + truncate_bits(immediate, 14)))

def verify_token_count(line_num, tokens, count):
	if len(tokens) < count or (len(tokens) > count and tokens[count][0] != '#'):
		print "Invalid instruction on line: " + str(line_num)
		exit(1)

def parse(infile_str, outfile_str):
	labels = {}
	infile = open(infile_str, 'r')
	first_pass_queue = deque()

	# Parse
	infile.seek(0)
	line_num = 0
	for line in infile:
		line_num += 1

		tokens = line.split()
		if len(tokens) == 0 or tokens[0][0] == '#':
			# empty lines, comments, and labels
			continue

		if tokens[0][-1] == ":":
			# Label, push to instruction queue
			first_pass_queue.append(tokens[0])
			continue

		if tokens[0] == "JE" or tokens[0] == "JNE" or tokens[0] == "JLE" or tokens[0] == "JL":
			# push jumps directly, don't encode on first pass (only first two tokens)
			first_pass_queue.append(tokens[0] + " " + tokens[1])
			# nop after jump
			first_pass_queue.append(str(hex((OP_CODES["AND"] << 4))))
			continue

		instruction_type = get_instruction_type(tokens[0])

		# enforce and remove comma after second of three tokens
		if len(tokens) >= 3:
			if tokens[1][-1] == ",":
				tokens[1] = tokens[1][:-1]
			else:
				explode_bomb(line_num, line)

		# encode instructions specifically for each op type
		if instruction_type == "I-Capable":
			verify_token_count(line_num, tokens, 3)
			if tokens[1][0] == "$" and tokens[2][0] == "$":
				# push this
				first_pass_queue.append(encode_R_to_R_instruction(tokens, 0))
			elif tokens [1][0] == "$" and tokens[2][0] != "$":
				# push this
				first_pass_queue.append(encode_Imm_to_R_instruction(tokens))
			elif tokens[0] == "CMP" and tokens [1][0] != "$" and tokens[2][0] == "$":
				# push this
				first_pass_queue.append(encode_Imm_to_R_instruction(["CMPR", tokens[2], tokens[1]]))
			else:
				explode_bomb(line_num, line)

		elif instruction_type == "14-Bit Immediate":
			# push this
			first_pass_queue.append(encode_14_Bit_Imm_instruction(tokens))

		elif instruction_type == "INCR" or instruction_type == "DECR":
			# encode by hand
			first_pass_queue.append(str(hex((OP_CODES[tokens[0]] << 12) + (trim_reg(tokens[1]) << 8) + 0)))

		elif instruction_type == "POP" or instruction_type == "PUSH":
			# encode by hand
			first_pass_queue.append(str(hex((OP_CODES[tokens[0]] << 14) + (trim_reg(tokens[1]) << 10) + 0)))

		elif instruction_type == "MOV":
			if tokens[1][0] == '[' and tokens[2][0] == '[':
				explode_bomb(line_num, line)
			if tokens[2][0] == '[':
				if tokens[2][-1] != ']':
					delim_mismatch(line_num, line)
				else:
					if tokens[2][1] == "$":	# MOV $R, ($R)
						# MOVMR
						first_pass_queue.append(str(hex(0x1000 + (trim_reg(tokens[1]) << 8) + (OP_CODES["MOVMR"] << 4) + trim_reg(tokens[2]))))
					else:					# MOV $R, (Imm)
						# psuedoinstruction becomes
						#     MOVMRI Imm
						#     MOVR $R, $MR
						first_pass_queue.append(encode_14_Bit_Imm_instruction(["MOVMRI", tokens[2][1:-1]]))
						first_pass_queue.append(str(hex((trim_reg(tokens[2]) << 8) + (OP_CODES["MOVR"] << 4) + 15)))
			elif tokens[1][0] == '[':
				if tokens[1][-1] != ']':
					delim_mismatch(line_num)
				else:
					if tokens[1][1] == "$":	# MOV ($R), $R
						# MOVRM
						first_pass_queue.append(str(hex(0x1000 + (trim_reg(tokens[2]) << 8) + (OP_CODES["MOVRM"] << 4) + trim_reg(tokens[1]))))
					else:					# MOV (Imm), $R
						# psuedoinstruction becomes
						#     MOVR $MR, $R
						#     MOVRMI Imm
						first_pass_queue.append(str(hex((15 << 8) + (OP_CODES["MOVR"] << 4) + trim_reg(tokens[2]))))
						first_pass_queue.append(encode_14_Bit_Imm_instruction(["MOVRMI", tokens[1][1:-1]]))
			else: # Other MOV: MOV $R, $R and MOV $R, Imm
				if tokens[1][0] == "$" and tokens[2][0] == "$":
					# push this
					tokens[0] = "MOVR"
					first_pass_queue.append(encode_R_to_R_instruction(tokens, 0))
				elif tokens [1][0] == "$" and tokens[2][0] != "$":
					# push this
					tokens[0] = "MOVR"
					first_pass_queue.append(encode_Imm_to_R_instruction(tokens))
				else:
					explode_bomb(line_num, line)

		else:
			# bad instruction, explode
			explode_bomb(line_num, line)

	# Get labels (must be done after first pass to allow for psuedo instructions to expand)
	address = MEM_START
	second_pass_queue = deque()
	for instruction in first_pass_queue:
		# when finding labels, we need to remove them from the code so we don't
		# have gaps in our addressing
		tokens = instruction.split()
		if len(tokens) == 0 or tokens[0][0] == '#':
			continue

		# Iterate through whole deque once, removing labels and saving the address
		# of the next instruction as their value.  Enqueue only the instructions
		# into second pass deque
		if tokens[0][-1] == ':':
			label = tokens[0][:-1]
			labels[label] = address
		else:
			# push instruction to second pass deque
			second_pass_queue.append(instruction);
			address += MEM_INCR

	# Output
	outfile = open(outfile_str, 'w')
	for instruction in second_pass_queue:
		tokens = instruction.split()
		# write each instruction to the instruction stream replacing labels as you
		# go.
		# call encode_14_Bit_Imm_instruction() on jumps (lines with more than one token)
		if len(tokens) > 1:
			# encode and save to instruction stream with label address
			outfile.write(encode_14_Bit_Imm_instruction([tokens[0], str(labels[tokens[1]])])[2:] + "\n")
		else:
			outfile.write(instruction[2:] + "\n")

	infile.close()
	outfile.close()

def main():
	filestring = sys.argv[1]
	filenameparts = splitext(filestring)
	outfile = filenameparts[0] + ".o"
	parse(filestring, outfile)

if __name__ == '__main__':
	main()
