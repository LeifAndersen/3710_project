#ifndef INSTRUCTIONS_H
#define INSTRUCTIONS_H

#include <map>
#include <string>

typedef short opcode;

class Instructions
{
public:
    Instructions();

    enum instructionSet {
        ADD,
        ADDI,
        SUB,
        SUBI,
        CMP,
        CMPI,
        TEST,
        TESTI,
        JG,
        JGE,
        JL,
        JLE,
        JE,
        JNE,
        JA,
        JB,
        JAE,
        JBE,
        NOP,
    };

    instructionSet operator [](std::string instruction);
    opcode operator [](instructionSet instruction);

    bool contains(std::string instruction);

private:
    std::map<std::string, instructionSet> instructionMap;
    std::map<instructionSet, opcode> opcodeMap;
};

#endif // INSTRUCTIONS_H
