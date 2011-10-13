#ifndef INSTRUCTIONS_H
#define INSTRUCTIONS_H

#include <map>
#include <string>

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
    };

    instructionSet operator [](std::string instruction);

private:
    std::map<std::string, instructionSet> instructionMap;
};

#endif // INSTRUCTIONS_H
