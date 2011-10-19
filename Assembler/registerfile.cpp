#include "registerfile.h"

#include <algorithm>

using namespace std;

RegisterFile::RegisterFile()
{
    regMap["$0"] = 0;
    regMap["$1"] = 1;
    regMap["$2"] = 2;
    regMap["$3"] = 3;
    regMap["$4"] = 4;
    regMap["$5"] = 5;
    regMap["$6"] = 6;
    regMap["$7"] = 7;
    regMap["$8"] = 8;
    regMap["$9"] = 9;
    regMap["$mr"] = 10;
    regMap["$lo"] = 11;
    regMap["$hi"] = 12;
    regMap["$sp"] = 13;
    regMap["$fp"] = 14;
    regMap["$assem"] = 15;
}

Register RegisterFile::operator [](const string &reg)
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
