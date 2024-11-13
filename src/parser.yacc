%{
#include <stdio.h>
#include "TeaplAst.h"

extern A_pos pos;
extern A_program root;

extern int yylex(void);
extern "C"{
extern void yyerror(const char *s); 
extern int  yywrap();
}

%}

%union {
  A_pos pos;
  A_tokenId tokenId;
  A_tokenNum tokenNum;
  A_type type;
  A_program program;
  A_programElementList programElementList;
  A_programElement programElement;
  A_arithExpr arithExpr;
  A_exprUnit exprUnit;
  A_structDef structDef;

  A_varDeclStmt varDeclStmt;
  A_varDeclList varDeclList;
  A_varDecl varDecl;
  A_varDef varDef;

  A_rightValList rightValList;
  A_rightVal rightVal;
  A_leftVal leftVal;

  A_fnDeclStmt fnDeclStmt;
  A_fnDef fnDef;
  A_fnDecl fnDecl;
  A_paramDecl paramDecl;

  A_codeBlockStmtList codeBlockStmtList;
  A_codeBlockStmt codeBlockStmt;

  A_assignStmt assignStmt;
  A_callStmt callStmt;
  A_fnCall fnCall;
  A_ifStmt ifStmt;
  A_whileStmt whileStmt;
  A_returnStmt returnStmt;

  A_boolUnit boolUnit;
  A_boolExpr  boolExpr;
  A_boolUOpExpr boolOpExpr;
  A_boolUOpExpr boolUExpr;
  A_boolBiOp boolBiOp;
  A_boolUOp boolUOp;
  A_comOp comOp;
}

// token definitions
%token <tokenId> ID
%token <tokenNum> NUM
%token <pos> INT

// operators (order by precedence & associativity)
%token <pos> MUL
%token <pos> DIV
%token <pos> ADD
%token <pos> SUB

%token <pos> NOT    // "!"  logical not?
%token <pos> AND    // "&&"
%token <pos> OR     // "||"

%token <pos> LT     // "<"
%token <pos> LE     // "<="
%token <pos> GT     // ">"
%token <pos> GE     // ">="
%token <pos> EQ     // "=="
%token <pos> NEQ    // "!="

// we must separately handle the negative sign
%token <pos> NEG    // "-"

// system reserved keywords & symbols:
%token <pos> LPAREN     // "("
%token <pos> RPAREN     // ")"
%token <pos> LBRACE     // "{"
%token <pos> RBRACE     // "}"
%token <pos> LBRACKET   // "["
%token <pos> RBRACKET   // "]"

%token <pos> ASSIGN     // "="
%token <pos> COMMA      // ","
%token <pos> SEMICOLON  // ";"
%token <pos> COLON      // ":"
%token <pos> DOT        // "."

%token <pos> FN         // "fn"
%token <pos> ARROW      // "->"
%token <pos> LET        // "let"
%token <pos> STRUCT     // "struct"
%token <pos> BREAK      // "break"
%token <pos> CONTINUE   // "continue"
%token <pos> WHILE      // "while"
%token <pos> IF         // "if"
%token <pos> ELSE       // "else"
%token <pos> RET        // "return"

// definitions of non-terminals
%type <program> Program
%type <programElementList> ProgramElementList
%type <programElement> ProgramElement

%type <type> Type

%type <arithExpr> ArithExpr
%type <exprUnit> ExprUnit

%type <structDef> StructDef

%type <varDeclStmt> VarDeclStmt
%type <varDeclList> VarDeclList
%type <varDecl> VarDecl
%type <varDef> VarDef

%type <rightValList>  RightValList
%type <rightVal> RightVal
%type <leftVal> LeftVal

%type <fnDeclStmt> FnDeclStmt
%type <fnDef> FnDef
%type <fnDecl> FnDecl
%type <paramDecl> ParamDecl

%type <codeBlockStmtList> CodeBlock
%type <codeBlockStmtList> CodeBlockStmtList
%type <codeBlockStmt> CodeBlockStmt

%type <assignStmt> AssignStmt
%type <callStmt> CallStmt
%type <fnCall> FnCall
%type <ifStmt> IfStmt
%type <whileStmt> WhileStmt
%type <returnStmt> ReturnStmt

