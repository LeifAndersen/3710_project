#include <iostream>
#include <fstream>
#include <streambuf>
#include <vector>
#include <string>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>

#include "instructions.h"

using namespace std;

void assemble(string inFileName, string outFileName)
{
    ifstream infile;
    ofstream outfile;
    infile.open(inFileName.c_str());
    outfile.open(outFileName.c_str());

    string line;
    string command;

    while(getline(infile, line)) {
        command = line;
        switch(5) {
        case ADD:
            break;
        default:
            break;
        }
    }

    infile.close();
    outfile.close();
}

int main()
{
    string infilename = "test.s";
    string outfilename = "test";
    assemble(infilename, outfilename);
    return 0;
}
