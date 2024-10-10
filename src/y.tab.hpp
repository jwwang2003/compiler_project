/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_HPP_INCLUDED
# define YY_YY_Y_TAB_HPP_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    ID = 258,                      /* ID  */
    NUM = 259,                     /* NUM  */
    INT = 260,                     /* INT  */
    MUL = 261,                     /* MUL  */
    DIV = 262,                     /* DIV  */
    ADD = 263,                     /* ADD  */
    SUB = 264,                     /* SUB  */
    NOT = 265,                     /* NOT  */
    AND = 266,                     /* AND  */
    OR = 267,                      /* OR  */
    LT = 268,                      /* LT  */
    LE = 269,                      /* LE  */
    GT = 270,                      /* GT  */
    GE = 271,                      /* GE  */
    EQ = 272,                      /* EQ  */
    NEQ = 273,                     /* NEQ  */
    NEG = 274,                     /* NEG  */
    LPAREN = 275,                  /* LPAREN  */
    RPAREN = 276,                  /* RPAREN  */
    LBRACE = 277,                  /* LBRACE  */
    RBRACE = 278,                  /* RBRACE  */
    LBRACKET = 279,                /* LBRACKET  */
    RBRACKET = 280,                /* RBRACKET  */
    ASSIGN = 281,                  /* ASSIGN  */
    COMMA = 282,                   /* COMMA  */
    SEMICOLON = 283,               /* SEMICOLON  */
    COLON = 284,                   /* COLON  */
    DOT = 285,                     /* DOT  */
    FN = 286,                      /* FN  */
    ARROW = 287,                   /* ARROW  */
    LET = 288,                     /* LET  */
    STRUCT = 289,                  /* STRUCT  */
    BREAK = 290,                   /* BREAK  */
    CONTINUE = 291,                /* CONTINUE  */
    WHILE = 292,                   /* WHILE  */
    IF = 293,                      /* IF  */
    ELSE = 294,                    /* ELSE  */
    RET = 295                      /* RET  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define ID 258
#define NUM 259
#define INT 260
#define MUL 261
#define DIV 262
#define ADD 263
#define SUB 264
#define NOT 265
#define AND 266
#define OR 267
#define LT 268
#define LE 269
#define GT 270
#define GE 271
#define EQ 272
#define NEQ 273
#define NEG 274
#define LPAREN 275
#define RPAREN 276
#define LBRACE 277
#define RBRACE 278
#define LBRACKET 279
#define RBRACKET 280
#define ASSIGN 281
#define COMMA 282
#define SEMICOLON 283
#define COLON 284
#define DOT 285
#define FN 286
#define ARROW 287
#define LET 288
#define STRUCT 289
#define BREAK 290
#define CONTINUE 291
#define WHILE 292
#define IF 293
#define ELSE 294
#define RET 295

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 16 "parser.yacc"

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

#line 192 "y.tab.hpp"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_HPP_INCLUDED  */
