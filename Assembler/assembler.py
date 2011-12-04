#!/usr/bin/env python
import sys
import time
from os.path import splitext
from collections import deque


MEM_START = 0
MEM_INCR = 1

# Lists of instruction ops categorized by type (types unique to assembler)
I_CAPABLE = ["ADD", "SUB", "AND", "OR", "XOR", "NOT", "LSH", "RSH", "ARSH", "MUL", "FMUL"]
SPECIAL_14_BIT = ["RET", "PUSHI"]

# Dictionary of instructions and their opcodes
OP_CODES = {"ADD": 2, "SUB": 3, "AND": 6, "OR": 7, "XOR": 8, "NOT": 9, "LSH": 10, "RSH": 11, "ARSH": 12, "MUL": 13, "FMUL": 14, "MOVR": 15, "CMP": 4, "CMPR": 5, "MOVMR": 2, "MOVRM": 3, "CALL": 4, "MOVMRI": 5, "MOVRMI": 6, "RET": 7, "JL": 16, "JLE": 17, "JNE": 18, "JE": 19, "J": 20, "JBE": 21, "JB": 22, "POP": 12, "PUSH": 13, "PUSHI": 14, "INCR": 60, "DECR": 61}

# get the class of parse that should be performed
def get_instruction_type(OP):
	if OP in I_CAPABLE:
		return "I-Capable"
	elif OP in SPECIAL_14_BIT:
		return "14-Bit Immediate"
	else:
		return OP

def is_number(s):
    try:
        int(s, 10)
        return True
    except:
        pass
    try:
        int(s, 16)
        return True
    except:
    	pass
    try:
        int(s, 2)
        return True
    except:
        return False

def to_number(s):
    try:
        return int(s, 10)
    except:
        pass
    try:
        return int(s, 2)
    except:
    	pass
    return int(s, 16)


# get the class of parse that should be performed
def trim_reg(reg_str):
	if reg_str[0] == "[":
		return truncate_bits(int(reg_str[2:-1]), 4)
	else:
		return truncate_bits(int(reg_str[1:]), 4)

# error reporting for bad instructions
def explode_bomb(line_num, line):
	print "\nError: Invalid instruction on line " + str(line_num) + ": \"" + line.strip() + "\""
	exit(1)

def no_such_jump(line_num, line):
	jump = (line.split())[0].upper()
	print "\nError: Incorrect use of psuedo-jump on line " + str(line_num) + ": \"" + line.strip() + "\""
	print "       In order to use \"" + jump + "\", you must use the format: \"" + jump + " %R, %R, label\""
	exit(1)

def missing_comma(line_num, line):
	print "\nError: Missing comma on line " + str(line_num) + ": \"" + line.strip() + "\""
	exit(1)

def invalid_arg(line_num, line):
	print "\nError: Invalid argument on line " + str(line_num) + ": \"" + line.strip() + "\""
	exit(1)

def bad_data(line_num, line):
	print "\nError: Bad data in data section on line " + str(line_num) + ": \"" + line.strip() + "\""
	exit(1)

# error reporting for mismatched parens
def delim_mismatch(line_num, line):
	print "\nError: Delimiter mismatch on line " + str(line_num) + ": \"" + line.strip() + "\""
	exit(1)

def duplicate_label(tokens):
	print "\nError: Duplicate label \"" + tokens[0] + "\" on line " + tokens[1]
	exit(1)

def no_such_label(tokens):
	print "\nError: Reference to non-existent label \"" + tokens[1] + "\" on line " + tokens[2]
	exit(1)

def no_such_label2(tokens):
	print "\nError: Reference to non-existent label \"" + tokens[2] + "\" on line " + tokens[3]
	exit(1)

# truncates number to the bottom 'bits' bits.
def truncate_bits(num, bits):
	return num % 2**bits

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
	immediate = to_number(tokens[2])
	return  str(hex((OP_CODES[tokens[0]] << 12) + (trim_reg(tokens[1]) << 8) + truncate_bits(immediate, 8)))

# takes tokens of Special I-Type instruction and encodes to a string of the hex
def encode_14_Bit_Imm_instruction(tokens):
	if is_number(tokens[1]):
		immediate = to_number(tokens[1])
	else:
		print "bad immediate somewhere.  Not sure where, though...."
		exit(1)
	return  str(hex((OP_CODES[tokens[0]] << 14) + truncate_bits(immediate, 14)))

