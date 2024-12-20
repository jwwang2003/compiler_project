/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "parser.yacc"

#include <stdio.h>
#include "TeaplAst.h"

extern A_pos pos;
extern A_program root;

extern int yylex(void);
extern "C"{
extern void yyerror(const char *s); 
extern int  yywrap();
}


#line 86 "y.tab.cpp"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "y.tab.hpp"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_ID = 3,                         /* ID  */
  YYSYMBOL_NUM = 4,                        /* NUM  */
  YYSYMBOL_INT = 5,                        /* INT  */
  YYSYMBOL_MUL = 6,                        /* MUL  */
  YYSYMBOL_DIV = 7,                        /* DIV  */
  YYSYMBOL_ADD = 8,                        /* ADD  */
  YYSYMBOL_SUB = 9,                        /* SUB  */
  YYSYMBOL_NOT = 10,                       /* NOT  */
  YYSYMBOL_AND = 11,                       /* AND  */
  YYSYMBOL_OR = 12,                        /* OR  */
  YYSYMBOL_LT = 13,                        /* LT  */
  YYSYMBOL_LE = 14,                        /* LE  */
  YYSYMBOL_GT = 15,                        /* GT  */
  YYSYMBOL_GE = 16,                        /* GE  */
  YYSYMBOL_EQ = 17,                        /* EQ  */
  YYSYMBOL_NEQ = 18,                       /* NEQ  */
  YYSYMBOL_NEG = 19,                       /* NEG  */
  YYSYMBOL_LPAREN = 20,                    /* LPAREN  */
  YYSYMBOL_RPAREN = 21,                    /* RPAREN  */
  YYSYMBOL_LBRACE = 22,                    /* LBRACE  */
  YYSYMBOL_RBRACE = 23,                    /* RBRACE  */
  YYSYMBOL_LBRACKET = 24,                  /* LBRACKET  */
  YYSYMBOL_RBRACKET = 25,                  /* RBRACKET  */
  YYSYMBOL_ASSIGN = 26,                    /* ASSIGN  */
  YYSYMBOL_COMMA = 27,                     /* COMMA  */
  YYSYMBOL_SEMICOLON = 28,                 /* SEMICOLON  */
  YYSYMBOL_COLON = 29,                     /* COLON  */
  YYSYMBOL_DOT = 30,                       /* DOT  */
  YYSYMBOL_FN = 31,                        /* FN  */
  YYSYMBOL_ARROW = 32,                     /* ARROW  */
  YYSYMBOL_LET = 33,                       /* LET  */
  YYSYMBOL_STRUCT = 34,                    /* STRUCT  */
  YYSYMBOL_BREAK = 35,                     /* BREAK  */
  YYSYMBOL_CONTINUE = 36,                  /* CONTINUE  */
  YYSYMBOL_WHILE = 37,                     /* WHILE  */
  YYSYMBOL_IF = 38,                        /* IF  */
  YYSYMBOL_ELSE = 39,                      /* ELSE  */
  YYSYMBOL_RET = 40,                       /* RET  */
  YYSYMBOL_YYACCEPT = 41,                  /* $accept  */
  YYSYMBOL_Program = 42,                   /* Program  */
  YYSYMBOL_ProgramElementList = 43,        /* ProgramElementList  */
  YYSYMBOL_ProgramElement = 44,            /* ProgramElement  */
  YYSYMBOL_Type = 45,                      /* Type  */
  YYSYMBOL_StructDef = 46,                 /* StructDef  */
  YYSYMBOL_VarDeclStmt = 47,               /* VarDeclStmt  */
  YYSYMBOL_VarDeclList = 48,               /* VarDeclList  */
  YYSYMBOL_VarDecl = 49,                   /* VarDecl  */
  YYSYMBOL_VarDef = 50,                    /* VarDef  */
  YYSYMBOL_RightValList = 51,              /* RightValList  */
  YYSYMBOL_RightVal = 52,                  /* RightVal  */
  YYSYMBOL_LeftVal = 53,                   /* LeftVal  */
  YYSYMBOL_FnDeclStmt = 54,                /* FnDeclStmt  */
  YYSYMBOL_FnDecl = 55,                    /* FnDecl  */
  YYSYMBOL_ParamDecl = 56,                 /* ParamDecl  */
  YYSYMBOL_FnDef = 57,                     /* FnDef  */
  YYSYMBOL_CodeBlock = 58,                 /* CodeBlock  */
  YYSYMBOL_CodeBlockStmtList = 59,         /* CodeBlockStmtList  */
  YYSYMBOL_CodeBlockStmt = 60,             /* CodeBlockStmt  */
  YYSYMBOL_AssignStmt = 61,                /* AssignStmt  */
  YYSYMBOL_CallStmt = 62,                  /* CallStmt  */
  YYSYMBOL_FnCall = 63,                    /* FnCall  */
  YYSYMBOL_IfStmt = 64,                    /* IfStmt  */
  YYSYMBOL_WhileStmt = 65,                 /* WhileStmt  */
  YYSYMBOL_ReturnStmt = 66,                /* ReturnStmt  */
  YYSYMBOL_ArithExpr = 67,                 /* ArithExpr  */
  YYSYMBOL_ExprUnit = 68,                  /* ExprUnit  */
  YYSYMBOL_BoolUnit = 69,                  /* BoolUnit  */
  YYSYMBOL_BoolExpr = 70,                  /* BoolExpr  */
  YYSYMBOL_BoolUOp = 71,                   /* BoolUOp  */
  YYSYMBOL_ComOp = 72                      /* ComOp  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  18
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   165

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  41
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  32
/* YYNRULES -- Number of rules.  */
#define YYNRULES  84
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  163

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   295


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   169,   169,   176,   181,   187,   191,   195,   199,   203,
     210,   214,   236,   257,   261,   268,   272,   277,   282,   289,
     296,   303,   313,   321,   329,   337,   353,   357,   362,   369,
     376,   380,   387,   394,   408,   415,   419,   427,   434,   449,
     456,   459,   478,   483,   487,   491,   495,   499,   503,   507,
     511,   523,   530,   537,   551,   555,   562,   569,   573,   580,
     584,   588,   592,   596,   617,   624,   631,   638,   642,   649,
     656,   663,   687,   692,   696,   716,   720,   724,   754,   762,
     766,   770,   774,   778,   782
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "ID", "NUM", "INT",
  "MUL", "DIV", "ADD", "SUB", "NOT", "AND", "OR", "LT", "LE", "GT", "GE",
  "EQ", "NEQ", "NEG", "LPAREN", "RPAREN", "LBRACE", "RBRACE", "LBRACKET",
  "RBRACKET", "ASSIGN", "COMMA", "SEMICOLON", "COLON", "DOT", "FN",
  "ARROW", "LET", "STRUCT", "BREAK", "CONTINUE", "WHILE", "IF", "ELSE",
  "RET", "$accept", "Program", "ProgramElementList", "ProgramElement",
  "Type", "StructDef", "VarDeclStmt", "VarDeclList", "VarDecl", "VarDef",
  "RightValList", "RightVal", "LeftVal", "FnDeclStmt", "FnDecl",
  "ParamDecl", "FnDef", "CodeBlock", "CodeBlockStmtList", "CodeBlockStmt",
  "AssignStmt", "CallStmt", "FnCall", "IfStmt", "WhileStmt", "ReturnStmt",
  "ArithExpr", "ExprUnit", "BoolUnit", "BoolExpr", "BoolUOp", "ComOp", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-113)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-34)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
       8,  -113,     9,    24,    48,    90,  -113,     8,  -113,  -113,
    -113,    39,  -113,    45,    79,    87,    91,    71,  -113,  -113,
      22,  -113,  -113,   117,   118,    60,   111,  -113,  -113,   117,
     101,  -113,    95,    96,   105,   105,     6,  -113,    61,   103,
      22,  -113,  -113,    99,  -113,  -113,  -113,    80,  -113,   102,
     107,   106,    46,  -113,    60,    60,  -113,    44,  -113,   104,
    -113,  -113,  -113,   108,   109,    60,  -113,  -113,    20,   113,
     113,  -113,   110,    16,    60,   127,  -113,  -113,  -113,   129,
     111,   117,   112,    23,  -113,    75,    74,   133,    60,    60,
      60,    60,    60,  -113,   116,   114,  -113,    20,    84,  -113,
      10,   105,  -113,   115,  -113,   120,   121,   119,  -113,   123,
    -113,  -113,   111,   128,   111,  -113,   124,   126,    62,  -113,
    -113,   100,   100,  -113,  -113,    60,    84,  -113,  -113,  -113,
    -113,  -113,  -113,    60,   105,   105,  -113,   122,   113,  -113,
    -113,  -113,   130,  -113,    60,   131,    64,    65,  -113,   132,
    -113,   141,  -113,  -113,   111,   135,   134,  -113,  -113,  -113,
      60,   137,  -113
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       4,     9,     0,     0,     0,     0,     2,     4,     6,     5,
       7,     0,     8,     0,    21,     0,     0,     0,     1,     3,
      40,    34,    38,    17,     0,     0,     0,    13,    14,    17,
      30,    50,     0,     0,     0,     0,     0,    42,     0,     0,
      40,    43,    44,     0,    45,    46,    47,    21,    37,    15,
       0,     0,    65,    64,     0,     0,    25,     0,    67,    29,
      63,    11,    10,    20,     0,    28,    49,    48,     0,     0,
       0,    58,     0,     0,     0,     0,    39,    41,    52,     0,
       0,    17,    36,    19,    71,     0,     0,     0,     0,     0,
       0,     0,     0,    12,     0,    26,    78,     0,     0,    77,
       0,     0,    56,    54,    57,     0,     0,     0,    33,     0,
      20,    16,     0,     0,     0,    66,     0,     0,    70,    61,
      62,    59,    60,    24,    53,    28,    63,    79,    80,    81,
      82,    83,    84,     0,     0,     0,    73,     0,     0,    31,
      32,    51,    19,    35,    28,    18,    68,    69,    27,     0,
      75,    76,    74,    55,     0,     0,     0,    72,    18,    23,
      28,     0,    22
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -113,  -113,   148,  -113,   -79,  -113,   -12,   -25,   136,  -113,
    -112,   -20,    -3,  -113,  -113,  -113,  -113,   -67,   125,  -113,
    -113,  -113,    -2,  -113,  -113,  -113,   -44,   -54,   -28,   -17,
    -113,  -113
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,     5,     6,     7,    63,     8,     9,    48,    49,    16,
      94,    95,    57,    10,    11,    50,    12,    22,    39,    40,
      41,    42,    58,    44,    45,    46,    59,    60,    99,   100,
     101,   133
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      84,   110,   102,   103,    64,    56,    69,    70,    37,    52,
      53,    85,    13,   148,    98,    54,    72,    38,    43,   105,
     106,   134,   135,    52,    53,    30,    55,    14,    37,    54,
      96,   136,   155,   143,    71,   145,     1,    38,    43,     2,
      97,     3,     4,   126,   119,   120,   121,   122,   161,   113,
      31,    17,   114,    85,   107,     3,   111,    32,    33,    34,
      35,    20,    36,    52,    53,    23,    65,    21,    86,    54,
     -30,   153,   123,   137,    87,   158,   -30,   116,   117,   149,
      55,    88,    89,    90,    91,    73,   -33,    74,   -31,   -32,
      18,    75,   -33,    29,   -31,   -32,   115,   127,   128,   129,
     130,   131,   132,    24,    79,    25,    88,    89,    26,    80,
      88,    89,    90,    91,    61,    27,    62,   150,   151,    28,
      47,    65,    51,    66,    67,    68,    76,    78,    82,    81,
     108,    83,    93,   109,    92,    20,   118,   124,   104,    15,
       0,   125,     0,   152,   112,   139,   140,   141,   142,   146,
     144,   147,   134,   157,   138,    19,   160,   156,   159,   154,
     162,     0,     0,     0,     0,    77
};

