#ifndef REGISTERFILE_H
#define REGISTERFILE_H

#include <map>
#include <string>
#include <inttypes.h>

typedef uint16_t Register;
typedef uint16_t Immediate;

class RegisterFile
{
public:
    RegisterFile();

    Register operator [](const std::string &reg);

    bool contains(const std::string &reg);

private:
    std::map<std::string, Register> regMap;

    int lower_case(int c);
};

#endif // REGISTERFILE_H