%type <boolUnit> BoolUnit
%type <boolExpr> BoolExpr
// %type <boolUExpr> BoolUExpr
// %type <boolBiOp> BoolBiOp
%type <boolUOp> BoolUOp
%type <comOp> ComOp

// precedence and associativity of operators
%left OR
%left AND
%left EQ NEQ
%left GT LT GE LE
%left ADD SUB
%left MUL DIV
%right NEG
%right NOT

%start Program

%%                   /* beginning of rules section */

Program: ProgramElementList 
{  
  root = A_Program($1);
  $$ = A_Program($1);
}
;

ProgramElementList: ProgramElement ProgramElementList
{
  $$ = A_ProgramElementList($1, $2);
}
|
{
  $$ = nullptr;   // handling an empty list?
}
;

ProgramElement: 
  VarDeclStmt
  {
    $$ = A_ProgramVarDeclStmt($1->pos, $1);
  }
  | StructDef
  {
    $$ = A_ProgramStructDef($1->pos, $1);
  }
  | FnDeclStmt
  {
    $$ = A_ProgramFnDeclStmt($1->pos, $1);
  }
  | FnDef
  {
    $$ = A_ProgramFnDef($1->pos, $1);
  }
  | SEMICOLON
  {
    $$ = A_ProgramNullStmt($1);
  }
  ;

Type:
  INT
  {
    $$ = A_NativeType($1, A_intTypeKind);
  }
  | ID
  {
    $$ = A_StructType($1->pos, $1->id);
  }
  ;
// ------------------- Beginning of a section

// Moved
// // A_varDeclStmt
// VarDeclStmt:
//   LET VarDecl SEMICOLON
//   {
//     $$ = A_VarDeclStmt($1, $2);
//   }
//   | LET VarDef SEMICOLON
//   {
//     $$ = A_VarDefStmt($1, $2);
//   }
//   ;

// A_structDef
StructDef:
  STRUCT ID LBRACE VarDeclList RBRACE
  {
    $$ = A_StructDef($1, $2->id, $4);
  }
  ;

// // Moved
// // A_fnDeclStmt
// FnDeclStmt:
//   ;

// // Moved
// // A_fnDef
// FnDef:
//   ;

// ------------------------- End of a section

// ------------------- Beginning of a section

VarDeclStmt:
  LET VarDecl SEMICOLON
  {
    $$ = A_VarDeclStmt($1, $2);
  }
  | LET VarDef SEMICOLON
  {
    $$ = A_VarDefStmt($1, $2);
  }
  ;

VarDeclList:
  VarDecl
  {
    $$ = A_VarDeclList($1, nullptr);
  }
  | VarDecl COMMA VarDeclList
  {
    $$ = A_VarDeclList($1, $3);
  }
  |
  {
    $$ = nullptr;
  }

VarDecl:
  ID LBRACKET NUM RBRACKET COLON Type
  {
    $$ = A_VarDecl_Array(
      $1->pos,
      A_VarDeclArray($1->pos, $1->id, $3->num, $6)
    );
  }
  | ID LBRACKET NUM RBRACKET
  {
    $$ = A_VarDecl_Array(
      $1->pos,
      A_VarDeclArray($1->pos, $1->id, $3->num, nullptr)
    );
  }
  | ID COLON Type
  {
    $$ = A_VarDecl_Scalar(
      $1->pos,
      A_VarDeclScalar($1->pos, $1->id, $3)
    );
  }
  | ID
  {
    $$ = A_VarDecl_Scalar(
      $1->pos,
      A_VarDeclScalar($1->pos, $1->id, nullptr)
    );
  }
  ;

VarDef:
  ID LBRACKET NUM RBRACKET COLON Type ASSIGN LBRACE RightValList RBRACE
  {
    // array w/o typing
    $$ = A_VarDef_Array(
      $1->pos,
      A_VarDefArray($1->pos, $1->id, $3->num, $6, $9)
    );
  }
  | ID LBRACKET NUM RBRACKET ASSIGN LBRACE RightValList RBRACE
  {
    // array w/o typing
    $$ = A_VarDef_Array(
      $1->pos,
      A_VarDefArray($1->pos, $1->id, $3->num, nullptr, $7)
    );
  }
  | ID COLON Type ASSIGN RightVal
  {
    // w/ typing
    $$ = A_VarDef_Scalar(
      $1->pos, 
      A_VarDefScalar($1->pos, $1->id, $3, $5)
    );
  }
  | ID ASSIGN RightVal
  {
    // w/o typing
    $$ = A_VarDef_Scalar(
      $1->pos, 
      A_VarDefScalar($1->pos, $1->id, nullptr, $3)
    );
  }
  ;

