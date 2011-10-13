#include "instructions.h"

Instructions::Instructions()
{
    instructionMap["ADD"] = ADD;
    opcodeMap[ADD] = 0b0000;
    instructionMap["ADDI"] = ADDI;
    opcodeMap[ADDI] = 0b0000;
    instructionMap["SUB"] = SUB;
    opcodeMap[SUB] = 0b0000;
    instructionMap["SUBI"] = SUBI;
    opcodeMap[SUBI] = 0b0000;
    instructionMap["CMP"] = CMP;
    opcodeMap[CMP] = 0b0000;
    instructionMap["CMPI"] = CMPI;
    opcodeMap[CMPI] = 0b0000;
    instructionMap["TEST"] = TEST;
    opcodeMap[TEST] = 0b0000;
    instructionMap["TESTI"] = TESTI;
    opcodeMap[TESTI] = 0b0000;
    instructionMap["JG"] = JG;
    opcodeMap[JG] = 0b0000;
    instructionMap["JGE"] = JGE;
    opcodeMap[JGE] = 0b0000;
    instructionMap["JL"] = JL;
    opcodeMap[JL] = 0b0000;
    instructionMap["JLE"] = JLE;
    opcodeMap[JLE] = 0b0000;
    instructionMap["JE"] = JE;
    opcodeMap[JE] = 0b0000;
    instructionMap["JNE"] = JNE;
    opcodeMap[JNE] = 0b0000;
    instructionMap["JA"] = JA;
    opcodeMap[JA] = 0b0000;
    instructionMap["JB"] = JB;
    opcodeMap[JB] = 0b0000;
    instructionMap["JAE"] = JAE;
    opcodeMap[JAE] = 0b0000;
    instructionMap["JBE"] = JBE;
    opcodeMap[JBE] = 0b0000;
    instructionMap["NOP"] = NOP;
    opcodeMap[NOP] = 0b0000;
}

Instructions::instructionSet Instructions::operator [](std::string instruction)
{
    return instructionMap[instruction];
}

opcode Instructions::operator [](Instructions::instructionSet instruction)
{
    return opcodeMap[instruction];
}

bool Instructions::contains(std::string instruction)
{
    return instructionMap.find(instruction) != instructionMap.end();
}
