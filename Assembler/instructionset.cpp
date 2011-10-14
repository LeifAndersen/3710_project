#include "instructionset.h"

InstructionSet::InstructionSet()
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
    instructionMap["and"] = AND;
    opcodeMap[AND] = 0b0000;
    instructionMap["andi"] = ANDI;
    opcodeMap[ANDI] = 0b0000;
    instructionMap["or"] = OR;
    opcodeMap[OR] = 0b0000;
    instructionMap["ori"] = ORI;
    opcodeMap[ORI] = 0b0000;
    instructionMap["not"] = NOT;
    opcodeMap[NOT] = 0b0000;
    instructionMap["noti"] = NOTI;
    opcodeMap[NOTI] = 0b0000;
    instructionMap["xor"] = XOR;
    opcodeMap[XOR] = 0b0000;
    instructionMap["xori"] = XORI;
    opcodeMap[XORI] = 0b0000;
    instructionMap["cmpi"] = CMPI;
    opcodeMap[CMPI] = 0b0000;
    instructionMap["test"] = TEST;
    opcodeMap[TEST] = 0b0000;
    instructionMap["testi"] = TESTI;
    opcodeMap[TESTI] = 0b0000;
    instructionMap["call"] = CALL;
    opcodeMap[CALL] = 0b0000;
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
    instructionMap["mov"] = MOV;
    opcodeMap[MOV] = 0b0000;
    instructionMap["lw"] = LW;
    opcodeMap[LW] = 0b0000;
    instructionMap["sw"] = SW;
    opcodeMap[SW] = 0b0000;
    instructionMap["li"] = LI;
    opcodeMap[LI] = 0b0000;
    instructionMap["ret"] = RET;
    opcodeMap[RET] = 0b0000;
}

InstructionSet::instructionSet InstructionSet::operator [](const std::string &instruction)
{
    if(contains(instruction)) {
        return instructionMap[instruction];
    } else {
        return NOT_IN_SET;
    }
}

Opcode InstructionSet::operator [](InstructionSet::instructionSet instruction)
{
    return opcodeMap[instruction];
}

bool InstructionSet::contains(const std::string &instruction)
{
    return instructionMap.find(instruction) != instructionMap.end();
}
