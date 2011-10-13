#include "instructions.h"

Instructions::Instructions()
{
    instructionMap["ADD"] = ADD;
    instructionMap["ADDI"] = ADDI;
    instructionMap["SUB"] = SUB;
    instructionMap["SUBI"] = SUBI;
    instructionMap["CMP"] = CMP;
    instructionMap["CMPI"] = CMPI;
    instructionMap["TEST"] = TEST;
    instructionMap["TESTI"] = TESTI;
    instructionMap["JG"] = JG;
    instructionMap["JGE"] = JGE;
    instructionMap["JL"] = JL;
    instructionMap["JLE"] = JLE;
    instructionMap["JE"] = JE;
    instructionMap["JNE"] = JNE;
    instructionMap["JA"] = JA;
    instructionMap["JB"] = JB;
    instructionMap["JAE"] = JAE;
    instructionMap["JBE"] = JBE;
}

Instructions::instructionSet Instructions::operator [](std::string instruction)
{
    return instructionMap[instruction];
}
