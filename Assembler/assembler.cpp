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
#include "instructionset.h"
#include "registerfile.h"

#define START_MEM 0
#define MEM_SKIP 1

using namespace std;


void Assembler::assemble(string inFileName, string outFileName)
{
    // Open files, other constants needed
    string line;
    vector<Instruction> output;
    map<string, int> labels;
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
        case InstructionSet::ADD:
            output.push_back(assembleNormalInstruction(tokens, instructions[InstructionSet::ADD], j));
            break;
        case InstructionSet::ADDI:
            output.push_back(assembleImmediateInstruction(tokens, instructions[InstructionSet::ADDI], j));
            break;
        case InstructionSet::SUB:
            output.push_back(assembleNormalInstruction(tokens, instructions[InstructionSet::SUB], j));
            break;
        case InstructionSet::SUBI:
            output.push_back(assembleImmediateInstruction(tokens, instructions[InstructionSet::SUBI], j));
            break;
        case InstructionSet::CMP:
            output.push_back(assembleNormalInstruction(tokens, instructions[InstructionSet::CMP], j));
            break;
        case InstructionSet::CMPI:
            output.push_back(assembleImmediateInstruction(tokens, instructions[InstructionSet::CMPI], j));
            break;
        case InstructionSet::TEST:
            output.push_back(assembleNormalInstruction(tokens, instructions[InstructionSet::TEST], j));
            break;
        case InstructionSet::TESTI:
            output.push_back(assembleImmediateInstruction(tokens, instructions[InstructionSet::TESTI], j));
            break;
        case InstructionSet::CALL:
            break;
        case InstructionSet::JG:
            break;
        case InstructionSet::JGE:
            break;
        case InstructionSet::JL:
            break;
        case InstructionSet::JLE:
            break;
        case InstructionSet::JE:
            break;
        case InstructionSet::JNE:
            break;
        case InstructionSet::JA:
            break;
        case InstructionSet::JB:
            break;
        case InstructionSet::JBE:
            break;
        case InstructionSet::NOP:
            tokens.insert(tokens.begin()+1, 2, "a");
            output.push_back(assembleNormalInstruction(tokens, instructions[InstructionSet::CMP], j));
            break;
        case InstructionSet::MOV:
            if(tokens.size() < 3) {
                cerr << "Invalid move instruction on line: " << j << endl;
                exit(1);
            }
            tokens.insert(tokens.begin()+3, 1, "0");
            output.push_back(assembleImmediateInstruction(tokens, instructions[InstructionSet::ADDI], j));
            break;
        case InstructionSet::LW:
            break;
        case InstructionSet::SW:
            break;
        case InstructionSet::LI:
            break;
        case InstructionSet::NOT_IN_SET:
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

Instruction Assembler::assembleNormalInstruction(const vector<string> tokens, Opcode opcode, int lineNum)
{
    Instruction instruction;
    Register dest;
    Register source;

    if(tokens.size() < 3 || !regFile.contains(tokens[1])
            || !regFile.contains(tokens[2])
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
    instruction += opcode;
    instruction <<= OPP_CODE_OFFSET;
    instruction += dest;
    instruction <<= REGISTER_ADDRESS_OFFSET;
    instruction += source;
    return instruction;
}

Instruction Assembler::assembleImmediateInstruction(const vector<string> tokens, Opcode opcode, int lineNum)
{
    Instruction instruction;
    Register dest;
    Immediate source;

    if(tokens.size() < 3 || !regFile.contains(tokens[1])
            || (tokens.size() > 3 && tokens[3][0] != '#')) {
        cerr << "Invalid instruction on line: " << lineNum << endl;
        exit(1);
    }


    for(unsigned i = 0; i < tokens[2].size(); i++) {
        if(!isdigit(tokens[2][i])) {
            cerr << "Invalid immediate on line: " << lineNum << endl;
            exit(1);
        }
    }

    dest = regFile[tokens[1]];
    source = atoi(tokens[2].c_str());

    instruction = NON_SPECIAL_HEADER;
    instruction <<= NON_SPECIAL_OFFSET;
    instruction += opcode;
    instruction <<= OPP_CODE_OFFSET;
    instruction += dest;
    instruction <<= REGISTER_ADDRESS_OFFSET;
    instruction += source;
    return instruction;
}
