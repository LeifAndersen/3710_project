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
}

Instructions::instructionSet Instructions::operator [](std::string instruction)
{
    return instructionMap[instruction];
}
