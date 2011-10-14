#ifndef ASSEMBLER_H
#define ASSEMBLER_H

#include <string>
#include <vector>

#include "instructions.h"
#include "registerfile.h"

class Assembler
{
public:
    void assemble(std::string inFileName, std::string outFileName);
private:

    Instructions instructions;
    RegisterFile regFile;

    Instruction assembleNormalInstruction(const std::vector<std::string> tokens, int lineNum);
    Instruction assembleImmediateInstruction(const std::vector<std::string> tokens, int lineNum);
};

#endif // ASSEMBLER_H
