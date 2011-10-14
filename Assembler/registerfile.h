#ifndef REGISTERFILE_H
#define REGISTERFILE_H

#include <map>
#include <string>

typedef short Register;

class RegisterFile
{
public:
    RegisterFile();

    Register getRegister(const std::string &reg);

    bool contains(const std::string &reg);

private:
    std::map<std::string, Register> regMap;

    int lower_case(int c);
};

#endif // REGISTERFILE_H