# takes tokens of Special I-Type instruction and encodes to a string of the hex
def encode_jumps(tokens):
	immediate = 0
	if check_for_hex(tokens[1]):
		immediate = int(tokens[1], 16)
	else:
		immediate = int(tokens[1])
	return  str(hex((OP_CODES[tokens[0]] << 13) + truncate_bits(immediate, 13)))

def verify_token_count(line_num, tokens, count):
	if len(tokens) < count or (len(tokens) > count and tokens[count][0] != '#'):
		print "Invalid instruction on line: " + str(line_num)
		exit(1)

def encode_cmps(tokens, line_num, line):
	if tokens[1][0] == "%" and tokens[2][0] == "%":
		# push this
		return encode_R_to_R_instruction(tokens, 0)
	elif tokens [1][0] == "%" and tokens[2][0] != "%":
		# push this
		return encode_Imm_to_R_instruction(["CMPR", tokens[1], tokens[2]])
	elif tokens [1][0] != "%" and tokens[2][0] == "%":
		# push this
		return encode_Imm_to_R_instruction(["CMP", tokens[2], tokens[1]])
	else:
		explode_bomb(line_num, line)

def print_percentage(percentage):
	if percentage < 10:
		sys.stdout.write("\b\b\b")
	elif percentage >= 10 and  percentage < 100 :
		sys.stdout.write("\b\b\b\b")
	else:
		sys.stdout.write("\b\b\b\b\b")
	sys.stdout.write("%d%%]" % (percentage) )

