#ifndef ASSEMBLER_H
#define ASSEMBLER_H

#include <string>
#include <vector>

#include "instructionset.h"
#include "registerfile.h"

class Assembler
{
public:
    void assemble(std::string inFileName, std::string outFileName);
private:

    InstructionSet instructions;
    RegisterFile regFile;

    Instruction assembleNormalInstruction(const std::vector<std::string> tokens, Opcode opcode, int lineNum);
    Instruction assembleImmediateInstruction(const std::vector<std::string> tokens, Opcode opcode, int lineNum);
    Instruction assembleSpecialInstruction(const std::vector<std::string> tokens, Opcode opcode, int lineNum);
};

#endif // ASSEMBLER_H
