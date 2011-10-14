#ifndef REGISTERFILE_H
#define REGISTERFILE_H

#include <map>
#include <string>

typedef unsigned short Register;
typedef unsigned short Immediate;

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
