#include <cstdio>
#include <cstdlib>
#include <string>
#include <vector>
#include <map>

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

// Abstract Syntax Tree, for recursive descent parsing
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
static int getNextToken()
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

static ExprAST *ParseExpression();

static ExprAST *ParseNumberExpr()
{
    ExprAST *Result = new NumberExprAST(NumVal);
    getNextToken();
    return Result;
}

static ExprAST *ParseParenExpr()
{
    getNextToken();  // eat '('.
    ExprAST *V = ParseExpression();
    if(!V)
        return 0;
    if(CurTok != ')')
        return Error("expected )");
    getNextToken();
    return V;
}

static ExprAST *ParseIdentifierExpr()
{
    std::string IdName = IdentifierStr;
    getNextToken();

    // variable
    if(CurTok != '(')
        return new VariableExprAst(IdName);

    // function
    getNextToken();
    std::vector<ExprAST*> Args;
    if(CurTok != ')') {
        while(1) {
            ExprAST *Arg = ParseExpression();
            if(!Arg) return 0;
            Args.push_back(Arg);
            if(CurTok == ')') break;
            if(CurTok != ',')
                return Error("Expected ) or , in arguement list");
            getNextToken();
        }
    }

    getNextToken(); // Eat closing ')'.
    return new CallExprAst(IdName, Args);
}

static ExprAST *ParsePrimary()
{
    switch(CurTok) {
    case '(':
        return ParseParenExpr();
    case tok_identifier:
        return ParseIdentifierExpr();
    case tok_number:
        return ParseNumberExpr();
    default:
        return Error("unkown token when expecting an expression");
    }
}

// Operator precidence parsing (binary operators)

static int getTokPrecedence()
{
    if(!isascii(CurTok))
        return -1;
    switch(CurTok) {
    case '<':
        return 10;
    case '+':
        return 20;
    case '-':
        return 20;
    case '*':
        return 40;
    default:
        return -1;
    }
}

static ExprAST *ParseBinOpRHS(int ExprPrec, ExprAST *LHS)
{
    while(1) {
        int TocPrec = getTokPrecedence();
        if(TocPrec < ExprPrec)
            return LHS;

        // We can eat the token
        int Binop = CurTok;
        getNextToken();

        // Parse the primary expression after the RHS
        ExprAST *RHS = ParsePrimary();
        if(!RHS) return 0;

        // Determin precidence (way op should be applied)
        int NextPrec = getTokPrecedence();
        if(TocPrec < NextPrec) {
            RHS = ParseBinOpRHS(TocPrec+1, RHS);
            if(RHS == 0) return 0;
        }

        LHS = new BinaryExprAST(Binop, LHS, RHS);
    }
}

static ExprAST *ParseExpression() {
    ExprAST *LHS = ParsePrimary();
    if(!LHS) return 0;
    return ParseBinOpRHS(0, LHS);
}

int main()
{
}
