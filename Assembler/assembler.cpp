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

using namespace std;

void assemble(string inFileName, string outFileName)
{
    ifstream infile;
    ofstream outfile;
    infile.open(inFileName.c_str());
    outfile.open(outFileName.c_str());

    string line;
    string command;

    Instructions instructions;

    while(getline(infile, line)) {
        command = line;
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
        default:
            break;
        }
    }

    infile.close();
    outfile.close();
}
