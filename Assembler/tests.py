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
	MOV $0, 7
	MOV $1, 13
	MOV $4, 14
	MOV $2, 42

TESTPARITY:
	MOV $3, $4
	AND $3, 1
	CMP $3, 0
	JE EVEN 		# Jump if $4 is even
	ADD $0, $1
	DECR $4
	CMP $4, 0
	JNE TESTPARITY
	JE WASTELOOP

EVEN:
	ADD $1, $0
	DECR $4
	CMP 0, $4		# other kind of compare
	JNE TESTPARITY

WASTELOOP:
	SUB $1, 0	# 1984 is now the current fib value in hex.  Hold it on the write line
	OR $1, 0
	NOT $5, 0
	JNE WASTELOOP
''')
		self.infile.close()
		assembler.parse(self.infileName, self.outfileName)
		self.outfile = open(self.outfileName, 'r')
		out_str = self.outfile.read()
		self.outfile.close()
		test_str = '''f007
f10d
f40e
f22a
3f4
6301
4300
2c00d
21
3d400
4400
28004
2c011
120
3d400
5400
28004
3100
7100
9500
28011
'''
		assert out_str == test_str

def main():
	unittest.main()

if __name__ == '__main__':
	main()
