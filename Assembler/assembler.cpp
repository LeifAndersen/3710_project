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

Instruction assembleNormalInstruction(const vector<string> tokens, int lineNum);
Instruction assembleImmediateInstruction(const vector<string> tokens, int lineNum);


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
    for(int i = START_MEM, j = 0; getline(infile, line); i += MEM_SKIP, j++) {

        istringstream iss(line);
        vector<string> tokens;
        copy(istream_iterator<string>(iss),
                 istream_iterator<string>(),
                 back_inserter<vector<string> >(tokens));

        if(tokens.size() == 0) {
            continue;
        }

        string label = tokens[0];
        if(label[0] == '#' || instructions.contains(label)) {
            continue;
        }

        if(labels.find(label) == labels.end()) {
            labels[label] = i;
        } else {
            cerr << "Duplicate label on line: " << labels[label]
                 << " and line: " << j << endl;
            exit(1);
        }

        if(tokens.size() > 1 && tokens[1][0] != '#') {
            cerr << "Invalid label name on line: " << j << endl;
            exit(1);
        }
    }

    // Reset stream
    infile.clear();
    infile.seekg(0, ios::beg);

    // Assemble
    for(int i = START_MEM, j = 0; getline(infile, line); i += MEM_SKIP, j++) {
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



        switch(instructions[command]) {
        case Instructions::ADD:

            output.push_back(assembleNormalInstruction(tokens, j));
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
        case Instructions::NOT_IN_SET:
        default:
            if(labels.find(command) == labels.end()) {
                cerr << "Invalid instruction or label on line: " << j << endl;
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

Instruction assembleNormalInstruction(const vector<string> tokens, int lineNum)
{
    Instruction instruction;
    Instructions instructions;
    Register dest;
    Register source;
    RegisterFile regFile;

    if(tokens.size() < 3 || !regFile.contains(tokens[1])
            || !regFile.contains(tokens[1])
            || (tokens.size() > 3 && tokens[3][0] != '#')) {
        cerr << "Invalid instruction on line: " << lineNum << endl;
        exit(1);
    }

    dest = regFile[tokens[1]];
    source = regFile[tokens[2]];

    instruction = NON_SPECIAL_HEADER;
    instruction <<= NON_SPECIAL_OFFSET;
    instruction += NON_IMEDIATE_OPCODE;
    instruction <<= NON_IMMEDIATE_OFFSET;
    instruction += instructions[Instructions::ADD];
    instruction <<= OPP_CODE_OFFSET;
    instruction += dest;
    instruction <<= REGISTER_ADDRESS_OFFSET;
    instruction += source;
    return instruction;
}

Instruction assembleImmediateInstruction(const vector<string> tokens, int lineNum)
{
    return 0;
}
