#include <cstdio>
#include <cstdlib>
#include <string>
#include <vector>

// If you want to understand this code, read the
// LLVM documentation on making a Kaleidoscope compiler.

enum Token {
	tok_eof = -1,
	tok_def = -2,
	tok_extern = -3,
	tok_identifier = -4,
    tok_number = -5,
};

static std::string IdentifierStr;
static double NumVal;

// Tokenizer
static int gettok()
{
	static int LastChar = ' ';
	while(isspace(LastChar))
		LastChar = getchar();

	if(isalpha(LastChar)) {
		IdentifierStr = LastChar;
		while(isalnum((LastChar = getchar())))
			IdentifierStr += LastChar;
		if(IdentifierStr == "def") return tok_def;
		if(IdentifierStr == "extern") return tok_extern;
		return tok_identifier;
	}

	if(isdigit(LastChar) || LastChar == '.') {
                std::string NumStr;
                do {
                    NumStr = LastChar;
                    LastChar = getchar();
                } while(isdigit(LastChar) || LastChar == '.');
                NumVal = strtod(NumStr.c_str(), 0);
                return tok_number;
	}

        if(LastChar == '#') {
            do LastChar = getchar();
            while (LastChar != EOF && LastChar != '\n' && LastChar != '\r');
            if(LastChar == EOF)
                return gettok();
        }

        if(LastChar == EOF)
            return tok_eof;

        int ThisChar = LastChar;
        LastChar = getchar();
        return ThisChar;
}

// Abstract Syntax Tree
class ExprAST
{
public:
    virtual ~ExprAST() { }
};

class NumberExprAST : public ExprAST
{
    double Val;
public:
    NumberExprAST(double val) : Val(val) { }
};

class VariableExprAst : public ExprAST
{
    std::string Name;
public:
    VariableExprAst(const std::string &name) : Name(name) { }
};

class BinaryExprAST : public ExprAST
{
    char Op;
    ExprAST *LHS, *RHS;
public:
    BinaryExprAST(char op, ExprAST *lhs, ExprAST *rhs) :
        Op(op), LHS(lhs), RHS(rhs) { }
};

class CallExprAst : public ExprAST
{
    std::string Callee;
    std::vector<ExprAST*> Args;
public:
    CallExprAst(const std::string &callee, std::vector<ExprAST*> &args) :
        Callee(callee), Args(args) { }
};

class PrototypeAST
{
    std::string Name;
    std::vector<std::string> Args;
public:
    PrototypeAST(const std::string &name, const std::vector<std::string> &args) :
        Name(name), Args(args) { }
};

class FunctionAST
{
    PrototypeAST *Proto;
    ExprAST *Body;
public:
    FunctionAST(PrototypeAST *proto, ExprAST *body) :
        Proto(proto), Body(body) { }
};

// Some helper methods
static int CurTok;
static int getNextTok()
{
    return CurTok = gettok();
}

ExprAST *Error(const char *Str)
{
    fprintf(stderr, "Error: %s\n", Str);
    return 0;
}

PrototypeAST *ErrorP(const char *Str)
{
    Error(Str);
    return 0;
}

FunctionAST * ErrorF(const char *Str)
{
    Error(Str);
    return 0;
}

// Basic expression parsing

int main()
{
	return 0;
}