def parse(infile_str, outfile_str):
	isdata = 0
	labels = {}
	infile = open(infile_str, 'r')
	first_pass_queue = deque()

	# count lines in file
	total_instructions = len(infile.readlines())
	sys.stdout.write("\n\t(1/3)   Encoding: [  0%]")
	sys.stdout.flush()

	# Parse
	infile.seek(0)
	line_num = 0
	for line in infile:
		line_num += 1

		print_percentage(100 * line_num/float(total_instructions))
		sys.stdout.flush()

		tokens = line.split()
		if len(tokens) == 0 or tokens[0][0] == '#':
			# empty lines and comments
			continue

		# push labels and continue
		if tokens[0][-1] == ":":
			# Label, push to instruction queue
			first_pass_queue.append(tokens[0] + " " + str(line_num))
			continue

		if tokens[0] == ".data":
			# now entering data section, flip flag
			isdata = 1
			continue

		if isdata == 1:
			# push data directly
			if is_number(tokens[0]):
				first_pass_queue.append(hex(truncate_bits(to_number(tokens[0]), 18)))
			else:
				bad_data(line_num, line)

		else:
			# encode instructions
			# uppercase the instructions
			tokens[0] = tokens[0].upper()

			if tokens[0][0] == "J" or tokens[0] == "CALL":
				# normal jumps and call
				if len(tokens) == 2 or (len(tokens) > 2 and tokens[2][0] == "#"):
					# report bad use of psuedo-jumps
					if tokens[0] == "JG" or tokens[0] == "JGE" or tokens[0] == "JA" or tokens[0] == "JAE":
						no_such_jump(line_num, line)
					# filter out bad instructions that look like jumps
					try:
						OP_CODES[tokens[0]]
					except KeyError:
						explode_bomb(line_num, line)
					# push jumps and calls directly, don't encode on first pass (only first two tokens)
					first_pass_queue.append(tokens[0] + " " + tokens[1] + " " + str(line_num))
					# nop after jump
					first_pass_queue.append(str(hex(0)))
					continue
				# special Jon jumps
				elif len(tokens) >= 4:
					# remove commas
					if tokens[1][-1] == ",":
						tokens[1] = tokens[1][:-1]
					else:
						explode_bomb(line_num, line)
					if tokens[2][-1] == ",":
						tokens[2] = tokens[2][:-1]
					else:
						explode_bomb(line_num, line)
					# switch on jump type
					if tokens[0] == "JG":
						# CMPR
						# jmp
						# NOP
						first_pass_queue.append(encode_cmps(["CMP", tokens[2], tokens[1]], line_num, line))
						first_pass_queue.append("JL " + tokens[3] + " " + str(line_num))
					elif tokens[0] == "JGE":
						# CMPR
						# jmp
						# NOP
						first_pass_queue.append(encode_cmps(["CMP", tokens[2], tokens[1]], line_num, line))
						first_pass_queue.append("JLE " + tokens[3] + " " + str(line_num))
					elif tokens[0] == "JA":
						# CMPR
						# jmp
						# NOP
						first_pass_queue.append(encode_cmps(["CMP", tokens[2], tokens[1]], line_num, line))
						first_pass_queue.append("JB " + tokens[3] + " " + str(line_num))
					elif tokens[0] == "JAE":
						# CMPR
						# jmp
						# NOP
						first_pass_queue.append(encode_cmps(["CMP", tokens[2], tokens[1]], line_num, line))
						first_pass_queue.append("JBE " + tokens[3] + " " + str(line_num))
					elif tokens[0] == "JB":
						# CMPR
						# jmp
						# NOP
						first_pass_queue.append(encode_cmps(["CMP", tokens[1], tokens[2]], line_num, line))
						first_pass_queue.append("JB " + tokens[3] + " " + str(line_num))
					elif tokens[0] == "JBE":
						# CMPR
						# jmp
						# NOP
						first_pass_queue.append(encode_cmps(["CMP", tokens[1], tokens[2]], line_num, line))
						first_pass_queue.append("JBE " + tokens[3] + " " + str(line_num))
					elif tokens[0] == "JL":
						# CMPR
						# jmp
						# NOP
						first_pass_queue.append(encode_cmps(["CMP", tokens[1], tokens[2]], line_num, line))
						first_pass_queue.append("JL " + tokens[3] + " " + str(line_num))
					elif tokens[0] == "JLE":
						# CMPR
						# jmp
						# NOP
						first_pass_queue.append(encode_cmps(["CMP", tokens[1], tokens[2]], line_num, line))
						first_pass_queue.append("JLE " + tokens[3] + " " + str(line_num))
					elif tokens[0] == "JE":
						# CMPR
						# jmp
						# NOP
						first_pass_queue.append(encode_cmps(["CMP", tokens[1], tokens[2]], line_num, line))
						first_pass_queue.append("JE " + tokens[3] + " " + str(line_num))
					elif tokens[0] == "JNE":
						# CMPR
						# jmp
						# NOP
						first_pass_queue.append(encode_cmps(["CMP", tokens[1], tokens[2]], line_num, line))
						first_pass_queue.append("JNE " + tokens[3] + " " + str(line_num))
					else:
						explode_bomb(line_num, line)
					first_pass_queue.append(str(hex(0)))
					continue

			instruction_type = get_instruction_type(tokens[0])

			# enforce and remove comma after second of three tokens
			if len(tokens) >= 3 and tokens[2][0] != "#":
				if tokens[1][-1] == ",":
					tokens[1] = tokens[1][:-1]
				else:
					missing_comma(line_num, line)

			# encode instructions specifically for each op type
			if instruction_type == "I-Capable":
				verify_token_count(line_num, tokens, 3)
				if tokens[1][0] == "%" and tokens[2][0] == "%":
					if tokens[0] == "SUB":
						first_pass_queue.append(encode_R_to_R_instruction([tokens[0], tokens[2], tokens[1]], 0))
					else:
						# push this
						first_pass_queue.append(encode_R_to_R_instruction(tokens, 0))
				elif tokens [1][0] == "%" and tokens[2][0] != "%":
					# push this
					first_pass_queue.append(encode_Imm_to_R_instruction(tokens))
				else:
					explode_bomb(line_num, line)

			# compares are monsters
			elif instruction_type == "CMP":
				verify_token_count(line_num, tokens, 3)
				first_pass_queue.append(encode_cmps(tokens, line_num, line))

			elif instruction_type == "14-Bit Immediate":
				if tokens[0] == "RET":
					first_pass_queue.append(str(hex(OP_CODES[tokens[0]] << 14)))
					first_pass_queue.append(str(hex(0)))
					# all instructions that load PC from memory (just RET, I think) execute two more instructions after themselves
					first_pass_queue.append(str(hex((OP_CODES["INCR"] << 12) + (trim_reg("%13") << 8) + 0)))
				else:
					first_pass_queue.append(encode_14_Bit_Imm_instruction(tokens))

			elif instruction_type == "INCR" or instruction_type == "DECR":
				# encode by hand
				first_pass_queue.append(str(hex((OP_CODES[tokens[0]] << 12) + (trim_reg(tokens[1]) << 8) + 0)))

			elif instruction_type == "PUSH":
				# encode by hand
				if is_number(tokens[1]):
					first_pass_queue.append(str(hex((OP_CODES["PUSHI"] << 14) + (to_number(tokens[1])) + 0)))
				else:
					first_pass_queue.append(str(hex((OP_CODES[tokens[0]] << 14) + (trim_reg(tokens[1]) << 10) + 0)))

			elif instruction_type == "POP":
				first_pass_queue.append(str(hex((OP_CODES[tokens[0]] << 14) + (trim_reg(tokens[1]) << 10) + 0)))
				first_pass_queue.append(str(hex(0)))
				first_pass_queue.append(str(hex((OP_CODES["INCR"] << 12) + (trim_reg("%13") << 8) + 0)))

			elif instruction_type == "MOV":
				if tokens[1][0] == '[' and tokens[2][0] == '[':
					explode_bomb(line_num, line)
				if tokens[2][0] == '[':
					if tokens[2][-1] != ']':
						delim_mismatch(line_num, line)
					else:
						if tokens[2][1] == "%":	# MOV %R, (%R)
							# MOVMR
							# NOP
							first_pass_queue.append(str(hex(0x1000 + (trim_reg(tokens[1]) << 8) + (OP_CODES["MOVMR"] << 4) + trim_reg(tokens[2]))))
							first_pass_queue.append(str(hex(0)))
						else:					# MOV %R, (Imm)
							# psuedoinstruction becomes
							#     MOVMRI Imm
							#     NOP
							#     MOVR %R, %MR
							if tokens[1][0] != "%":
								invalid_arg(line_num, line)
							else:
								if (is_number(tokens[2][1:-1])):
									first_pass_queue.append(encode_14_Bit_Imm_instruction(["MOVMRI", tokens[2][1:-1]]))
									first_pass_queue.append(str(hex(0)))
									first_pass_queue.append(str(hex((trim_reg(tokens[1]) << 8) + (OP_CODES["MOVR"] << 4) + 15)))
								else:
									first_pass_queue.append("MOVMRI" + " " + tokens[2][1:-1] + " " + str(line_num))
									first_pass_queue.append(str(hex(0)))
									first_pass_queue.append(str(hex((trim_reg(tokens[1]) << 8) + (OP_CODES["MOVR"] << 4) + 15)))
				elif tokens[1][0] == '[':
					if tokens[1][-1] != ']':
						delim_mismatch(line_num)
					else:
						if tokens[1][1] == "%":	# MOV (%R), %R
							# MOVRM
							first_pass_queue.append(str(hex(0x1000 + (trim_reg(tokens[2]) << 8) + (OP_CODES["MOVRM"] << 4) + trim_reg(tokens[1]))))
						else:					# MOV (Imm), %R
							# psuedoinstruction becomes
							#     MOVR %MR, %R
							#     MOVRMI Imm
							if tokens[2][0] != "%":
								invalid_arg(line_num, line)
							else:
								if (is_number(tokens[1][1:-1])):
									first_pass_queue.append(str(hex((15 << 8) + (OP_CODES["MOVR"] << 4) + trim_reg(tokens[2]))))
									first_pass_queue.append(encode_14_Bit_Imm_instruction(["MOVRMI", tokens[1][1:-1]]))
								else:
									first_pass_queue.append(str(hex((15 << 8) + (OP_CODES["MOVR"] << 4) + trim_reg(tokens[2]))))
									first_pass_queue.append("MOVRMI" + " " + tokens[1][1:-1] + " " + str(line_num))
				else: # Other MOV: MOV %R, %R and MOV %R, Imm
					if tokens[1][0] == "%" and tokens[2][0] == "%":
						# push this
						tokens[0] = "MOVR"
						first_pass_queue.append(encode_R_to_R_instruction(tokens, 0))
					elif tokens [1][0] == "%" and tokens[2][0] != "%":
						# push this
						if is_number(tokens[2]):
							if to_number(tokens[2]) > 256 or to_number(tokens[2]) < 0:
								# move top in
								tokens[0] = "MOVR"
								constant = to_number(tokens[2])
								tokens[2] = str(truncate_bits((constant >> 8), 8))
								first_pass_queue.append(encode_Imm_to_R_instruction(tokens))
								# left shift 8
								tokens[0] = "LSH"
								tokens[2] = "8"
								first_pass_queue.append(encode_Imm_to_R_instruction(tokens))
								# or with bottom
								tokens[0] = "OR"
								tokens[2] = str(truncate_bits(constant, 8))
								first_pass_queue.append(encode_Imm_to_R_instruction(tokens))
							else:
								tokens[0] = "MOVR"
								first_pass_queue.append(encode_Imm_to_R_instruction(tokens))
						else:
							# label move
							first_pass_queue.append("LMOV " + tokens[1] + " " + tokens[2] + " " + str(line_num))
					else:
						explode_bomb(line_num, line)

			else:
				# bad instruction, explode
				explode_bomb(line_num, line)

	sys.stdout.write("\n\t(2/3) Addressing: [  0%]")
	sys.stdout.flush()

	total_instructions = len(first_pass_queue)
	line_num = 0

	# Get labels (must be done after first pass to allow for psuedo instructions to expand)
	address = MEM_START
	second_pass_queue = deque()
	for instruction in first_pass_queue:
		line_num += 1
		print_percentage(100 * line_num/float(total_instructions))
		sys.stdout.flush()
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
			if label in labels:
				duplicate_label(tokens)
			else:
				labels[label] = address
		else:
			if tokens[0] == "LMOV":
				second_pass_queue.append(instruction);
				address += 3 * MEM_INCR
			else:
				# push instruction to second pass deque
				second_pass_queue.append(instruction);
				address += MEM_INCR

	sys.stdout.write("\n\t(3/3)   Labeling: [  0%]")
	sys.stdout.flush()

	total_instructions = len(second_pass_queue)
	line_num = 0

	# Output
	outfile = open(outfile_str, 'w')
	for instruction in second_pass_queue:
		line_num += 1
		print_percentage(100 * line_num/float(total_instructions))
		sys.stdout.flush()

		tokens = instruction.split()
		# write each instruction to the instruction stream replacing labels as you
		# go.
		# call encode_14_Bit_Imm_instruction() on calls and encode_jumps() on jumps (lines with more than one token)
		if len(tokens) > 1:
			try:
				if tokens[0] == "CALL":
					# encode call and save to instruction stream with label address
					outfile.write(encode_14_Bit_Imm_instruction([tokens[0], str(labels[tokens[1]])])[2:] + "\n")
				elif tokens[0][0] == "J":
					# encode jump and save
					outfile.write(encode_jumps([tokens[0], str(labels[tokens[1]])])[2:] + "\n")
				elif tokens[0] == "MOVMRI" or tokens[0] == "MOVRMI":
					# encode mov label value to register
					# label must come before +
					label = (tokens[1].split("+"))[0]
					aritheval = tokens[1].replace(label, str(labels[label]))
					outfile.write(encode_14_Bit_Imm_instruction([tokens[0], str(eval(aritheval))])[2:] + "\n")
				else:
					#LMOV
					# always assume bigger label
					# mov, lsh, or to get large immediate
					tokens[0] = "MOVR"
					labelval = labels[tokens[2]]
					# move top in
					tokens[2] = str(truncate_bits((labelval >> 8), 8))
					outfile.write(encode_Imm_to_R_instruction(tokens)[2:] + "\n")
					# left shift 8
					tokens[0] = "LSH"
					tokens[2] = "8"
					outfile.write(encode_Imm_to_R_instruction(tokens)[2:] + "\n")
					# or with bottom
					tokens[0] = "OR"
					tokens[2] = str(truncate_bits(labelval, 8))
					outfile.write(encode_Imm_to_R_instruction(tokens)[2:] + "\n")
			except KeyError:
				if tokens[0] == "MOVR":
					no_such_label2(tokens)
				else:
					no_such_label(tokens)
			except:
				exit(1)
		else:
			# remove 0x
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
