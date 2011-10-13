#include <string>

#include "assembler.h"
#include "compiler.h"

using namespace std;

int main()
{
    string infilename = "test.s";
    string outfilename = "test";
    assemble(infilename, outfilename);
    return 0;
}
