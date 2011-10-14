#include "registerfile.h"

#include <algorithm>

using namespace std;

RegisterFile::RegisterFile()
{
    regMap["s0"] = 0;
    regMap["s1"] = 1;
    regMap["s2"] = 2;
    regMap["s3"] = 3;
    regMap["s4"] = 4;
    regMap["s5"] = 5;
    regMap["t0"] = 6;
    regMap["t1"] = 7;
    regMap["t2"] = 8;
    regMap["t3"] = 9;
    regMap["t4"] = 10;
    regMap["lo"] = 11;
    regMap["hi"] = 12;
    regMap["sp"] = 13;
    regMap["fp"] = 14;
    regMap["assem"] = 15;
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
