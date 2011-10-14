#include <iostream>
#include <fstream>
#include <streambuf>
#include <sstream>
#include <algorithm>
#include <iterator>
#include <vector>
#include <string>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
#include <map>

#include "assembler.h"
#include "instructions.h"
#include "registerfile.h"

#define START_MEM 0
#define MEM_SKIP 1
using namespace std;

void assemble(string inFileName, string outFileName)
{
    // Open files, other constants needed
    string line;
    vector<Instruction> output;
    map<string, int> labels;
    Instructions instructions;
    RegisterFile regFile;
    ifstream infile;
    infile.open(inFileName.c_str());

    // Set up tags
    for(int i = START_MEM; getline(infile, line); i += MEM_SKIP) {

        istringstream iss(line);
        vector<string> tokens;
        copy(istream_iterator<string>(iss),
                 istream_iterator<string>(),
                 back_inserter<vector<string> >(tokens));

        if(tokens.size() == 0) {
            continue;
        }

        string label = tokens[0];
        if(label[0] == '#') {
            continue;
        }

        if(!instructions.contains(label)) {
            if(labels.find(label) == labels.end()) {
                labels[label] = i;
            } else {
                cerr << "Duplicate label on line: " << labels[label]
                     << " and line: " << i << endl;
                exit(1);
            }
        }

        if(tokens.size() > 1 && tokens[1][0] != '#') {
            cerr << "Invalid label name on line: " << i << endl;
            exit(1);
        }
    }

    // Reset stream
    infile.clear();
    infile.seekg(0, ios::beg);

    // Assemble
    for(int i = START_MEM; getline(infile, line); i += MEM_SKIP) {
        istringstream iss(line);
        vector<string> tokens;
        copy(istream_iterator<string>(iss),
                 istream_iterator<string>(),
                 back_inserter<vector<string> >(tokens));

        if(tokens.size() == 0) {
            continue;
        }

        string command = tokens[0];

        if(command[0] == '#') {
            continue;
        }

        Instruction instruction;
        Register dest;
        Register sourceReg;
        Immediate sourceImmediate;

        switch(instructions[command]) {
        case Instructions::ADD:

            if(tokens.size() < 3 || !regFile.contains(tokens[1])
                    || !regFile.contains(tokens[1])
                    || (tokens.size() > 3 && tokens[3][0] != '#')) {
                cerr << "Invalid instruction on line: " << i << endl;
                exit(1);
            }

            dest = regFile[tokens[1]];
            sourceReg = regFile[tokens[2]];

            instruction = NON_SPECIAL_HEADER;
            instruction <<= NON_SPECIAL_OFFSET;
            instruction += NON_IMEDIATE_OPCODE;
            instruction <<= NON_IMMEDIATE_OFFSET;
            instruction += instructions[Instructions::ADD];
            instruction <<= OPP_CODE_OFFSET;
            instruction += dest;
            instruction <<= REGISTER_ADDRESS_OFFSET;
            instruction += sourceReg;
            break;
        case Instructions::ADDI:
            break;
        case Instructions::SUB:
            break;
        case Instructions::SUBI:
            break;
        case Instructions::CMP:
            break;
        case Instructions::CMPI:
            break;
        case Instructions::TEST:
            break;
        case Instructions::TESTI:
            break;
        case Instructions::JG:
            break;
        case Instructions::JGE:
            break;
        case Instructions::JL:
            break;
        case Instructions::JLE:
            break;
        case Instructions::JE:
            break;
        case Instructions::JNE:
            break;
        case Instructions::JA:
            break;
        case Instructions::JB:
            break;
        case Instructions::JBE:
            break;
        case Instructions::NOP:
            break;
        default:
            if(labels.find(command) == labels.end()) {
                cerr << "Invalid instruction or label on line: " << i << endl;
                exit(1);
            }
            break;
        }
    }

    // Close Input File
    infile.close();

    // Write the output to a file
    ofstream outfile;
    outfile.open(outFileName.c_str());
    for(unsigned int i = 0; i < output.size(); i++) {
        outfile << output[i];
    }
    outfile.close();
}
