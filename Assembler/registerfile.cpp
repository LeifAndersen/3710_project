#include "registerfile.h"

#include <algorithm>

using namespace std;

RegisterFile::RegisterFile()
{
    regMap["a"] = 0;
    regMap["b"] = 1;
    regMap["c"] = 2;
    regMap["d"] = 3;
    regMap["e"] = 4;
    regMap["f"] = 5;
    regMap["g"] = 6;
    regMap["h"] = 7;
    regMap["i"] = 8;
    regMap["j"] = 9;
    regMap["k"] = 10;
    regMap["lo"] = 11;
    regMap["hi"] = 12;
    regMap["sp"] = 13;
    regMap["fp"] = 14;
    regMap["assem"] = 15;
}

Register RegisterFile::getRegister(const string &reg)
{
    return regMap[reg];
}

bool RegisterFile::contains(const string &reg)
{
    return regMap.find(reg) != regMap.end();
}

int RegisterFile::lower_case(int c)
{
    return tolower(c);
}
