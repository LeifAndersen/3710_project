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
    for(int i = START_MEM, j = 1; getline(infile, line); i += MEM_SKIP, j++) {

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
    for(int i = START_MEM, j = 1; getline(infile, line); i += MEM_SKIP, j++) {
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

        vector<string> tempCommands;
        stringstream ss;
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
        case InstructionSet::AND:
            output.push_back(assembleNormalInstruction(tokens, instructions[InstructionSet::AND], j));
            break;
        case InstructionSet::ANDI:
            output.push_back(assembleImmediateInstruction(tokens, instructions[InstructionSet::ANDI], j));
            break;
        case InstructionSet::OR:
            output.push_back(assembleNormalInstruction(tokens, instructions[InstructionSet::OR], j));
            break;
        case InstructionSet::ORI:
            output.push_back(assembleImmediateInstruction(tokens, instructions[InstructionSet::ORI], j));
            break;
        case InstructionSet::NOT:
            output.push_back(assembleNormalInstruction(tokens, instructions[InstructionSet::NOT], j));
            break;
        case InstructionSet::NOTI:
            output.push_back(assembleImmediateInstruction(tokens, instructions[InstructionSet::NOTI], j));
            break;
        case InstructionSet::XOR:
            output.push_back(assembleNormalInstruction(tokens, instructions[InstructionSet::XOR], j));
            break;
        case InstructionSet::XORI:
            output.push_back(assembleImmediateInstruction(tokens, instructions[InstructionSet::XORI], j));
            break;
        case InstructionSet::LSH:
            output.push_back(assembleNormalInstruction(tokens, instructions[InstructionSet::LSH], j));
            break;
        case InstructionSet::LSHI:
            output.push_back(assembleImmediateInstruction(tokens, instructions[InstructionSet::LSHI], j));
            break;
        case InstructionSet::RSH:
            output.push_back(assembleNormalInstruction(tokens, instructions[InstructionSet::RSH], j));
            break;
        case InstructionSet::RSHI:
            output.push_back(assembleImmediateInstruction(tokens, instructions[InstructionSet::RSHI], j));
            break;
        case InstructionSet::ARSH:
            output.push_back(assembleNormalInstruction(tokens, instructions[InstructionSet::ARSH], j));
            break;
        case InstructionSet::ARSHI:
            output.push_back(assembleImmediateInstruction(tokens, instructions[InstructionSet::ARSHI], j));
            break;
        case InstructionSet::MUL:
            output.push_back(assembleNormalInstruction(tokens, instructions[InstructionSet::MUL], j));
            break;
        case InstructionSet::MULI:
            output.push_back(assembleImmediateInstruction(tokens, instructions[InstructionSet::MULI], j));
            break;
        case InstructionSet::FMUL:
            output.push_back(assembleNormalInstruction(tokens, instructions[InstructionSet::FMUL], j));
            break;
        case InstructionSet::FMULI:
            output.push_back(assembleImmediateInstruction(tokens, instructions[InstructionSet::FMULI], j));
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
            if(tokens.size() < 2) {
                cerr << "Invalid call instruction on line: " << j << endl;
                exit(1);
            }
            if(labels.find(tokens[1]) == labels.end()) {
                cerr << "Invalid label on line: " << j << endl;
                exit(1);
            }
            // Make the label a number
            ss << labels[tokens[1]];
            tokens[1] = ss.str();
            output.push_back(assembleSpecialInstruction(tokens, instructions[InstructionSet::CALL], j));
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
            tokens.insert(tokens.begin()+1, 2, "s0");
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
            output.push_back(assembleSpecialInstruction(tokens, instructions[InstructionSet::LW], j));
            break;
        case InstructionSet::SW:
            output.push_back(assembleSpecialInstruction(tokens, instructions[InstructionSet::SW], j));
            break;
        case InstructionSet::LI:
            if(tokens.size() < 2) {
                cerr << "Invalid load instruction on line: " << j << endl;
                exit(1);
            }

            // Set the register to be 0
            tempCommands.push_back("sub");
            tempCommands.push_back(tokens[1]);
            tempCommands.push_back(tokens[1]);

            // Add it to the 0 register
            output.push_back(assembleNormalInstruction(tempCommands, instructions[InstructionSet::SUB], j));
            output.push_back(assembleImmediateInstruction(tokens, instructions[InstructionSet::ADDI], j));
            break;
        case InstructionSet::RET:
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
    outfile.open(outFileName.c_str(), ios::out | ios::binary);
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

Instruction Assembler::assembleSpecialInstruction(const vector<std::string> tokens, Opcode opcode, int lineNum)
{
    Instruction instruction;
    Immediate source;

    if(tokens.size() < 2
            || (tokens.size() > 2 && tokens[3][0] != '#')) {
        cerr << "Invalid instruction on line: " << lineNum << endl;
        exit(1);
    }


    for(unsigned i = 0; i < tokens[1].size(); i++) {
        if(!isdigit(tokens[1][i])) {
            cerr << "Invalid immediate on line: " << lineNum << endl;
            exit(1);
        }
    }

    source = atoi(tokens[1].c_str());

    instruction = opcode;
    instruction <<= OPP_CODE_OFFSET;
    instruction += source;
    return instruction;
}
