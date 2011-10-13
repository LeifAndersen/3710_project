#include <iostream>
#include <fstream>
#include <streambuf>
#include <vector>
#include <string>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
#include <map>

#include "assembler.h"
#include "instructions.h"

#define START_MEM 0
#define MEM_SKIP 1
using namespace std;

void assemble(string inFileName, string outFileName)
{
    // Open files, other constants needed
    string line;
    string command;
    map<string, int> labels;
    Instructions instructions;
    ifstream infile;
    ofstream outfile;
    infile.open(inFileName.c_str());
    outfile.open(outFileName.c_str());

    // Set up tags
    for(int i = START_MEM; getline(infile, line); i += MEM_SKIP) {
        command = line;
        if(command[0] == '#')
            continue;

        if(!instructions.contains(command)) {
            if(labels.find(command) == labels.end()) {
                labels[command] = i;
            } else {
                cerr << "Duplicate label on line: " << labels[command]
                     << " and line: " << i << endl;
                exit(1);
            }
        }
    }

    // Reset stream
    infile.clear();
    infile.seekg(0, ios::beg);

    // Assemble
    for(int i = START_MEM; getline(infile, line); i += MEM_SKIP) {
        command = line;

        if(command[0] == '#')
            continue;

        switch(instructions[command]) {
        case Instructions::ADD:
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
            break;
        }
    }

    // Close Files
    infile.close();
    outfile.close();
}