// ------------------------- End of a section

// ------------------- Beginning of a section
// Right and left Values

RightValList:
  RightVal
  {
    $$ = A_RightValList($1, nullptr);
  }
  | RightVal COMMA RightValList
  {
    $$ = A_RightValList($1, $3);
  }
  |
  {
    // empty
    $$ = nullptr;
  }
  ;

RightVal:
  ArithExpr
  {
    $$ = A_ArithExprRVal($1->pos, $1);
  }
  ;

LeftVal:
  ID
  {
    $$ = A_IdExprLVal($1->pos, $1->id);
  }
  | LeftVal LBRACKET ID RBRACKET
  {
    $$ = A_ArrExprLVal(
      $1->pos,
      A_ArrayExpr($2, $1, A_IdIndexExpr($3->pos, $3->id))
    );
  }
  | LeftVal LBRACKET NUM RBRACKET
  {
    $$ = A_ArrExprLVal(
      $1->pos,
      A_ArrayExpr($2, $1, A_NumIndexExpr($3->pos, $3->num))
    );
  }
  | LeftVal DOT ID
  {
    $$ = A_MemberExprLVal(
      $1->pos, A_MemberExpr($2, $1, $3->id)
    );
  }
  ;

// ------------------------- End of a section

// ------------------- Beginning of a section
// Function declaration and definition

FnDeclStmt:
  FnDecl SEMICOLON
  {
    $$ = A_FnDeclStmt($1->pos, $1);
  }
  ;

FnDecl:
  FN ID LPAREN ParamDecl RPAREN ARROW Type
  {
    $$ = A_FnDecl($1, $2->id, $4, $7);
  }
  | FN ID LPAREN ParamDecl RPAREN
  {
    // no typing information
    $$ = A_FnDecl($1, $2->id, $4, nullptr);
  }
  ;

ParamDecl:
  VarDeclList
  {
    $$ = A_ParamDecl($1);
  }
  ;

FnDef:
  FnDecl CodeBlock
  {
    $$ = A_FnDef($1->pos, $1, $2);
  }
  ;

// ------------------------- End of a section

// ------------------- Beginning of a section
// Codeblocks!

// Note that in the definitions of Teapl, a codeBlock &
// a clockBlockList is defined (but we only have codeBlockLists defined in the headers)

CodeBlock:
  LBRACE CodeBlockStmtList RBRACE
  {
    $$ = $2;
  }
  ;

CodeBlockStmtList:
  {
    $$ = nullptr;
  }
  | CodeBlockStmt CodeBlockStmtList
  {
    $$ = A_CodeBlockStmtList($1, $2);
  }
  ;

// A_codeBlockStmt
/*
A_codeBlockStmt A_BlockNullStmt(A_pos pos);
A_codeBlockStmt A_BlockVarDeclStmt(A_pos pos, A_varDeclStmt varDeclStmt);
A_codeBlockStmt A_BlockAssignStmt(A_pos pos, A_assignStmt assignStmt);
A_codeBlockStmt A_BlockCallStmt(A_pos pos, A_callStmt callStmt);
A_codeBlockStmt A_BlockIfStmt(A_pos pos, A_ifStmt ifStmt);
A_codeBlockStmt A_BlockWhileStmt(A_pos pos, A_whileStmt whileStmt);
A_codeBlockStmt A_BlockReturnStmt(A_pos pos, A_returnStmt returnStmt);
A_codeBlockStmt A_BlockContinueStmt(A_pos pos);
A_codeBlockStmt A_BlockBreakStmt(A_pos pos);
*/
CodeBlockStmt:
  VarDeclStmt
  {
    // Already defined before, the rest statements will be defined in the section below
    $$ = A_BlockVarDeclStmt($1->pos, $1);
  }
  | AssignStmt
  {
    $$ = A_BlockAssignStmt($1->pos, $1);
  }
  | CallStmt
  {
    $$ = A_BlockCallStmt($1->pos, $1);
  }
  | IfStmt
  {
    $$ = A_BlockIfStmt($1->pos, $1);
  }
  | WhileStmt
  {
    $$ = A_BlockWhileStmt($1->pos, $1);
  }
  | ReturnStmt
  {
    $$ = A_BlockReturnStmt($1->pos, $1);
  }
  | CONTINUE SEMICOLON
  {
    $$ = A_BlockContinueStmt($1);
  }
  | BREAK SEMICOLON
  {
    $$ = A_BlockBreakStmt($1);
  }
  | SEMICOLON
  {
    $$ = A_BlockNullStmt($1);
  }
  ;

