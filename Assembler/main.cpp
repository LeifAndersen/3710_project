#include <string>

#include "assembler.h"
#include "compiler.h"

using namespace std;

int main()
{
    string infilename = "test.s";
    string outfilename = "test";
    Assembler assembler;
    assembler.assemble(infilename, outfilename);
    return 0;
}
