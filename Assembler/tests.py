#!/usr/bin/env python

import unittest
import os

import assembler

class AssemblerTestCase(unittest.TestCase):
	infileName = "test.asm"
	outfileName = "test.o"

	def setUp(self):
		self.infile = open(self.infileName, 'w')
		self.infile.close()
		self.outfile = open(self.outfileName, 'w')
		self.outfile.close()

	def tearDown(self):
		os.remove(self.infileName)
		os.remove(self.outfileName)

	def testA(self):
		self.infile = open(self.infileName, 'w')
		self.infile.write('''
# simple loop test with no stack usage.  Starts heap from bottom
	MOV 7, $0
	MOV 13, $1
	MOV 14, $4
	MOV 42, $2

TESTPARITY:
	MOV $4, $3
	AND 1, $3
	CMP 0, $3
	JE EVEN 		# Jump if $4 is even
	ADD $1, $0
	DECR $4
	CMP 0, $4
	JNE TESTPARITY
	JE WASTELOOP

EVEN:
	ADD $0, $1
	DECR $4
	CMP $4, $0		# other kind of compare
	JNE TESTPARITY

WASTELOOP:
	SUB 0, $1	# 1984 is now the current fib value in hex.  Hold it on the write line
	OR 0, $1
	NOT $5
	JNE WASTELOOP
''')
		self.infile.close()
		assembler.parse(self.infileName, self.outfileName)

def main():
	unittest.main()

if __name__ == '__main__':
	main()