// ------------------------- End of a section

// ------------------- Beginning of a section
// Grammar rules for the code block statements

AssignStmt:
  LeftVal ASSIGN RightVal SEMICOLON
  {
    $$ = A_AssignStmt($2, $1, $3);
  }
  ;

CallStmt:
  FnCall SEMICOLON
  {
    $$ = A_CallStmt($1->pos, $1);
  }
  ;

FnCall:
  ID LPAREN RightValList RPAREN
  {
    $$ = A_FnCall($1->pos, $1->id, $3);
  }
  ;

// Bool expressions are defined in the sections below this one


// IF-ELSE STATEMENTS
/*
ifStmt := < if > boolUnit_ codeBlock ( < else > codeBlock | ϵ )
*/
IfStmt:
  IF BoolUnit CodeBlock //empty
  { 
    $$ = A_IfStmt($1, $2, $3, nullptr);
  }
  | IF BoolUnit CodeBlock ELSE CodeBlock
  {
    $$ = A_IfStmt($1, $2, $3, $5);
  }
  ;

WhileStmt:
  WHILE BoolUnit CodeBlock
  {
    $$ = A_WhileStmt($1, $2, $3);
  }
  ;

ReturnStmt:
  RET RightVal SEMICOLON
  {
    $$ = A_ReturnStmt($1, $2);
  }
  | RET SEMICOLON
  {
    $$ = A_ReturnStmt($1, nullptr);
  }
  ;


ArithExpr: ArithExpr ADD ArithExpr
{
  $$ = A_ArithBiOp_Expr($1->pos, A_ArithBiOpExpr($1->pos, A_add, $1, $3));
}
| ArithExpr SUB ArithExpr
{
  $$ = A_ArithBiOp_Expr($1->pos, A_ArithBiOpExpr($1->pos, A_sub, $1, $3));
}
| ArithExpr MUL ArithExpr
{
  $$ = A_ArithBiOp_Expr($1->pos, A_ArithBiOpExpr($1->pos, A_mul, $1, $3));
}
| ArithExpr DIV ArithExpr
{
  $$ = A_ArithBiOp_Expr($1->pos, A_ArithBiOpExpr($1->pos, A_div, $1, $3));
}
| ExprUnit
{
  $$ = A_ExprUnit($1->pos, $1);
}
;

/*
Return type: A_exprUnit
*/
ExprUnit:
  /*
  exprUnit :=  num | id | < ( > arithExpr < ) > | fnCall | leftVal < [ > id | num < ] > | leftVal < . > id

  A_exprUnit A_NumExprUnit(A_pos pos, int num);
  A_exprUnit A_IdExprUnit(A_pos pos, char* id);
  A_exprUnit A_ArithExprUnit(A_pos pos, A_arithExpr arithExpr);
  A_exprUnit A_CallExprUnit(A_pos pos, A_fnCall callExpr);
  A_exprUnit A_ArrayExprUnit(A_pos pos, A_arrayExpr arrayExpr);
  A_exprUnit A_MemberExprUnit(A_pos pos, A_memberExpr memberExpr);
  A_exprUnit A_ArithUExprUnit(A_pos pos, A_arithUExpr arithUExpr);
  */
  NUM
  {
    /*
    A_exprUnitType: A_numExprKind
    */
    $$ = A_NumExprUnit($1->pos, $1->num);
  }
  | ID
  {
    /*
    A_exprUnitType: A_idExprKind
    */
    $$ = A_IdExprUnit($1->pos, $1->id);
  }
  | LPAREN ArithExpr RPAREN
  {
    /*
    A_exprUnitType: A_arithExprKind
    */
    $$ = A_ArithExprUnit($2->pos, $2);
  }
  | FnCall
  {
    $$ = A_CallExprUnit($1->pos, $1);
  }
  | LeftVal LBRACKET ID RBRACKET
  {
    $$ = A_ArrayExprUnit(
      $1->pos,
      A_ArrayExpr($2, $1, A_IdIndexExpr($3->pos, $3->id))
    );
  }
  | LeftVal LBRACKET NUM RBRACKET
  {
    $$ = A_ArrayExprUnit(
      $1->pos,
      A_ArrayExpr($2, $1, A_NumIndexExpr($3->pos, $3->num))
    );
  }
  | LeftVal DOT ID
  {
    $$ = A_MemberExprUnit(
      $1->pos,
      A_MemberExpr($2, $1, $3->id)
    );
  }
  | SUB ExprUnit %prec NEG
  {
    if ($2->kind == A_numExprKind) {
      $$ = A_NumExprUnit($2->pos, -($2->u.num));
    } else {
      $$ = A_ArithUExprUnit(
        $1,
        A_ArithUExpr($1, A_neg, $2)
      );
    }
  }
  ;