static const yytype_int16 yycheck[] =
{
      54,    80,    69,    70,    29,    25,    34,    35,    20,     3,
       4,    55,     3,   125,    68,     9,    36,    20,    20,     3,
       4,    11,    12,     3,     4,     3,    20,     3,    40,     9,
      10,    21,   144,   112,    28,   114,    28,    40,    40,    31,
      20,    33,    34,    97,    88,    89,    90,    91,   160,    26,
      28,     3,    29,    97,    74,    33,    81,    35,    36,    37,
      38,    22,    40,     3,     4,    20,    20,    28,    24,     9,
      24,   138,    92,   101,    30,   154,    30,     3,     4,   133,
      20,     6,     7,     8,     9,    24,    24,    26,    24,    24,
       0,    30,    30,    22,    30,    30,    21,    13,    14,    15,
      16,    17,    18,    24,    24,    26,     6,     7,    29,    29,
       6,     7,     8,     9,     3,    28,     5,   134,   135,    28,
       3,    20,     4,    28,    28,    20,    23,    28,    21,    27,
       3,    25,    23,     4,    26,    22,     3,    21,    28,     3,
      -1,    27,    -1,    21,    32,    25,    25,    28,    25,    25,
      22,    25,    11,    21,    39,     7,    22,    26,    23,    29,
      23,    -1,    -1,    -1,    -1,    40
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    28,    31,    33,    34,    42,    43,    44,    46,    47,
      54,    55,    57,     3,     3,    49,    50,     3,     0,    43,
      22,    28,    58,    20,    24,    26,    29,    28,    28,    22,
       3,    28,    35,    36,    37,    38,    40,    47,    53,    59,
      60,    61,    62,    63,    64,    65,    66,     3,    48,    49,
      56,     4,     3,     4,     9,    20,    52,    53,    63,    67,
      68,     3,     5,    45,    48,    20,    28,    28,    20,    69,
      69,    28,    52,    24,    26,    30,    23,    59,    28,    24,
      29,    27,    21,    25,    68,    67,    24,    30,     6,     7,
       8,     9,    26,    23,    51,    52,    10,    20,    68,    69,
      70,    71,    58,    58,    28,     3,     4,    52,     3,     4,
      45,    48,    32,    26,    29,    21,     3,     4,     3,    67,
      67,    67,    67,    52,    21,    27,    68,    13,    14,    15,
      16,    17,    18,    72,    11,    12,    21,    69,    39,    25,
      25,    28,    25,    45,    22,    45,    25,    25,    51,    68,
      70,    70,    21,    58,    29,    51,    26,    21,    45,    23,
      22,    51,    23
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    41,    42,    43,    43,    44,    44,    44,    44,    44,
      45,    45,    46,    47,    47,    48,    48,    48,    49,    49,
      49,    49,    50,    50,    50,    50,    51,    51,    51,    52,
      53,    53,    53,    53,    54,    55,    55,    56,    57,    58,
      59,    59,    60,    60,    60,    60,    60,    60,    60,    60,
      60,    61,    62,    63,    64,    64,    65,    66,    66,    67,
      67,    67,    67,    67,    68,    68,    68,    68,    68,    68,
      68,    68,    69,    69,    69,    70,    70,    70,    71,    72,
      72,    72,    72,    72,    72
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     0,     1,     1,     1,     1,     1,
       1,     1,     5,     3,     3,     1,     3,     0,     6,     4,
       3,     1,    10,     8,     5,     3,     1,     3,     0,     1,
       1,     4,     4,     3,     2,     7,     5,     1,     2,     3,
       0,     2,     1,     1,     1,     1,     1,     1,     2,     2,
       1,     4,     2,     4,     3,     5,     3,     3,     2,     3,
       3,     3,     3,     1,     1,     1,     3,     1,     4,     4,
       3,     2,     5,     3,     4,     3,     3,     1,     1,     1,
       1,     1,     1,     1,     1
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* Program: ProgramElementList  */
#line 170 "parser.yacc"
{  
  root = A_Program((yyvsp[0].programElementList));
  (yyval.program) = A_Program((yyvsp[0].programElementList));
}
#line 1257 "y.tab.cpp"
    break;

  case 3: /* ProgramElementList: ProgramElement ProgramElementList  */
#line 177 "parser.yacc"
{
  (yyval.programElementList) = A_ProgramElementList((yyvsp[-1].programElement), (yyvsp[0].programElementList));
}
#line 1265 "y.tab.cpp"
    break;

  case 4: /* ProgramElementList: %empty  */
#line 181 "parser.yacc"
{
  (yyval.programElementList) = nullptr;   // handling an empty list?
}
#line 1273 "y.tab.cpp"
    break;

  case 5: /* ProgramElement: VarDeclStmt  */
#line 188 "parser.yacc"
  {
    (yyval.programElement) = A_ProgramVarDeclStmt((yyvsp[0].varDeclStmt)->pos, (yyvsp[0].varDeclStmt));
  }
#line 1281 "y.tab.cpp"
    break;

  case 6: /* ProgramElement: StructDef  */
#line 192 "parser.yacc"
  {
    (yyval.programElement) = A_ProgramStructDef((yyvsp[0].structDef)->pos, (yyvsp[0].structDef));
  }
#line 1289 "y.tab.cpp"
    break;

  case 7: /* ProgramElement: FnDeclStmt  */
#line 196 "parser.yacc"
  {
    (yyval.programElement) = A_ProgramFnDeclStmt((yyvsp[0].fnDeclStmt)->pos, (yyvsp[0].fnDeclStmt));
  }
#line 1297 "y.tab.cpp"
    break;

  case 8: /* ProgramElement: FnDef  */
#line 200 "parser.yacc"
  {
    (yyval.programElement) = A_ProgramFnDef((yyvsp[0].fnDef)->pos, (yyvsp[0].fnDef));
  }
#line 1305 "y.tab.cpp"
    break;

  case 9: /* ProgramElement: SEMICOLON  */
#line 204 "parser.yacc"
  {
    (yyval.programElement) = A_ProgramNullStmt((yyvsp[0].pos));
  }
#line 1313 "y.tab.cpp"
    break;

  case 10: /* Type: INT  */
#line 211 "parser.yacc"
  {
    (yyval.type) = A_NativeType((yyvsp[0].pos), A_intTypeKind);
  }
#line 1321 "y.tab.cpp"
    break;

  case 11: /* Type: ID  */
#line 215 "parser.yacc"
  {
    (yyval.type) = A_StructType((yyvsp[0].tokenId)->pos, (yyvsp[0].tokenId)->id);
  }
#line 1329 "y.tab.cpp"
    break;

  case 12: /* StructDef: STRUCT ID LBRACE VarDeclList RBRACE  */
#line 237 "parser.yacc"
  {
    (yyval.structDef) = A_StructDef((yyvsp[-4].pos), (yyvsp[-3].tokenId)->id, (yyvsp[-1].varDeclList));
  }
#line 1337 "y.tab.cpp"
    break;

  case 13: /* VarDeclStmt: LET VarDecl SEMICOLON  */
#line 258 "parser.yacc"
  {
    (yyval.varDeclStmt) = A_VarDeclStmt((yyvsp[-2].pos), (yyvsp[-1].varDecl));
  }
#line 1345 "y.tab.cpp"
    break;

  case 14: /* VarDeclStmt: LET VarDef SEMICOLON  */
#line 262 "parser.yacc"
  {
    (yyval.varDeclStmt) = A_VarDefStmt((yyvsp[-2].pos), (yyvsp[-1].varDef));
  }
#line 1353 "y.tab.cpp"
    break;

  case 15: /* VarDeclList: VarDecl  */
#line 269 "parser.yacc"
  {
    (yyval.varDeclList) = A_VarDeclList((yyvsp[0].varDecl), nullptr);
  }
#line 1361 "y.tab.cpp"
    break;

  case 16: /* VarDeclList: VarDecl COMMA VarDeclList  */
#line 273 "parser.yacc"
  {
    (yyval.varDeclList) = A_VarDeclList((yyvsp[-2].varDecl), (yyvsp[0].varDeclList));
  }
#line 1369 "y.tab.cpp"
    break;

  case 17: /* VarDeclList: %empty  */
#line 277 "parser.yacc"
  {
    (yyval.varDeclList) = nullptr;
  }
#line 1377 "y.tab.cpp"
    break;

  case 18: /* VarDecl: ID LBRACKET NUM RBRACKET COLON Type  */
#line 283 "parser.yacc"
  {
    (yyval.varDecl) = A_VarDecl_Array(
      (yyvsp[-5].tokenId)->pos,
      A_VarDeclArray((yyvsp[-5].tokenId)->pos, (yyvsp[-5].tokenId)->id, (yyvsp[-3].tokenNum)->num, (yyvsp[0].type))
    );
  }
#line 1388 "y.tab.cpp"
    break;

  case 19: /* VarDecl: ID LBRACKET NUM RBRACKET  */
#line 290 "parser.yacc"
  {
    (yyval.varDecl) = A_VarDecl_Array(
      (yyvsp[-3].tokenId)->pos,
      A_VarDeclArray((yyvsp[-3].tokenId)->pos, (yyvsp[-3].tokenId)->id, (yyvsp[-1].tokenNum)->num, nullptr)
    );
  }
#line 1399 "y.tab.cpp"
    break;

  case 20: /* VarDecl: ID COLON Type  */
#line 297 "parser.yacc"
  {
    (yyval.varDecl) = A_VarDecl_Scalar(
      (yyvsp[-2].tokenId)->pos,
      A_VarDeclScalar((yyvsp[-2].tokenId)->pos, (yyvsp[-2].tokenId)->id, (yyvsp[0].type))
    );
  }
#line 1410 "y.tab.cpp"
    break;

  case 21: /* VarDecl: ID  */
#line 304 "parser.yacc"
  {
    (yyval.varDecl) = A_VarDecl_Scalar(
      (yyvsp[0].tokenId)->pos,
      A_VarDeclScalar((yyvsp[0].tokenId)->pos, (yyvsp[0].tokenId)->id, nullptr)
    );
  }
#line 1421 "y.tab.cpp"
    break;

  case 22: /* VarDef: ID LBRACKET NUM RBRACKET COLON Type ASSIGN LBRACE RightValList RBRACE  */
#line 314 "parser.yacc"
  {
    // array w/o typing
    (yyval.varDef) = A_VarDef_Array(
      (yyvsp[-9].tokenId)->pos,
      A_VarDefArray((yyvsp[-9].tokenId)->pos, (yyvsp[-9].tokenId)->id, (yyvsp[-7].tokenNum)->num, (yyvsp[-4].type), (yyvsp[-1].rightValList))
    );
  }
#line 1433 "y.tab.cpp"
    break;

  case 23: /* VarDef: ID LBRACKET NUM RBRACKET ASSIGN LBRACE RightValList RBRACE  */
#line 322 "parser.yacc"
  {
    // array w/o typing
    (yyval.varDef) = A_VarDef_Array(
      (yyvsp[-7].tokenId)->pos,
      A_VarDefArray((yyvsp[-7].tokenId)->pos, (yyvsp[-7].tokenId)->id, (yyvsp[-5].tokenNum)->num, nullptr, (yyvsp[-1].rightValList))
    );
  }
#line 1445 "y.tab.cpp"
    break;

  case 24: /* VarDef: ID COLON Type ASSIGN RightVal  */
#line 330 "parser.yacc"
  {
    // w/ typing
    (yyval.varDef) = A_VarDef_Scalar(
      (yyvsp[-4].tokenId)->pos, 
      A_VarDefScalar((yyvsp[-4].tokenId)->pos, (yyvsp[-4].tokenId)->id, (yyvsp[-2].type), (yyvsp[0].rightVal))
    );
  }
#line 1457 "y.tab.cpp"
    break;

  case 25: /* VarDef: ID ASSIGN RightVal  */
#line 338 "parser.yacc"
  {
    // w/o typing
    (yyval.varDef) = A_VarDef_Scalar(
      (yyvsp[-2].tokenId)->pos, 
      A_VarDefScalar((yyvsp[-2].tokenId)->pos, (yyvsp[-2].tokenId)->id, nullptr, (yyvsp[0].rightVal))
    );
  }
#line 1469 "y.tab.cpp"
    break;

  case 26: /* RightValList: RightVal  */
#line 354 "parser.yacc"
  {
    (yyval.rightValList) = A_RightValList((yyvsp[0].rightVal), nullptr);
  }
#line 1477 "y.tab.cpp"
    break;

  case 27: /* RightValList: RightVal COMMA RightValList  */
#line 358 "parser.yacc"
  {
    (yyval.rightValList) = A_RightValList((yyvsp[-2].rightVal), (yyvsp[0].rightValList));
  }
#line 1485 "y.tab.cpp"
    break;

  case 28: /* RightValList: %empty  */
#line 362 "parser.yacc"
  {
    // empty
    (yyval.rightValList) = nullptr;
  }
#line 1494 "y.tab.cpp"
    break;

  case 29: /* RightVal: ArithExpr  */
#line 370 "parser.yacc"
  {
    (yyval.rightVal) = A_ArithExprRVal((yyvsp[0].arithExpr)->pos, (yyvsp[0].arithExpr));
  }
#line 1502 "y.tab.cpp"
    break;

  case 30: /* LeftVal: ID  */
#line 377 "parser.yacc"
  {
    (yyval.leftVal) = A_IdExprLVal((yyvsp[0].tokenId)->pos, (yyvsp[0].tokenId)->id);
  }
#line 1510 "y.tab.cpp"
    break;

  case 31: /* LeftVal: LeftVal LBRACKET ID RBRACKET  */
#line 381 "parser.yacc"
  {
    (yyval.leftVal) = A_ArrExprLVal(
      (yyvsp[-3].leftVal)->pos,
      A_ArrayExpr((yyvsp[-2].pos), (yyvsp[-3].leftVal), A_IdIndexExpr((yyvsp[-1].tokenId)->pos, (yyvsp[-1].tokenId)->id))
    );
  }
#line 1521 "y.tab.cpp"
    break;

  case 32: /* LeftVal: LeftVal LBRACKET NUM RBRACKET  */
#line 388 "parser.yacc"
  {
    (yyval.leftVal) = A_ArrExprLVal(
      (yyvsp[-3].leftVal)->pos,
      A_ArrayExpr((yyvsp[-2].pos), (yyvsp[-3].leftVal), A_NumIndexExpr((yyvsp[-1].tokenNum)->pos, (yyvsp[-1].tokenNum)->num))
    );
  }
#line 1532 "y.tab.cpp"
    break;

  case 33: /* LeftVal: LeftVal DOT ID  */
#line 395 "parser.yacc"
  {
    (yyval.leftVal) = A_MemberExprLVal(
      (yyvsp[-2].leftVal)->pos, A_MemberExpr((yyvsp[-1].pos), (yyvsp[-2].leftVal), (yyvsp[0].tokenId)->id)
    );
  }
#line 1542 "y.tab.cpp"
    break;

  case 34: /* FnDeclStmt: FnDecl SEMICOLON  */
#line 409 "parser.yacc"
  {
    (yyval.fnDeclStmt) = A_FnDeclStmt((yyvsp[-1].fnDecl)->pos, (yyvsp[-1].fnDecl));
  }
#line 1550 "y.tab.cpp"
    break;

  case 35: /* FnDecl: FN ID LPAREN ParamDecl RPAREN ARROW Type  */
#line 416 "parser.yacc"
  {
    (yyval.fnDecl) = A_FnDecl((yyvsp[-6].pos), (yyvsp[-5].tokenId)->id, (yyvsp[-3].paramDecl), (yyvsp[0].type));
  }
#line 1558 "y.tab.cpp"
    break;

  case 36: /* FnDecl: FN ID LPAREN ParamDecl RPAREN  */
#line 420 "parser.yacc"
  {
    // no typing information
    (yyval.fnDecl) = A_FnDecl((yyvsp[-4].pos), (yyvsp[-3].tokenId)->id, (yyvsp[-1].paramDecl), nullptr);
  }
#line 1567 "y.tab.cpp"
    break;

  case 37: /* ParamDecl: VarDeclList  */
#line 428 "parser.yacc"
  {
    (yyval.paramDecl) = A_ParamDecl((yyvsp[0].varDeclList));
  }
#line 1575 "y.tab.cpp"
    break;

  case 38: /* FnDef: FnDecl CodeBlock  */
#line 435 "parser.yacc"
  {
    (yyval.fnDef) = A_FnDef((yyvsp[-1].fnDecl)->pos, (yyvsp[-1].fnDecl), (yyvsp[0].codeBlockStmtList));
  }
#line 1583 "y.tab.cpp"
    break;

  case 39: /* CodeBlock: LBRACE CodeBlockStmtList RBRACE  */
#line 450 "parser.yacc"
  {
    (yyval.codeBlockStmtList) = (yyvsp[-1].codeBlockStmtList);
  }
#line 1591 "y.tab.cpp"
    break;

  case 40: /* CodeBlockStmtList: %empty  */
#line 456 "parser.yacc"
  {
    (yyval.codeBlockStmtList) = nullptr;
  }
#line 1599 "y.tab.cpp"
    break;

  case 41: /* CodeBlockStmtList: CodeBlockStmt CodeBlockStmtList  */
#line 460 "parser.yacc"
  {
    (yyval.codeBlockStmtList) = A_CodeBlockStmtList((yyvsp[-1].codeBlockStmt), (yyvsp[0].codeBlockStmtList));
  }
#line 1607 "y.tab.cpp"
    break;

  case 42: /* CodeBlockStmt: VarDeclStmt  */
#line 479 "parser.yacc"
  {
    // Already defined before, the rest statements will be defined in the section below
    (yyval.codeBlockStmt) = A_BlockVarDeclStmt((yyvsp[0].varDeclStmt)->pos, (yyvsp[0].varDeclStmt));
  }
#line 1616 "y.tab.cpp"
    break;

  case 43: /* CodeBlockStmt: AssignStmt  */
#line 484 "parser.yacc"
  {
    (yyval.codeBlockStmt) = A_BlockAssignStmt((yyvsp[0].assignStmt)->pos, (yyvsp[0].assignStmt));
  }
#line 1624 "y.tab.cpp"
    break;

  case 44: /* CodeBlockStmt: CallStmt  */
#line 488 "parser.yacc"
  {
    (yyval.codeBlockStmt) = A_BlockCallStmt((yyvsp[0].callStmt)->pos, (yyvsp[0].callStmt));
  }
#line 1632 "y.tab.cpp"
    break;

  case 45: /* CodeBlockStmt: IfStmt  */
#line 492 "parser.yacc"
  {
    (yyval.codeBlockStmt) = A_BlockIfStmt((yyvsp[0].ifStmt)->pos, (yyvsp[0].ifStmt));
  }
#line 1640 "y.tab.cpp"
    break;

  case 46: /* CodeBlockStmt: WhileStmt  */
#line 496 "parser.yacc"
  {
    (yyval.codeBlockStmt) = A_BlockWhileStmt((yyvsp[0].whileStmt)->pos, (yyvsp[0].whileStmt));
  }
#line 1648 "y.tab.cpp"
    break;

  case 47: /* CodeBlockStmt: ReturnStmt  */
#line 500 "parser.yacc"
  {
    (yyval.codeBlockStmt) = A_BlockReturnStmt((yyvsp[0].returnStmt)->pos, (yyvsp[0].returnStmt));
  }
#line 1656 "y.tab.cpp"
    break;

  case 48: /* CodeBlockStmt: CONTINUE SEMICOLON  */
#line 504 "parser.yacc"
  {
    (yyval.codeBlockStmt) = A_BlockContinueStmt((yyvsp[-1].pos));
  }
#line 1664 "y.tab.cpp"
    break;

  case 49: /* CodeBlockStmt: BREAK SEMICOLON  */
#line 508 "parser.yacc"
  {
    (yyval.codeBlockStmt) = A_BlockBreakStmt((yyvsp[-1].pos));
  }
#line 1672 "y.tab.cpp"
    break;

  case 50: /* CodeBlockStmt: SEMICOLON  */
#line 512 "parser.yacc"
  {
    (yyval.codeBlockStmt) = A_BlockNullStmt((yyvsp[0].pos));
  }
#line 1680 "y.tab.cpp"
    break;

  case 51: /* AssignStmt: LeftVal ASSIGN RightVal SEMICOLON  */
#line 524 "parser.yacc"
  {
    (yyval.assignStmt) = A_AssignStmt((yyvsp[-2].pos), (yyvsp[-3].leftVal), (yyvsp[-1].rightVal));
  }
#line 1688 "y.tab.cpp"
    break;

  case 52: /* CallStmt: FnCall SEMICOLON  */
#line 531 "parser.yacc"
  {
    (yyval.callStmt) = A_CallStmt((yyvsp[-1].fnCall)->pos, (yyvsp[-1].fnCall));
  }
#line 1696 "y.tab.cpp"
    break;

  case 53: /* FnCall: ID LPAREN RightValList RPAREN  */
#line 538 "parser.yacc"
  {
    (yyval.fnCall) = A_FnCall((yyvsp[-3].tokenId)->pos, (yyvsp[-3].tokenId)->id, (yyvsp[-1].rightValList));
  }
#line 1704 "y.tab.cpp"
    break;

  case 54: /* IfStmt: IF BoolUnit CodeBlock  */
#line 552 "parser.yacc"
  { 
    (yyval.ifStmt) = A_IfStmt((yyvsp[-2].pos), (yyvsp[-1].boolUnit), (yyvsp[0].codeBlockStmtList), nullptr);
  }
#line 1712 "y.tab.cpp"
    break;

  case 55: /* IfStmt: IF BoolUnit CodeBlock ELSE CodeBlock  */
#line 556 "parser.yacc"
  {
    (yyval.ifStmt) = A_IfStmt((yyvsp[-4].pos), (yyvsp[-3].boolUnit), (yyvsp[-2].codeBlockStmtList), (yyvsp[0].codeBlockStmtList));
  }
#line 1720 "y.tab.cpp"
    break;

  case 56: /* WhileStmt: WHILE BoolUnit CodeBlock  */
#line 563 "parser.yacc"
  {
    (yyval.whileStmt) = A_WhileStmt((yyvsp[-2].pos), (yyvsp[-1].boolUnit), (yyvsp[0].codeBlockStmtList));
  }
#line 1728 "y.tab.cpp"
    break;

  case 57: /* ReturnStmt: RET RightVal SEMICOLON  */
#line 570 "parser.yacc"
  {
    (yyval.returnStmt) = A_ReturnStmt((yyvsp[-2].pos), (yyvsp[-1].rightVal));
  }
#line 1736 "y.tab.cpp"
    break;

  case 58: /* ReturnStmt: RET SEMICOLON  */
#line 574 "parser.yacc"
  {
    (yyval.returnStmt) = A_ReturnStmt((yyvsp[-1].pos), nullptr);
  }
#line 1744 "y.tab.cpp"
    break;

  case 59: /* ArithExpr: ArithExpr ADD ArithExpr  */
#line 581 "parser.yacc"
{
  (yyval.arithExpr) = A_ArithBiOp_Expr((yyvsp[-2].arithExpr)->pos, A_ArithBiOpExpr((yyvsp[-2].arithExpr)->pos, A_add, (yyvsp[-2].arithExpr), (yyvsp[0].arithExpr)));
}
#line 1752 "y.tab.cpp"
    break;

  case 60: /* ArithExpr: ArithExpr SUB ArithExpr  */
#line 585 "parser.yacc"
{
  (yyval.arithExpr) = A_ArithBiOp_Expr((yyvsp[-2].arithExpr)->pos, A_ArithBiOpExpr((yyvsp[-2].arithExpr)->pos, A_sub, (yyvsp[-2].arithExpr), (yyvsp[0].arithExpr)));
}
#line 1760 "y.tab.cpp"
    break;

  case 61: /* ArithExpr: ArithExpr MUL ArithExpr  */
#line 589 "parser.yacc"
{
  (yyval.arithExpr) = A_ArithBiOp_Expr((yyvsp[-2].arithExpr)->pos, A_ArithBiOpExpr((yyvsp[-2].arithExpr)->pos, A_mul, (yyvsp[-2].arithExpr), (yyvsp[0].arithExpr)));
}
#line 1768 "y.tab.cpp"
    break;

  case 62: /* ArithExpr: ArithExpr DIV ArithExpr  */
#line 593 "parser.yacc"
{
  (yyval.arithExpr) = A_ArithBiOp_Expr((yyvsp[-2].arithExpr)->pos, A_ArithBiOpExpr((yyvsp[-2].arithExpr)->pos, A_div, (yyvsp[-2].arithExpr), (yyvsp[0].arithExpr)));
}
#line 1776 "y.tab.cpp"
    break;

  case 63: /* ArithExpr: ExprUnit  */
#line 597 "parser.yacc"
{
  (yyval.arithExpr) = A_ExprUnit((yyvsp[0].exprUnit)->pos, (yyvsp[0].exprUnit));
}
#line 1784 "y.tab.cpp"
    break;

  case 64: /* ExprUnit: NUM  */
#line 618 "parser.yacc"
  {
    /*
    A_exprUnitType: A_numExprKind
    */
    (yyval.exprUnit) = A_NumExprUnit((yyvsp[0].tokenNum)->pos, (yyvsp[0].tokenNum)->num);
  }
#line 1795 "y.tab.cpp"
    break;

  case 65: /* ExprUnit: ID  */
#line 625 "parser.yacc"
  {
    /*
    A_exprUnitType: A_idExprKind
    */
    (yyval.exprUnit) = A_IdExprUnit((yyvsp[0].tokenId)->pos, (yyvsp[0].tokenId)->id);
  }
#line 1806 "y.tab.cpp"
    break;

  case 66: /* ExprUnit: LPAREN ArithExpr RPAREN  */
#line 632 "parser.yacc"
  {
    /*
    A_exprUnitType: A_arithExprKind
    */
    (yyval.exprUnit) = A_ArithExprUnit((yyvsp[-1].arithExpr)->pos, (yyvsp[-1].arithExpr));
  }
#line 1817 "y.tab.cpp"
    break;

  case 67: /* ExprUnit: FnCall  */
#line 639 "parser.yacc"
  {
    (yyval.exprUnit) = A_CallExprUnit((yyvsp[0].fnCall)->pos, (yyvsp[0].fnCall));
  }
#line 1825 "y.tab.cpp"
    break;

  case 68: /* ExprUnit: LeftVal LBRACKET ID RBRACKET  */
#line 643 "parser.yacc"
  {
    (yyval.exprUnit) = A_ArrayExprUnit(
      (yyvsp[-3].leftVal)->pos,
      A_ArrayExpr((yyvsp[-2].pos), (yyvsp[-3].leftVal), A_IdIndexExpr((yyvsp[-1].tokenId)->pos, (yyvsp[-1].tokenId)->id))
    );
  }
#line 1836 "y.tab.cpp"
    break;

  case 69: /* ExprUnit: LeftVal LBRACKET NUM RBRACKET  */
#line 650 "parser.yacc"
  {
    (yyval.exprUnit) = A_ArrayExprUnit(
      (yyvsp[-3].leftVal)->pos,
      A_ArrayExpr((yyvsp[-2].pos), (yyvsp[-3].leftVal), A_NumIndexExpr((yyvsp[-1].tokenNum)->pos, (yyvsp[-1].tokenNum)->num))
    );
  }
#line 1847 "y.tab.cpp"
    break;

  case 70: /* ExprUnit: LeftVal DOT ID  */
#line 657 "parser.yacc"
  {
    (yyval.exprUnit) = A_MemberExprUnit(
      (yyvsp[-2].leftVal)->pos,
      A_MemberExpr((yyvsp[-1].pos), (yyvsp[-2].leftVal), (yyvsp[0].tokenId)->id)
    );
  }
#line 1858 "y.tab.cpp"
    break;

  case 71: /* ExprUnit: SUB ExprUnit  */
#line 664 "parser.yacc"
  {
    if ((yyvsp[0].exprUnit)->kind == A_numExprKind) {
      (yyval.exprUnit) = A_NumExprUnit((yyvsp[0].exprUnit)->pos, -((yyvsp[0].exprUnit)->u.num));
    } else {
      (yyval.exprUnit) = A_ArithUExprUnit(
        (yyvsp[-1].pos),
        A_ArithUExpr((yyvsp[-1].pos), A_neg, (yyvsp[0].exprUnit))
      );
    }
  }
#line 1873 "y.tab.cpp"
    break;

  case 72: /* BoolUnit: LPAREN ExprUnit ComOp ExprUnit RPAREN  */
#line 688 "parser.yacc"
  {
    A_comExpr comExpr = A_ComExpr((yyvsp[-3].exprUnit)->pos, (yyvsp[-2].comOp), (yyvsp[-3].exprUnit), (yyvsp[-1].exprUnit));
    (yyval.boolUnit) = A_ComExprUnit((yyvsp[-3].exprUnit)->pos, comExpr);
  }
#line 1882 "y.tab.cpp"
    break;

  case 73: /* BoolUnit: LPAREN BoolExpr RPAREN  */
#line 693 "parser.yacc"
  {
    (yyval.boolUnit) = A_BoolExprUnit((yyvsp[-1].boolExpr)->pos, (yyvsp[-1].boolExpr));
  }
#line 1890 "y.tab.cpp"
    break;

  case 74: /* BoolUnit: LPAREN BoolUOp BoolUnit RPAREN  */
#line 697 "parser.yacc"
  {
    A_boolUOpExpr boolUOpExpr = A_BoolUOpExpr((yyvsp[-1].boolUnit)->pos, (yyvsp[-2].boolUOp), (yyvsp[-1].boolUnit));
    (yyval.boolUnit) = A_BoolUOpExprUnit((yyvsp[-1].boolUnit)->pos, boolUOpExpr);
    // $$ = A_BoolUOpExprUnit($2->pos, $2);
  }
#line 1900 "y.tab.cpp"
    break;

  case 75: /* BoolExpr: BoolExpr AND BoolExpr  */
#line 717 "parser.yacc"
  {
    (yyval.boolExpr) = A_BoolBiOp_Expr((yyvsp[-2].boolExpr)->pos, A_BoolBiOpExpr((yyvsp[-2].boolExpr)->pos, A_and, (yyvsp[-2].boolExpr), (yyvsp[0].boolExpr)));
  }
#line 1908 "y.tab.cpp"
    break;

  case 76: /* BoolExpr: BoolExpr OR BoolExpr  */
#line 721 "parser.yacc"
  {
    (yyval.boolExpr) = A_BoolBiOp_Expr((yyvsp[-2].boolExpr)->pos, A_BoolBiOpExpr((yyvsp[-2].boolExpr)->pos, A_or, (yyvsp[-2].boolExpr), (yyvsp[0].boolExpr)));
  }
#line 1916 "y.tab.cpp"
    break;

  case 77: /* BoolExpr: BoolUnit  */
#line 725 "parser.yacc"
  {
    (yyval.boolExpr) = A_BoolExpr((yyvsp[0].boolUnit)->pos, (yyvsp[0].boolUnit));
  }
#line 1924 "y.tab.cpp"
    break;

  case 78: /* BoolUOp: NOT  */
#line 755 "parser.yacc"
  {
    (yyval.boolUOp) = A_not;
  }
#line 1932 "y.tab.cpp"
    break;

  case 79: /* ComOp: LT  */
#line 763 "parser.yacc"
  {
    (yyval.comOp) = A_lt;
  }
#line 1940 "y.tab.cpp"
    break;

  case 80: /* ComOp: LE  */
#line 767 "parser.yacc"
  {
    (yyval.comOp) = A_le;
  }
#line 1948 "y.tab.cpp"
    break;

  case 81: /* ComOp: GT  */
#line 771 "parser.yacc"
  {
    (yyval.comOp) = A_gt;
  }
#line 1956 "y.tab.cpp"
    break;

  case 82: /* ComOp: GE  */
#line 775 "parser.yacc"
  {
    (yyval.comOp) = A_ge;
  }
#line 1964 "y.tab.cpp"
    break;

  case 83: /* ComOp: EQ  */
#line 779 "parser.yacc"
  {
    (yyval.comOp) = A_eq;
  }
#line 1972 "y.tab.cpp"
    break;

  case 84: /* ComOp: NEQ  */
#line 783 "parser.yacc"
  {
    (yyval.comOp) = A_ne;
  }
#line 1980 "y.tab.cpp"
    break;


#line 1984 "y.tab.cpp"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 788 "parser.yacc"


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
