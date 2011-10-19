#ifndef INSTRUCTIONS_H
#define INSTRUCTIONS_H

#include <map>
#include <string>
#include <inttypes.h>

#define NON_SPECIAL_HEADER 0b00
#define NON_SPECIAL_OFFSET 2
#define NON_IMEDIATE_OPCODE 0b0000
#define NON_IMMEDIATE_OFFSET 4
#define OPP_CODE_OFFSET 4
#define REGISTER_ADDRESS_OFFSET 4

typedef uint16_t Opcode;
typedef uint16_t Instruction;

class InstructionSet
{
public:
    InstructionSet();

    enum instructionSet {
        ADD,
        ADDI,
        SUB,
        SUBI,
        AND,
        ANDI,
        OR,
        ORI,
        NOT,
        NOTI,
        XOR,
        XORI,
        LSH,
        LSHI,
        RSH,
        RSHI,
        ARSH,
        ARSHI,
        MUL,
        MULI,
        FMUL,
        FMULI,
        CMP,
        CMPI,
        TEST,
        TESTI,
        CALL,
        RET,
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
        MOV,
        LW,
        SW,
        LI,
        NOT_IN_SET
    };

    instructionSet operator [](const std::string &instruction);
    Opcode operator [](instructionSet instruction);

    bool contains(const std::string &instruction);

private:
    std::map<std::string, instructionSet> instructionMap;
    std::map<instructionSet, Opcode> opcodeMap;
};

#endif // INSTRUCTIONS_H