// BOOLEAN

// A_boolUnit
/*
A_boolUnit A_ComExprUnit(A_pos pos, A_comExpr comExpr);
A_boolUnit A_BoolExprUnit(A_pos pos, A_boolExpr boolExpr);
A_boolUnit A_BoolUOpExprUnit(A_pos pos, A_boolUOpExpr boolUOpExpr);

boolUnit_ := < ( > exprUnit comOp exprUnit < ) > | < ( > boolExpr < ) > | < ( > boolUOp boolUnit < ) >
*/
BoolUnit:
  LPAREN ExprUnit ComOp ExprUnit RPAREN
  {
    A_comExpr comExpr = A_ComExpr($2->pos, $3, $2, $4);
    $$ = A_ComExprUnit($2->pos, comExpr);
  }
  | LPAREN BoolExpr RPAREN
  {
    $$ = A_BoolExprUnit($2->pos, $2);
  }
  | LPAREN BoolUOp BoolUnit RPAREN
  {
    A_boolUOpExpr boolUOpExpr = A_BoolUOpExpr($3->pos, $2, $3);
    $$ = A_BoolUOpExprUnit($3->pos, boolUOpExpr);
    // $$ = A_BoolUOpExprUnit($2->pos, $2);
  }
  ;

// A_boolExpr
// BoolExpr:
//   BoolExpr BoolBiOp BoolExpr
//   {
//     A_boolBiOpExpr boolBiOpExpr = A_BoolBiOpExpr($1->pos, $2, $1, $3);
//     $$ = A_BoolBiOp_Expr($1->pos, boolBiOpExpr);
//   }
//   | BoolUnit
//   {
//     $$ = A_BoolExpr($1->pos, $1);
//   }
BoolExpr:
  BoolExpr AND BoolExpr
  {
    $$ = A_BoolBiOp_Expr($1->pos, A_BoolBiOpExpr($1->pos, A_and, $1, $3));
  }
  | BoolExpr OR BoolExpr
  {
    $$ = A_BoolBiOp_Expr($1->pos, A_BoolBiOpExpr($1->pos, A_or, $1, $3));
  }
  | BoolUnit
  {
    $$ = A_BoolExpr($1->pos, $1);
  }

// // A_boolUOpExpr
// BoolUExpr:
//   BoolUOp BoolUExpr
//   {
//     $$ = A_BoolUOpExpr($2->pos, $1, $2);
//   }
//   | BoolUnit
//   {
//     $$ = A_BoolExpr($1->pos, $1);
//   }

// A_boolBiOp;
// BoolBiOp:
//   AND
//   {
//     $$ = A_and;
//   }
//   | OR
//   {
//     $$ A_or;
//   }
//   ;

// A_boolUOp
BoolUOp:
  NOT
  {
    $$ = A_not;
  }
  ;

// A_comOp
ComOp:
  LT
  {
    $$ = A_lt;
  }
  | LE
  {
    $$ = A_le;
  }
  | GT
  {
    $$ = A_gt;
  }
  | GE
  {
    $$ = A_ge;
  }
  | EQ
  {
    $$ = A_eq;
  }
  | NEQ
  {
    $$ = A_ne;
  }
  ;

%%

extern "C"{
void yyerror(const char * s)
{
  fprintf(stderr, "%s\n",s);
}
int yywrap()
{
  return(1);
}
}
