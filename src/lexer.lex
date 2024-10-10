%{
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include "TeaplAst.h"
#include "y.tab.hpp"
extern int line, col;
int c;
int calc(const char *s, int len);

// macro for comparing works to tokens
#define _token_comp(word, token, ret_val) if(strcmp(word, token) == 0) return ret_val

int get_keyword_token(const char* word);

// // Function to check if a given string is a reserved keyword
// int is_keyword(const char* id) {
//     // Reserved keywords
//     if (strcmp(id, "int") == 0) return INT;
//     if (strcmp(id, "fn") == 0) return FN;
//     if (strcmp(id, "let") == 0) return LET;
//     if (strcmp(id, "while") == 0) return WHILE;
//     if (strcmp(id, "if") == 0) return IF;
//     if (strcmp(id, "else") == 0) return ELSE;
//     if (strcmp(id, "ret") == 0) return RETURN;
//     if (strcmp(id, "struct") == 0) return STRUCT;
//     return 0;  // Not a keyword
// }

#define helper(token) col += yyleng; return token
%}

%option noyywrap

%start COMMENT1 COMMENT2

DIGIT   [0-9]
DIGIT_  [1-9]
ID_HEAD [a-zA-Z_]
ID_CONT [a-zA-Z_0-9]
WS      [ \t]
NEWLINE \n
COMMENT "//".*

%%

<INITIAL>"//"       { BEGIN COMMENT1; }
<COMMENT1>.         { col += yyleng; }
<COMMENT1>{NEWLINE} { BEGIN INITIAL; }

<INITIAL>"/*"       { BEGIN COMMENT2; }
<COMMENT2>{NEWLINE} { line++; col = 1; }
<COMMENT2>.         { col += yyleng; }
<COMMENT2>"*/"      { BEGIN INITIAL; }


<INITIAL>{WS}+      { col += yyleng; }
<INITIAL>{NEWLINE}  { line++; col = 1; }

<INITIAL>{COMMENT}  { col += yyleng; }


<INITIAL>"=="       { helper(EQ); }
<INITIAL>"!="       { helper(NEQ); }
<INITIAL>"<"        { helper(LT); }
<INITIAL>"<="       { helper(LE); }
<INITIAL>">"        { helper(GT); }
<INITIAL>">="       { helper(GE); }
<INITIAL>"&&"       { helper(AND); }
<INITIAL>"||"       { helper(OR); }
<INITIAL>"!"        { helper(NOT); }
<INITIAL>"+"        { helper(ADD); }
<INITIAL>"-"        { helper(SUB); }
<INITIAL>"*"        { helper(MUL); }
<INITIAL>"/"        { helper(DIV); }
<INITIAL>";"        { helper(SEMICOLON); }
<INITIAL>"("        { helper(LPAREN); }
<INITIAL>")"        { helper(RPAREN); }
<INITIAL>"["        { helper(LBRACKET); }
<INITIAL>"]"        { helper(RBRACKET); }
<INITIAL>"{"        { helper(LBRACE); }
<INITIAL>"}"        { helper(RBRACE); }
<INITIAL>","        { helper(COMMA); }
<INITIAL>"."        { helper(DOT); }
<INITIAL>":"        { helper(COLON); }
<INITIAL>"="        { helper(ASSIGN); }
<INITIAL>"->"       { helper(ARROW); }

<INITIAL>{ID_HEAD}{ID_CONT}* {
    // double-check if this is a keyword
    int token = get_keyword_token(yytext);
    if (token) {
        // if the return value is non-zero, then a system reserved token was captured
        // logic is exactly the same as the rule above
        A_pos pos = A_Pos(line, col);
        col += yyleng;
        int token = get_keyword_token(yytext);
        if (token == INT) {
            // currently, the only supported built-in types are INTs
            yylval.type = A_NativeType(pos, A_intTypeKind);
        } else {
            // every system reserved token will have a pos
            yylval.pos = pos;
        }
        return token;
    } else {
        // non-system token
        yylval.tokenId = A_TokenId(A_Pos(line, col), strdup(yytext));
        col += yyleng;
        return ID;
    }
}

<INITIAL>{DIGIT_}{DIGIT}* {
    yylval.tokenNum = A_TokenNum(A_Pos(line, col), calc(yytext, yyleng));
    col += yyleng;
    return NUM;
}

<INITIAL>0 {
    yylval.tokenNum = A_TokenNum(A_Pos(line, col), 0);
    ++col;
    return NUM;
}

<INITIAL>.  {
    fprintf(stderr, "[ERROR] Encountered an unknown character: %s at line %d, col %d\n", yytext, line, col);
    fprintf(stderr, "Disregarding & continuing...");
    col += yyleng;
}

%%

// This function takes a string of digits and its length as input, and returns the integer value of the string.
int calc(const char *s, int len) {
    int ret = 0;
    for(int i = 0; i < len; i++)
        ret = ret * 10 + (s[i] - '0');
    return ret;
}

int get_keyword_token(const char* word) {
    _token_comp(word, "struct", STRUCT);
    _token_comp(word, "let", LET);
    _token_comp(word, "fn", FN);
    _token_comp(word, "if", IF);
    _token_comp(word, "else", ELSE);
    _token_comp(word, "while", WHILE);
    _token_comp(word, "ret", RET);
    _token_comp(word, "continue", CONTINUE);
    _token_comp(word, "break", BREAK);
    _token_comp(word, "and", AND);
    _token_comp(word, "or", OR);
    _token_comp(word, "not", NOT);
    _token_comp(word, "int", INT);
    return 0;   // not a system reserved keyword
}