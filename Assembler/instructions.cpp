#include "instructions.h"

Instructions::Instructions()
{
    instructionMap["add"] = ADD;
    opcodeMap[ADD] = 0b0000;
    instructionMap["addi"] = ADDI;
    opcodeMap[ADDI] = 0b0000;
    instructionMap["sub"] = SUB;
    opcodeMap[SUB] = 0b0000;
    instructionMap["subi"] = SUBI;
    opcodeMap[SUBI] = 0b0000;
    instructionMap["cmp"] = CMP;
    opcodeMap[CMP] = 0b0000;
    instructionMap["cmpi"] = CMPI;
    opcodeMap[CMPI] = 0b0000;
    instructionMap["test"] = TEST;
    opcodeMap[TEST] = 0b0000;
    instructionMap["testi"] = TESTI;
    opcodeMap[TESTI] = 0b0000;
    instructionMap["jg"] = JG;
    opcodeMap[JG] = 0b0000;
    instructionMap["jge"] = JGE;
    opcodeMap[JGE] = 0b0000;
    instructionMap["jl"] = JL;
    opcodeMap[JL] = 0b0000;
    instructionMap["jle"] = JLE;
    opcodeMap[JLE] = 0b0000;
    instructionMap["je"] = JE;
    opcodeMap[JE] = 0b0000;
    instructionMap["jne"] = JNE;
    opcodeMap[JNE] = 0b0000;
    instructionMap["ja"] = JA;
    opcodeMap[JA] = 0b0000;
    instructionMap["jb"] = JB;
    opcodeMap[JB] = 0b0000;
    instructionMap["jae"] = JAE;
    opcodeMap[JAE] = 0b0000;
    instructionMap["jbe"] = JBE;
    opcodeMap[JBE] = 0b0000;
    instructionMap["nop"] = NOP;
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
