/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton implementation for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

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

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "2.3"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 1

/* Using locations.  */
#define YYLSP_NEEDED 1

/* Substitute the variable and function names.  */
#define yyparse hb_parse
#define yylex   hb_lex
#define yyerror hb_error
#define yylval  hb_lval
#define yychar  hb_char
#define yydebug hb_debug
#define yynerrs hb_nerrs
#define yylloc hb_lloc

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     INTEGER = 258,
     FLOAT = 259,
     BOOLEAN = 260,
     TEXT_CONTENT = 261,
     ID = 262,
     STRING = 263,
     PATH_SEPARATOR = 264,
     COMMENT_CONTENT = 265,
     BACKSLASH = 266,
     LEFT_MUSTACHE = 267,
     ESCAPED_OPEN = 268,
     ESCAPED_BACKSLASH = 269,
     COMMENT_START = 270,
     COMMENT_END = 271,
     DASHED_COMMENT_START = 272,
     DASHED_COMMENT_END = 273,
     OPEN = 274,
     OPEN_PARTIAL = 275,
     OPEN_BLOCK = 276,
     OPEN_ENDBLOCK = 277,
     OPEN_INVERSE = 278,
     OPEN_UNESCAPED = 279,
     OPEN_UNESCAPED_AMPERSAND = 280,
     CLOSE = 281,
     CLOSE_UNESCAPED = 282,
     OPEN_RAW = 283,
     CLOSE_RAW = 284,
     OPEN_ENDRAW = 285,
     CLOSE_ENDRAW = 286,
     EQUALS = 287,
     DATA = 288,
     LPARENT = 289,
     RPARENT = 290,
     TILDE = 291,
     UNKNOWN = 292
   };
#endif
/* Tokens.  */
#define INTEGER 258
#define FLOAT 259
#define BOOLEAN 260
#define TEXT_CONTENT 261
#define ID 262
#define STRING 263
#define PATH_SEPARATOR 264
#define COMMENT_CONTENT 265
#define BACKSLASH 266
#define LEFT_MUSTACHE 267
#define ESCAPED_OPEN 268
#define ESCAPED_BACKSLASH 269
#define COMMENT_START 270
#define COMMENT_END 271
#define DASHED_COMMENT_START 272
#define DASHED_COMMENT_END 273
#define OPEN 274
#define OPEN_PARTIAL 275
#define OPEN_BLOCK 276
#define OPEN_ENDBLOCK 277
#define OPEN_INVERSE 278
#define OPEN_UNESCAPED 279
#define OPEN_UNESCAPED_AMPERSAND 280
#define CLOSE 281
#define CLOSE_UNESCAPED 282
#define OPEN_RAW 283
#define CLOSE_RAW 284
#define OPEN_ENDRAW 285
#define CLOSE_ENDRAW 286
#define EQUALS 287
#define DATA 288
#define LPARENT 289
#define RPARENT 290
#define TILDE 291
#define UNKNOWN 292




/* Copy the first part of user declarations.  */
#line 2 "handlebars-objc.ym"


#include <stdio.h>
#include <stdlib.h>

#import "HBHandlebars.h"
#import "HBAst.h"
#import "HBErrorHandling_Private.h"

#define YYDEBUG 0

// those are needed to avoid warnings about @"", @true and @false in yacc blocks
#define AT @
#define AT_TRUE @true
#define AT_FALSE @false

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunreachable-code"
#pragma clang diagnostic ignored "-Wconditional-uninitialized"




/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 1
#endif

/* Enabling the token table.  */
#ifndef YYTOKEN_TABLE
# define YYTOKEN_TABLE 0
#endif

#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 27 "handlebars-objc.ym"
{
	int ival;
    NSString* nsString;
    NSMutableArray* astArray;
    HBAstParametersHash* astHash;
    HBAstNode* astNode;
    HBAstKeyPathComponent* astPathComponent;
    HBAstValue* astValue;
    HBAstContextualValue* astContextualValue;
    HBAstExpression* astExpression;
    HBAstTag* astTag;
    HBAstSimpleTag* astSimpleTag;
    HBAstRawText* astRawText;
    HBAstString* astString;
    HBAstNumber* astNumber;
    HBAstPartialTag* astPartialTag;
    HBAstBlock* astBlock;
    HBAstComment* astComment;
}
/* Line 193 of yacc.c.  */
#line 221 "y.tab.m"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

#if ! defined YYLTYPE && ! defined YYLTYPE_IS_DECLARED
typedef struct YYLTYPE
{
  int first_line;
  int first_column;
  int last_line;
  int last_column;
} YYLTYPE;
# define yyltype YYLTYPE /* obsolescent; will be withdrawn */
# define YYLTYPE_IS_DECLARED 1
# define YYLTYPE_IS_TRIVIAL 1
#endif


/* Copy the second part of user declarations.  */
#line 120 "handlebars-objc.ym"

    /* Forward declarations will please compiler */

    typedef void* yyscan_t;
    int hb_lex_init ( yyscan_t * ptr_yy_globals ) ;
    int hb_lex_destroy ( yyscan_t yyscanner ) ;
    
    void hb_error(YYLTYPE* loc, yyscan_t scanner, HBAstProgram** root, NSError** error, const char *s);
    int hb_lex ( YYSTYPE * lvalp, YYLTYPE* lloc, yyscan_t scanner );
    FILE *yyin;
    


/* Line 216 of yacc.c.  */
#line 258 "y.tab.m"

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#elif (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
typedef signed char yytype_int8;
#else
typedef short int yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(msgid) dgettext ("bison-runtime", msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) msgid
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(e) ((void) (e))
#else
# define YYUSE(e) /* empty */
#endif

/* Identity function, used to suppress warnings about constant conditions.  */
#ifndef lint
# define YYID(n) (n)
#else
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static int
YYID (int i)
#else
static int
YYID (i)
    int i;
#endif
{
  return i;
}
#endif

#if ! defined yyoverflow || YYERROR_VERBOSE

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
#    if ! defined _ALLOCA_H && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#     ifndef _STDLIB_H
#      define _STDLIB_H 1
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's `empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (YYID (0))
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
#  if (defined __cplusplus && ! defined _STDLIB_H \
       && ! ((defined YYMALLOC || defined malloc) \
	     && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef _STDLIB_H
#    define _STDLIB_H 1
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
	 || (defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL \
	     && defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss;
  YYSTYPE yyvs;
    YYLTYPE yyls;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE) + sizeof (YYLTYPE)) \
      + 2 * YYSTACK_GAP_MAXIMUM)

/* Copy COUNT objects from FROM to TO.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(To, From, Count) \
      __builtin_memcpy (To, From, (Count) * sizeof (*(From)))
#  else
#   define YYCOPY(To, From, Count)		\
      do					\
	{					\
	  YYSIZE_T yyi;				\
	  for (yyi = 0; yyi < (Count); yyi++)	\
	    (To)[yyi] = (From)[yyi];		\
	}					\
      while (YYID (0))
#  endif
# endif

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack)					\
    do									\
      {									\
	YYSIZE_T yynewbytes;						\
	YYCOPY (&yyptr->Stack, Stack, yysize);				\
	Stack = &yyptr->Stack;						\
	yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
	yyptr += yynewbytes / sizeof (*yyptr);				\
      }									\
    while (YYID (0))

#endif

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  43
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   144

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  38
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  32
/* YYNRULES -- Number of rules.  */
#define YYNRULES  64
/* YYNRULES -- Number of states.  */
#define YYNSTATES  106

/* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   292

#define YYTRANSLATE(YYX)						\
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
static const yytype_uint8 yytranslate[] =
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
      35,    36,    37
};

#if YYDEBUG
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const yytype_uint8 yyprhs[] =
{
       0,     0,     3,     5,     6,     8,    11,    13,    15,    17,
      19,    21,    25,    27,    30,    32,    36,    40,    44,    48,
      53,    59,    64,    68,    72,    75,    79,    83,    87,    91,
      94,    98,   101,   105,   108,   112,   116,   119,   121,   123,
     126,   128,   131,   135,   140,   144,   146,   148,   150,   152,
     154,   156,   158,   160,   162,   164,   168,   170,   172,   174,
     176,   178,   180,   182,   184
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const yytype_int8 yyrhs[] =
{
      39,     0,    -1,    40,    -1,    -1,    41,    -1,    40,    41,
      -1,    44,    -1,    45,    -1,    46,    -1,    53,    -1,    42,
      -1,    15,    43,    16,    -1,    10,    -1,    43,    10,    -1,
       6,    -1,    19,    57,    26,    -1,    24,    57,    27,    -1,
      25,    57,    26,    -1,    20,    60,    26,    -1,    20,    60,
      62,    26,    -1,    20,    60,    62,    58,    26,    -1,    20,
      60,    58,    26,    -1,    21,    57,    26,    -1,    22,    57,
      26,    -1,    23,    26,    -1,    23,    57,    26,    -1,    28,
      57,    29,    -1,    30,    57,    31,    -1,    47,    40,    48,
      -1,    47,    48,    -1,    47,    40,    54,    -1,    47,    54,
      -1,    50,    40,    48,    -1,    50,    48,    -1,    51,    40,
      52,    -1,    49,    40,    48,    -1,    49,    48,    -1,    61,
      -1,    55,    -1,    56,    59,    -1,    56,    -1,    56,    58,
      -1,     7,    32,    59,    -1,    58,     7,    32,    59,    -1,
      34,    57,    35,    -1,    62,    -1,    64,    -1,    65,    -1,
      68,    -1,    69,    -1,    62,    -1,    64,    -1,    66,    -1,
      62,    -1,    69,    -1,    62,     9,    63,    -1,    63,    -1,
       7,    -1,     8,    -1,    66,    -1,    67,    -1,     3,    -1,
       4,    -1,     5,    -1,    33,    62,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   136,   136,   137,   141,   142,   146,   147,   148,   149,
     150,   154,   158,   159,   163,   167,   168,   169,   173,   174,
     175,   176,   179,   183,   187,   191,   195,   199,   203,   210,
     216,   222,   227,   234,   240,   250,   257,   265,   269,   270,
     274,   275,   279,   280,   284,   285,   286,   287,   288,   289,
     293,   294,   295,   299,   300,   304,   309,   316,   320,   324,
     325,   329,   333,   337,   341
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "INTEGER", "FLOAT", "BOOLEAN",
  "TEXT_CONTENT", "ID", "STRING", "PATH_SEPARATOR", "COMMENT_CONTENT",
  "BACKSLASH", "LEFT_MUSTACHE", "ESCAPED_OPEN", "ESCAPED_BACKSLASH",
  "COMMENT_START", "COMMENT_END", "DASHED_COMMENT_START",
  "DASHED_COMMENT_END", "OPEN", "OPEN_PARTIAL", "OPEN_BLOCK",
  "OPEN_ENDBLOCK", "OPEN_INVERSE", "OPEN_UNESCAPED",
  "OPEN_UNESCAPED_AMPERSAND", "CLOSE", "CLOSE_UNESCAPED", "OPEN_RAW",
  "CLOSE_RAW", "OPEN_ENDRAW", "CLOSE_ENDRAW", "EQUALS", "DATA", "LPARENT",
  "RPARENT", "TILDE", "UNKNOWN", "$accept", "program", "statements",
  "statement", "comment", "comment_content", "raw_text", "simple_tag",
  "partial_tag", "block_tag_open", "block_tag_close", "else_tag",
  "inverse_tag_open", "rawblock_tag_open", "rawblock_tag_close",
  "block_tag", "else_tag_block", "simple_expression",
  "expression_with_positional_values", "expression", "hash", "value",
  "partial_name", "contextual_value", "path", "path_component", "string",
  "number", "integer", "float", "boolean", "data", 0
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[YYLEX-NUM] -- Internal token number corresponding to
   token YYLEX-NUM.  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292
};
# endif

/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    38,    39,    39,    40,    40,    41,    41,    41,    41,
      41,    42,    43,    43,    44,    45,    45,    45,    46,    46,
      46,    46,    47,    48,    49,    50,    51,    52,    53,    53,
      53,    53,    53,    53,    53,    54,    54,    55,    56,    56,
      57,    57,    58,    58,    59,    59,    59,    59,    59,    59,
      60,    60,    60,    61,    61,    62,    62,    63,    64,    65,
      65,    66,    67,    68,    69
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     0,     1,     2,     1,     1,     1,     1,
       1,     3,     1,     2,     1,     3,     3,     3,     3,     4,
       5,     4,     3,     3,     2,     3,     3,     3,     3,     2,
       3,     2,     3,     2,     3,     3,     2,     1,     1,     2,
       1,     2,     3,     4,     3,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     3,     1,     1,     1,     1,
       1,     1,     1,     1,     2
};

/* YYDEFACT[STATE-NAME] -- Default rule to reduce with in state
   STATE-NUM when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       3,    14,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     2,     4,    10,     6,     7,     8,     0,     0,     0,
       9,    12,     0,    57,     0,    38,    40,     0,    37,    53,
      56,    54,    61,    58,     0,    50,    51,    52,     0,     0,
       0,     0,     0,     1,     5,     0,     0,     0,    29,     0,
      31,     0,    33,     0,    13,    11,    64,    62,    63,    57,
       0,    41,    39,    45,    46,    47,    59,    60,    48,    49,
      15,     0,    18,     0,     0,    22,    25,    16,    17,    26,
       0,    24,    28,    30,     0,    36,    32,     0,    34,     0,
       0,     0,    55,    21,     0,    19,     0,    23,    35,     0,
      42,    44,     0,    20,    27,    43
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
      -1,    10,    11,    12,    13,    22,    14,    15,    16,    17,
      48,    49,    18,    19,    88,    20,    50,    25,    26,    39,
      61,    62,    34,    28,    29,    30,    64,    65,    66,    67,
      68,    31
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -48
static const yytype_int8 yypact[] =
{
     116,   -48,     9,     2,    65,     2,     2,     2,     2,     2,
      12,   116,   -48,   -48,   -48,   -48,   -48,    93,   104,   116,
     -48,   -48,     1,   -48,    19,   -48,    20,    15,   -48,    40,
     -48,   -48,   -48,   -48,     6,    40,   -48,   -48,    25,    30,
      31,    34,    28,   -48,   -48,     2,    14,    93,   -48,   104,
     -48,   104,   -48,    81,   -48,   -48,    40,   -48,   -48,    35,
       2,    62,   -48,    40,   -48,   -48,   -48,   -48,   -48,   -48,
     -48,    19,   -48,    11,    22,   -48,   -48,   -48,   -48,   -48,
      44,   -48,   -48,   -48,   104,   -48,   -48,     2,   -48,    58,
      39,    43,   -48,   -48,    35,   -48,    26,   -48,   -48,    47,
     -48,   -48,    58,   -48,   -48,   -48
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int8 yypgoto[] =
{
     -48,   -48,    -3,    -8,   -48,   -48,   -48,   -48,   -48,   -48,
     -13,   -48,   -48,   -48,   -48,   -48,    32,   -48,   -48,    -1,
     -24,   -47,   -48,   -48,    -4,    10,    76,   -48,    78,   -48,
     -48,   -25
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If zero, do what YYDEFACT says.
   If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -1
static const yytype_uint8 yytable[] =
{
      35,    69,    27,    44,    38,    52,    40,    41,    42,    23,
      73,    54,    43,    59,    47,    51,    53,    55,    91,    21,
      56,    23,    63,    32,    57,    58,    23,    59,    33,    94,
      74,    71,    72,    91,    82,    24,    85,    93,    86,    44,
      81,    70,   100,    44,    80,    44,    84,    24,    95,    71,
      96,    75,   103,    24,    60,   105,    76,    79,    77,    90,
      78,    32,    57,    58,    69,    23,    33,    89,    32,    91,
      97,    98,    23,    33,   101,   102,    44,    69,   104,    83,
      36,    92,    37,     0,     0,    63,    99,     1,     0,     0,
       0,    24,    60,     0,     0,     0,     2,     0,    63,     1,
       3,     4,     5,     0,     6,     7,     8,     0,     2,     9,
       1,    87,     3,     4,     5,    45,    46,     7,     8,     2,
       0,     9,     1,     3,     4,     5,    45,     6,     7,     8,
       0,     2,     9,     0,     0,     3,     4,     5,     0,     6,
       7,     8,     0,     0,     9
};

static const yytype_int8 yycheck[] =
{
       4,    26,     3,    11,     5,    18,     7,     8,     9,     7,
      34,    10,     0,     7,    17,    18,    19,    16,     7,    10,
      24,     7,    26,     3,     4,     5,     7,     7,     8,     7,
      34,     9,    26,     7,    47,    33,    49,    26,    51,    47,
      26,    26,    89,    51,    45,    53,    49,    33,    26,     9,
      74,    26,    26,    33,    34,   102,    26,    29,    27,    60,
      26,     3,     4,     5,    89,     7,     8,    32,     3,     7,
      26,    84,     7,     8,    35,    32,    84,   102,    31,    47,
       4,    71,     4,    -1,    -1,    89,    87,     6,    -1,    -1,
      -1,    33,    34,    -1,    -1,    -1,    15,    -1,   102,     6,
      19,    20,    21,    -1,    23,    24,    25,    -1,    15,    28,
       6,    30,    19,    20,    21,    22,    23,    24,    25,    15,
      -1,    28,     6,    19,    20,    21,    22,    23,    24,    25,
      -1,    15,    28,    -1,    -1,    19,    20,    21,    -1,    23,
      24,    25,    -1,    -1,    28
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     6,    15,    19,    20,    21,    23,    24,    25,    28,
      39,    40,    41,    42,    44,    45,    46,    47,    50,    51,
      53,    10,    43,     7,    33,    55,    56,    57,    61,    62,
      63,    69,     3,     8,    60,    62,    64,    66,    57,    57,
      57,    57,    57,     0,    41,    22,    23,    40,    48,    49,
      54,    40,    48,    40,    10,    16,    62,     4,     5,     7,
      34,    58,    59,    62,    64,    65,    66,    67,    68,    69,
      26,     9,    26,    58,    62,    26,    26,    27,    26,    29,
      57,    26,    48,    54,    40,    48,    48,    30,    52,    32,
      57,     7,    63,    26,     7,    26,    58,    26,    48,    57,
      59,    35,    32,    26,    31,    59
};

#define yyerrok		(yyerrstatus = 0)
#define yyclearin	(yychar = YYEMPTY)
#define YYEMPTY		(-2)
#define YYEOF		0

#define YYACCEPT	goto yyacceptlab
#define YYABORT		goto yyabortlab
#define YYERROR		goto yyerrorlab


/* Like YYERROR except do call yyerror.  This remains here temporarily
   to ease the transition to the new meaning of YYERROR, for GCC.
   Once GCC version 2 has supplanted version 1, this can go.  */

#define YYFAIL		goto yyerrlab

#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)					\
do								\
  if (yychar == YYEMPTY && yylen == 1)				\
    {								\
      yychar = (Token);						\
      yylval = (Value);						\
      yytoken = YYTRANSLATE (yychar);				\
      YYPOPSTACK (1);						\
      goto yybackup;						\
    }								\
  else								\
    {								\
      yyerror (&yylloc, scanner, root, error, YY_("syntax error: cannot back up")); \
      YYERROR;							\
    }								\
while (YYID (0))


#define YYTERROR	1
#define YYERRCODE	256


/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#define YYRHSLOC(Rhs, K) ((Rhs)[K])
#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)				\
    do									\
      if (YYID (N))                                                    \
	{								\
	  (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;	\
	  (Current).first_column = YYRHSLOC (Rhs, 1).first_column;	\
	  (Current).last_line    = YYRHSLOC (Rhs, N).last_line;		\
	  (Current).last_column  = YYRHSLOC (Rhs, N).last_column;	\
	}								\
      else								\
	{								\
	  (Current).first_line   = (Current).last_line   =		\
	    YYRHSLOC (Rhs, 0).last_line;				\
	  (Current).first_column = (Current).last_column =		\
	    YYRHSLOC (Rhs, 0).last_column;				\
	}								\
    while (YYID (0))
#endif


/* YY_LOCATION_PRINT -- Print the location on the stream.
   This macro was not mandated originally: define only if we know
   we won't break user code: when these are the locations we know.  */

#ifndef YY_LOCATION_PRINT
# if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL
#  define YY_LOCATION_PRINT(File, Loc)			\
     fprintf (File, "%d.%d-%d.%d",			\
	      (Loc).first_line, (Loc).first_column,	\
	      (Loc).last_line,  (Loc).last_column)
# else
#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
# endif
#endif


/* YYLEX -- calling `yylex' with the right arguments.  */

#ifdef YYLEX_PARAM
# define YYLEX yylex (&yylval, &yylloc, YYLEX_PARAM)
#else
# define YYLEX yylex (&yylval, &yylloc, scanner)
#endif

/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)			\
do {						\
  if (yydebug)					\
    YYFPRINTF Args;				\
} while (YYID (0))

# define YY_SYMBOL_PRINT(Title, Type, Value, Location)			  \
do {									  \
  if (yydebug)								  \
    {									  \
      YYFPRINTF (stderr, "%s ", Title);					  \
      yy_symbol_print (stderr,						  \
		  Type, Value, Location, scanner, root, error); \
      YYFPRINTF (stderr, "\n");						  \
    }									  \
} while (YYID (0))


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp, void * scanner, HBAstProgram** root, NSError** error)
#else
static void
yy_symbol_value_print (yyoutput, yytype, yyvaluep, yylocationp, scanner, root, error)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
    YYLTYPE const * const yylocationp;
    void * scanner;
    HBAstProgram** root;
    NSError** error;
#endif
{
  if (!yyvaluep)
    return;
  YYUSE (yylocationp);
  YYUSE (scanner);
  YYUSE (root);
  YYUSE (error);
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# else
  YYUSE (yyoutput);
# endif
  switch (yytype)
    {
      default:
	break;
    }
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp, void * scanner, HBAstProgram** root, NSError** error)
#else
static void
yy_symbol_print (yyoutput, yytype, yyvaluep, yylocationp, scanner, root, error)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
    YYLTYPE const * const yylocationp;
    void * scanner;
    HBAstProgram** root;
    NSError** error;
#endif
{
  if (yytype < YYNTOKENS)
    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
  else
    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);

  YY_LOCATION_PRINT (yyoutput, *yylocationp);
  YYFPRINTF (yyoutput, ": ");
  yy_symbol_value_print (yyoutput, yytype, yyvaluep, yylocationp, scanner, root, error);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_stack_print (yytype_int16 *bottom, yytype_int16 *top)
#else
static void
yy_stack_print (bottom, top)
    yytype_int16 *bottom;
    yytype_int16 *top;
#endif
{
  YYFPRINTF (stderr, "Stack now");
  for (; bottom <= top; ++bottom)
    YYFPRINTF (stderr, " %d", *bottom);
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)				\
do {								\
  if (yydebug)							\
    yy_stack_print ((Bottom), (Top));				\
} while (YYID (0))


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_reduce_print (YYSTYPE *yyvsp, YYLTYPE *yylsp, int yyrule, void * scanner, HBAstProgram** root, NSError** error)
#else
static void
yy_reduce_print (yyvsp, yylsp, yyrule, scanner, root, error)
    YYSTYPE *yyvsp;
    YYLTYPE *yylsp;
    int yyrule;
    void * scanner;
    HBAstProgram** root;
    NSError** error;
#endif
{
  int yynrhs = yyr2[yyrule];
  int yyi;
  unsigned long int yylno = yyrline[yyrule];
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
	     yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      fprintf (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr, yyrhs[yyprhs[yyrule] + yyi],
		       &(yyvsp[(yyi + 1) - (yynrhs)])
		       , &(yylsp[(yyi + 1) - (yynrhs)])		       , scanner, root, error);
      fprintf (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)		\
do {					\
  if (yydebug)				\
    yy_reduce_print (yyvsp, yylsp, Rule, scanner, root, error); \
} while (YYID (0))

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef	YYINITDEPTH
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



#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static YYSIZE_T
yystrlen (const char *yystr)
#else
static YYSIZE_T
yystrlen (yystr)
    const char *yystr;
#endif
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static char *
yystpcpy (char *yydest, const char *yysrc)
#else
static char *
yystpcpy (yydest, yysrc)
    char *yydest;
    const char *yysrc;
#endif
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
	switch (*++yyp)
	  {
	  case '\'':
	  case ',':
	    goto do_not_strip_quotes;

	  case '\\':
	    if (*++yyp != '\\')
	      goto do_not_strip_quotes;
	    /* Fall through.  */
	  default:
	    if (yyres)
	      yyres[yyn] = *yyp;
	    yyn++;
	    break;

	  case '"':
	    if (yyres)
	      yyres[yyn] = '\0';
	    return yyn;
	  }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into YYRESULT an error message about the unexpected token
   YYCHAR while in state YYSTATE.  Return the number of bytes copied,
   including the terminating null byte.  If YYRESULT is null, do not
   copy anything; just return the number of bytes that would be
   copied.  As a special case, return 0 if an ordinary "syntax error"
   message will do.  Return YYSIZE_MAXIMUM if overflow occurs during
   size calculation.  */
static YYSIZE_T
yysyntax_error (char *yyresult, int yystate, int yychar)
{
  int yyn = yypact[yystate];

  if (! (YYPACT_NINF < yyn && yyn <= YYLAST))
    return 0;
  else
    {
      int yytype = YYTRANSLATE (yychar);
      YYSIZE_T yysize0 = yytnamerr (0, yytname[yytype]);
      YYSIZE_T yysize = yysize0;
      YYSIZE_T yysize1;
      int yysize_overflow = 0;
      enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
      char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
      int yyx;

# if 0
      /* This is so xgettext sees the translatable formats that are
	 constructed on the fly.  */
      YY_("syntax error, unexpected %s");
      YY_("syntax error, unexpected %s, expecting %s");
      YY_("syntax error, unexpected %s, expecting %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s");
# endif
      char *yyfmt;
      char const *yyf;
      static char const yyunexpected[] = "syntax error, unexpected %s";
      static char const yyexpecting[] = ", expecting %s";
      static char const yyor[] = " or %s";
      char yyformat[sizeof yyunexpected
		    + sizeof yyexpecting - 1
		    + ((YYERROR_VERBOSE_ARGS_MAXIMUM - 2)
		       * (sizeof yyor - 1))];
      char const *yyprefix = yyexpecting;

      /* Start YYX at -YYN if negative to avoid negative indexes in
	 YYCHECK.  */
      int yyxbegin = yyn < 0 ? -yyn : 0;

      /* Stay within bounds of both yycheck and yytname.  */
      int yychecklim = YYLAST - yyn + 1;
      int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
      int yycount = 1;

      yyarg[0] = yytname[yytype];
      yyfmt = yystpcpy (yyformat, yyunexpected);

      for (yyx = yyxbegin; yyx < yyxend; ++yyx)
	if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR)
	  {
	    if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
	      {
		yycount = 1;
		yysize = yysize0;
		yyformat[sizeof yyunexpected - 1] = '\0';
		break;
	      }
	    yyarg[yycount++] = yytname[yyx];
	    yysize1 = yysize + yytnamerr (0, yytname[yyx]);
	    yysize_overflow |= (yysize1 < yysize);
	    yysize = yysize1;
	    yyfmt = yystpcpy (yyfmt, yyprefix);
	    yyprefix = yyor;
	  }

      yyf = YY_(yyformat);
      yysize1 = yysize + yystrlen (yyf);
      yysize_overflow |= (yysize1 < yysize);
      yysize = yysize1;

      if (yysize_overflow)
	return YYSIZE_MAXIMUM;

      if (yyresult)
	{
	  /* Avoid sprintf, as that infringes on the user's name space.
	     Don't have undefined behavior even if the translation
	     produced a string with the wrong number of "%s"s.  */
	  char *yyp = yyresult;
	  int yyi = 0;
	  while ((*yyp = *yyf) != '\0')
	    {
	      if (*yyp == '%' && yyf[1] == 's' && yyi < yycount)
		{
		  yyp += yytnamerr (yyp, yyarg[yyi++]);
		  yyf += 2;
		}
	      else
		{
		  yyp++;
		  yyf++;
		}
	    }
	}
      return yysize;
    }
}
#endif /* YYERROR_VERBOSE */


/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep, YYLTYPE *yylocationp, void * scanner, HBAstProgram** root, NSError** error)
#else
static void
yydestruct (yymsg, yytype, yyvaluep, yylocationp, scanner, root, error)
    const char *yymsg;
    int yytype;
    YYSTYPE *yyvaluep;
    YYLTYPE *yylocationp;
    void * scanner;
    HBAstProgram** root;
    NSError** error;
#endif
{
  YYUSE (yyvaluep);
  YYUSE (yylocationp);
  YYUSE (scanner);
  YYUSE (root);
  YYUSE (error);

  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  switch (yytype)
    {

      default:
	break;
    }
}


/* Prevent warnings from -Wmissing-prototypes.  */

#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (void * scanner, HBAstProgram** root, NSError** error);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */






/*----------.
| yyparse.  |
`----------*/

#ifdef YYPARSE_PARAM
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void *YYPARSE_PARAM)
#else
int
yyparse (YYPARSE_PARAM)
    void *YYPARSE_PARAM;
#endif
#else /* ! YYPARSE_PARAM */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void * scanner, HBAstProgram** root, NSError** error)
#else
int
yyparse (scanner, root, error)
    void * scanner;
    HBAstProgram** root;
    NSError** error;
#endif
#endif
{
  /* The look-ahead symbol.  */
int yychar;

/* The semantic value of the look-ahead symbol.  */
YYSTYPE yylval;

/* Number of syntax errors so far.  */
int yynerrs;
/* Location data for the look-ahead symbol.  */
YYLTYPE yylloc;

  int yystate;
  int yyn;
  int yyresult;
  /* Number of tokens to shift before error messages enabled.  */
  int yyerrstatus;
  /* Look-ahead token as an internal (translated) token number.  */
  int yytoken = 0;
#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

  /* Three stacks and their tools:
     `yyss': related to states,
     `yyvs': related to semantic values,
     `yyls': related to locations.

     Refer to the stacks thru separate pointers, to allow yyoverflow
     to reallocate them elsewhere.  */

  /* The state stack.  */
  yytype_int16 yyssa[YYINITDEPTH];
  yytype_int16 *yyss = yyssa;
  yytype_int16 *yyssp;

  /* The semantic value stack.  */
  YYSTYPE yyvsa[YYINITDEPTH];
  YYSTYPE *yyvs = yyvsa;
  YYSTYPE *yyvsp;

  /* The location stack.  */
  YYLTYPE yylsa[YYINITDEPTH];
  YYLTYPE *yyls = yylsa;
  YYLTYPE *yylsp;
  /* The locations where the error started and ended.  */
  YYLTYPE yyerror_range[2];

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N), yylsp -= (N))

  YYSIZE_T yystacksize = YYINITDEPTH;

  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;
  YYLTYPE yyloc;

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY;		/* Cause a token to be read.  */

  /* Initialize stack pointers.
     Waste one element of value and location stack
     so that they stay on the same level as the state stack.
     The wasted elements are never initialized.  */

  yyssp = yyss;
  yyvsp = yyvs;
  yylsp = yyls;
#if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL
  /* Initialize the default location before parsing starts.  */
  yylloc.first_line   = yylloc.last_line   = 1;
  yylloc.first_column = yylloc.last_column = 0;
#endif

  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
	/* Give user a chance to reallocate the stack.  Use copies of
	   these so that the &'s don't force the real ones into
	   memory.  */
	YYSTYPE *yyvs1 = yyvs;
	yytype_int16 *yyss1 = yyss;
	YYLTYPE *yyls1 = yyls;

	/* Each stack pointer address is followed by the size of the
	   data in use in that stack, in bytes.  This used to be a
	   conditional around just the two extra args, but that might
	   be undefined if yyoverflow is a macro.  */
	yyoverflow (YY_("memory exhausted"),
		    &yyss1, yysize * sizeof (*yyssp),
		    &yyvs1, yysize * sizeof (*yyvsp),
		    &yyls1, yysize * sizeof (*yylsp),
		    &yystacksize);
	yyls = yyls1;
	yyss = yyss1;
	yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
	goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
	yystacksize = YYMAXDEPTH;

      {
	yytype_int16 *yyss1 = yyss;
	union yyalloc *yyptr =
	  (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
	if (! yyptr)
	  goto yyexhaustedlab;
	YYSTACK_RELOCATE (yyss);
	YYSTACK_RELOCATE (yyvs);
	YYSTACK_RELOCATE (yyls);
#  undef YYSTACK_RELOCATE
	if (yyss1 != yyssa)
	  YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;
      yylsp = yyls + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
		  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
	YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     look-ahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to look-ahead token.  */
  yyn = yypact[yystate];
  if (yyn == YYPACT_NINF)
    goto yydefault;

  /* Not known => get a look-ahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid look-ahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = YYLEX;
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
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
      if (yyn == 0 || yyn == YYTABLE_NINF)
	goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  if (yyn == YYFINAL)
    YYACCEPT;

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the look-ahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token unless it is eof.  */
  if (yychar != YYEOF)
    yychar = YYEMPTY;

  yystate = yyn;
  *++yyvsp = yylval;
  *++yylsp = yylloc;
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
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     `$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];

  /* Default location.  */
  YYLLOC_DEFAULT (yyloc, (yylsp - yylen), yylen);
  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 136 "handlebars-objc.ym"
    { HBAstProgram* program = [[HBAstProgram new] autorelease]; program.statements = (yyvsp[(1) - (1)].astArray); *root = program; ;}
    break;

  case 3:
#line 137 "handlebars-objc.ym"
    { *root = nil; ;}
    break;

  case 4:
#line 141 "handlebars-objc.ym"
    { NSMutableArray* statements = [[NSMutableArray new] autorelease]; [statements addObject:(yyvsp[(1) - (1)].astNode)]; (yyval.astArray) = statements; ;}
    break;

  case 5:
#line 142 "handlebars-objc.ym"
    { [(yyvsp[(1) - (2)].astArray) addObject:(yyvsp[(2) - (2)].astNode)]; (yyval.astArray) = (yyvsp[(1) - (2)].astArray); ;}
    break;

  case 6:
#line 146 "handlebars-objc.ym"
    {;}
    break;

  case 7:
#line 147 "handlebars-objc.ym"
    {;}
    break;

  case 8:
#line 148 "handlebars-objc.ym"
    {;}
    break;

  case 9:
#line 149 "handlebars-objc.ym"
    {;}
    break;

  case 10:
#line 150 "handlebars-objc.ym"
    {;}
    break;

  case 11:
#line 154 "handlebars-objc.ym"
    { HBAstComment* c = [[HBAstComment new] autorelease]; c.litteralValue = (yyvsp[(2) - (3)].nsString); (yyval.astComment) = c; ;}
    break;

  case 13:
#line 159 "handlebars-objc.ym"
    { (yyval.nsString) = [(yyvsp[(1) - (2)].nsString) stringByAppendingString:(yyvsp[(2) - (2)].nsString)]; ;}
    break;

  case 14:
#line 163 "handlebars-objc.ym"
    { HBAstRawText* rawText = [[HBAstRawText new] autorelease]; rawText.litteralValue = (yyvsp[(1) - (1)].nsString); (yyval.astRawText) = rawText; ;}
    break;

  case 15:
#line 167 "handlebars-objc.ym"
    { HBAstSimpleTag* tag = [[HBAstSimpleTag new] autorelease]; tag.left_wsc = (yyvsp[(1) - (3)].ival); tag.right_wsc = (yyvsp[(3) - (3)].ival); tag.expression = (yyvsp[(2) - (3)].astExpression); tag.escape = true; (yyval.astSimpleTag) = tag; ;}
    break;

  case 16:
#line 168 "handlebars-objc.ym"
    { HBAstSimpleTag* tag = [[HBAstSimpleTag new] autorelease]; tag.left_wsc = (yyvsp[(1) - (3)].ival); tag.right_wsc = (yyvsp[(3) - (3)].ival); tag.expression = (yyvsp[(2) - (3)].astExpression); (yyval.astSimpleTag) = tag; ;}
    break;

  case 17:
#line 169 "handlebars-objc.ym"
    { HBAstSimpleTag* tag = [[HBAstSimpleTag new] autorelease]; tag.left_wsc = (yyvsp[(1) - (3)].ival); tag.right_wsc = (yyvsp[(3) - (3)].ival); tag.expression = (yyvsp[(2) - (3)].astExpression); (yyval.astSimpleTag) = tag; ;}
    break;

  case 18:
#line 173 "handlebars-objc.ym"
    { HBAstPartialTag* tag = [[HBAstPartialTag new] autorelease]; tag.left_wsc = (yyvsp[(1) - (3)].ival); tag.right_wsc = (yyvsp[(3) - (3)].ival); tag.partialName = (yyvsp[(2) - (3)].astValue); (yyval.astPartialTag) = tag; ;}
    break;

  case 19:
#line 174 "handlebars-objc.ym"
    { HBAstPartialTag* tag = [[HBAstPartialTag new] autorelease]; tag.left_wsc = (yyvsp[(1) - (4)].ival); tag.right_wsc = (yyvsp[(4) - (4)].ival); tag.partialName = (yyvsp[(2) - (4)].astValue); tag.context = (yyvsp[(3) - (4)].astContextualValue); (yyval.astPartialTag) = tag; ;}
    break;

  case 20:
#line 175 "handlebars-objc.ym"
    { HBAstPartialTag* tag = [[HBAstPartialTag new] autorelease]; tag.left_wsc = (yyvsp[(1) - (5)].ival); tag.right_wsc = (yyvsp[(5) - (5)].ival); tag.partialName = (yyvsp[(2) - (5)].astValue); tag.context = (yyvsp[(3) - (5)].astContextualValue); tag.namedParameters = (yyvsp[(4) - (5)].astHash); (yyval.astPartialTag) = tag; ;}
    break;

  case 21:
#line 176 "handlebars-objc.ym"
    { HBAstPartialTag* tag = [[HBAstPartialTag new] autorelease]; tag.left_wsc = (yyvsp[(1) - (4)].ival); tag.right_wsc = (yyvsp[(4) - (4)].ival); tag.partialName = (yyvsp[(2) - (4)].astValue); tag.namedParameters = (yyvsp[(3) - (4)].astHash); (yyval.astPartialTag) = tag; ;}
    break;

  case 22:
#line 179 "handlebars-objc.ym"
    { HBAstTag* tag = [[HBAstTag new] autorelease]; tag.left_wsc = (yyvsp[(1) - (3)].ival); tag.right_wsc = (yyvsp[(3) - (3)].ival); tag.expression = (yyvsp[(2) - (3)].astExpression); (yyval.astTag) = tag; ;}
    break;

  case 23:
#line 183 "handlebars-objc.ym"
    { HBAstTag* tag = [[HBAstTag new] autorelease]; tag.left_wsc = (yyvsp[(1) - (3)].ival); tag.right_wsc = (yyvsp[(3) - (3)].ival); tag.expression = (yyvsp[(2) - (3)].astExpression); (yyval.astTag) = tag; ;}
    break;

  case 24:
#line 187 "handlebars-objc.ym"
    { HBAstTag* tag = [[HBAstTag new] autorelease]; tag.left_wsc = (yyvsp[(1) - (2)].ival); tag.right_wsc = (yyvsp[(2) - (2)].ival); (yyval.astTag) = tag;;}
    break;

  case 25:
#line 191 "handlebars-objc.ym"
    { HBAstTag* tag = [[HBAstTag new] autorelease]; tag.left_wsc = (yyvsp[(1) - (3)].ival); tag.right_wsc = (yyvsp[(3) - (3)].ival); tag.expression = (yyvsp[(2) - (3)].astExpression); (yyval.astTag) = tag; ;}
    break;

  case 26:
#line 195 "handlebars-objc.ym"
    { HBAstTag* tag = [[HBAstTag new] autorelease]; tag.left_wsc = (yyvsp[(1) - (3)].ival); tag.right_wsc = (yyvsp[(3) - (3)].ival); tag.expression = (yyvsp[(2) - (3)].astExpression); (yyval.astTag) = tag; ;}
    break;

  case 27:
#line 199 "handlebars-objc.ym"
    { HBAstTag* tag = [[HBAstTag new] autorelease]; tag.left_wsc = (yyvsp[(1) - (3)].ival); tag.right_wsc = (yyvsp[(3) - (3)].ival); tag.expression = (yyvsp[(2) - (3)].astExpression); (yyval.astTag) = tag; ;}
    break;

  case 28:
#line 203 "handlebars-objc.ym"
    {
    HBAstBlock* b = [[HBAstBlock new] autorelease];
    b.openTag = (yyvsp[(1) - (3)].astTag);
    b.statements = (yyvsp[(2) - (3)].astArray);
    b.closeTag = (yyvsp[(3) - (3)].astTag);
    (yyval.astBlock) = b;
    ;}
    break;

  case 29:
#line 210 "handlebars-objc.ym"
    {
    HBAstBlock* b = [[HBAstBlock new] autorelease];
    b.openTag = (yyvsp[(1) - (2)].astTag);
    b.closeTag = (yyvsp[(2) - (2)].astTag);
    (yyval.astBlock) = b;
    ;}
    break;

  case 30:
#line 216 "handlebars-objc.ym"
    {
    HBAstBlock* b = (yyvsp[(3) - (3)].astBlock);
    b.openTag = (yyvsp[(1) - (3)].astTag);
    b.statements = (yyvsp[(2) - (3)].astArray);
    (yyval.astBlock) = b;
    ;}
    break;

  case 31:
#line 222 "handlebars-objc.ym"
    {
    HBAstBlock* b = (yyvsp[(2) - (2)].astBlock);
    b.openTag = (yyvsp[(1) - (2)].astTag);
    (yyval.astBlock) = b;
    ;}
    break;

  case 32:
#line 227 "handlebars-objc.ym"
    {
    HBAstBlock* b = [[HBAstBlock new] autorelease];
    b.openTag = (yyvsp[(1) - (3)].astTag);
    b.inverseStatements = (yyvsp[(2) - (3)].astArray);
    b.closeTag = (yyvsp[(3) - (3)].astTag);
    (yyval.astBlock) = b;
    ;}
    break;

  case 33:
#line 234 "handlebars-objc.ym"
    {
    HBAstBlock* b = [[HBAstBlock new] autorelease];
    b.openTag = (yyvsp[(1) - (2)].astTag);
    b.closeTag = (yyvsp[(2) - (2)].astTag);
    (yyval.astBlock) = b;
    ;}
    break;

  case 34:
#line 240 "handlebars-objc.ym"
    {
    HBAstBlock* b = [[HBAstBlock new] autorelease];
    b.openTag = (yyvsp[(1) - (3)].astTag);
    b.statements = (yyvsp[(2) - (3)].astArray);
    b.closeTag = (yyvsp[(3) - (3)].astTag);
    (yyval.astBlock) = b;
    ;}
    break;

  case 35:
#line 250 "handlebars-objc.ym"
    {
    HBAstBlock* b = [[HBAstBlock new] autorelease];
    b.elseTag = (yyvsp[(1) - (3)].astTag);
    b.inverseStatements = (yyvsp[(2) - (3)].astArray);
    b.closeTag = (yyvsp[(3) - (3)].astTag);
    (yyval.astBlock) = b;
    ;}
    break;

  case 36:
#line 257 "handlebars-objc.ym"
    {
    HBAstBlock* b = [[HBAstBlock new] autorelease];
    b.elseTag = (yyvsp[(1) - (2)].astTag);
    b.closeTag = (yyvsp[(2) - (2)].astTag);
    (yyval.astBlock) = b;
;}
    break;

  case 37:
#line 265 "handlebars-objc.ym"
    { HBAstExpression* expression = [[HBAstExpression new] autorelease]; expression.mainValue = (yyvsp[(1) - (1)].astContextualValue); (yyval.astExpression) = expression;  ;}
    break;

  case 38:
#line 269 "handlebars-objc.ym"
    { (yyval.astExpression) = (yyvsp[(1) - (1)].astExpression); ;}
    break;

  case 39:
#line 270 "handlebars-objc.ym"
    { [(yyvsp[(1) - (2)].astExpression) addPositionalParameter:(yyvsp[(2) - (2)].astValue)]; (yyval.astExpression) = (yyvsp[(1) - (2)].astExpression); ;}
    break;

  case 41:
#line 275 "handlebars-objc.ym"
    { (yyvsp[(1) - (2)].astExpression).namedParameters = (yyvsp[(2) - (2)].astHash); (yyval.astExpression) = (yyvsp[(1) - (2)].astExpression); ;}
    break;

  case 42:
#line 279 "handlebars-objc.ym"
    { HBAstParametersHash* h = [[HBAstParametersHash new] autorelease]; [h appendParameter:(yyvsp[(3) - (3)].astValue) forKey:(yyvsp[(1) - (3)].nsString)]; (yyval.astHash) = h; ;}
    break;

  case 43:
#line 280 "handlebars-objc.ym"
    { [(yyvsp[(1) - (4)].astHash) appendParameter:(yyvsp[(4) - (4)].astValue) forKey:(yyvsp[(2) - (4)].nsString)]; (yyval.astHash) = (yyvsp[(1) - (4)].astHash); ;}
    break;

  case 44:
#line 284 "handlebars-objc.ym"
    { (yyval.astValue) = (yyvsp[(2) - (3)].astExpression); ;}
    break;

  case 45:
#line 285 "handlebars-objc.ym"
    { (yyval.astValue) = (yyvsp[(1) - (1)].astContextualValue); ;}
    break;

  case 46:
#line 286 "handlebars-objc.ym"
    { (yyval.astValue) = (yyvsp[(1) - (1)].astString); ;}
    break;

  case 47:
#line 287 "handlebars-objc.ym"
    { (yyval.astValue) = (yyvsp[(1) - (1)].astNumber); ;}
    break;

  case 48:
#line 288 "handlebars-objc.ym"
    { (yyval.astValue) = (yyvsp[(1) - (1)].astNumber); ;}
    break;

  case 49:
#line 289 "handlebars-objc.ym"
    { (yyval.astValue) = (yyvsp[(1) - (1)].astContextualValue); ;}
    break;

  case 50:
#line 293 "handlebars-objc.ym"
    {;}
    break;

  case 51:
#line 294 "handlebars-objc.ym"
    {;}
    break;

  case 52:
#line 295 "handlebars-objc.ym"
    {;}
    break;

  case 53:
#line 299 "handlebars-objc.ym"
    {;}
    break;

  case 54:
#line 300 "handlebars-objc.ym"
    {;}
    break;

  case 55:
#line 304 "handlebars-objc.ym"
    {
    (yyvsp[(3) - (3)].astPathComponent).leadingSeparator = (yyvsp[(2) - (3)].nsString);
    [(yyvsp[(1) - (3)].astContextualValue).keyPath addObject:(yyvsp[(3) - (3)].astPathComponent)];
    (yyval.astContextualValue) = (yyvsp[(1) - (3)].astContextualValue);
    ;}
    break;

  case 56:
#line 309 "handlebars-objc.ym"
    {
    HBAstContextualValue* contextualValue = [[HBAstContextualValue new] autorelease];
    contextualValue.keyPath = [NSMutableArray arrayWithObject:(yyvsp[(1) - (1)].astPathComponent)];
    (yyval.astContextualValue) = contextualValue;
    ;}
    break;

  case 57:
#line 316 "handlebars-objc.ym"
    { HBAstKeyPathComponent* component = [[HBAstKeyPathComponent new] autorelease] ; component.key = (yyvsp[(1) - (1)].nsString); (yyval.astPathComponent) = component; ;}
    break;

  case 58:
#line 320 "handlebars-objc.ym"
    { HBAstString* s = [[HBAstString new] autorelease]; s.litteralValue = (yyvsp[(1) - (1)].nsString); s.sourceRepresentation = (yyvsp[(1) - (1)].nsString); (yyval.astString) = s; ;}
    break;

  case 61:
#line 329 "handlebars-objc.ym"
    { HBAstNumber* i = [[HBAstNumber new] autorelease]; i.litteralValue = [NSNumber numberWithInteger:[(yyvsp[(1) - (1)].nsString) integerValue]]; i.sourceRepresentation = (yyvsp[(1) - (1)].nsString); (yyval.astNumber) = i; ;}
    break;

  case 62:
#line 333 "handlebars-objc.ym"
    { HBAstNumber* i = [[HBAstNumber new] autorelease]; i.litteralValue = [NSNumber numberWithDouble:[(yyvsp[(1) - (1)].nsString) doubleValue]]; i.sourceRepresentation = (yyvsp[(1) - (1)].nsString); (yyval.astNumber) = i; ;}
    break;

  case 63:
#line 337 "handlebars-objc.ym"
    { HBAstNumber* b = [[HBAstNumber new] autorelease]; b.litteralValue = ([(yyvsp[(1) - (1)].nsString) isEqual:AT"true"] ? AT_TRUE : AT_FALSE); b.isBoolean = true; b.sourceRepresentation = (yyvsp[(1) - (1)].nsString); (yyval.astNumber) = b; ;}
    break;

  case 64:
#line 341 "handlebars-objc.ym"
    { (yyvsp[(2) - (2)].astContextualValue).isDataValue = true; (yyval.astContextualValue) = (yyvsp[(2) - (2)].astContextualValue);  ;}
    break;


/* Line 1267 of yacc.c.  */
#line 1959 "y.tab.m"
      default: break;
    }
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;
  *++yylsp = yyloc;

  /* Now `shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*------------------------------------.
| yyerrlab -- here on detecting error |
`------------------------------------*/
yyerrlab:
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (&yylloc, scanner, root, error, YY_("syntax error"));
#else
      {
	YYSIZE_T yysize = yysyntax_error (0, yystate, yychar);
	if (yymsg_alloc < yysize && yymsg_alloc < YYSTACK_ALLOC_MAXIMUM)
	  {
	    YYSIZE_T yyalloc = 2 * yysize;
	    if (! (yysize <= yyalloc && yyalloc <= YYSTACK_ALLOC_MAXIMUM))
	      yyalloc = YYSTACK_ALLOC_MAXIMUM;
	    if (yymsg != yymsgbuf)
	      YYSTACK_FREE (yymsg);
	    yymsg = (char *) YYSTACK_ALLOC (yyalloc);
	    if (yymsg)
	      yymsg_alloc = yyalloc;
	    else
	      {
		yymsg = yymsgbuf;
		yymsg_alloc = sizeof yymsgbuf;
	      }
	  }

	if (0 < yysize && yysize <= yymsg_alloc)
	  {
	    (void) yysyntax_error (yymsg, yystate, yychar);
	    yyerror (&yylloc, scanner, root, error, yymsg);
	  }
	else
	  {
	    yyerror (&yylloc, scanner, root, error, YY_("syntax error"));
	    if (yysize != 0)
	      goto yyexhaustedlab;
	  }
      }
#endif
    }

  yyerror_range[0] = yylloc;

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse look-ahead token after an
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
		      yytoken, &yylval, &yylloc, scanner, root, error);
	  yychar = YYEMPTY;
	}
    }

  /* Else will try to reuse look-ahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  yyerror_range[0] = yylsp[1-yylen];
  /* Do not reclaim the symbols of the rule which action triggered
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
  yyerrstatus = 3;	/* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (yyn != YYPACT_NINF)
	{
	  yyn += YYTERROR;
	  if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
	    {
	      yyn = yytable[yyn];
	      if (0 < yyn)
		break;
	    }
	}

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
	YYABORT;

      yyerror_range[0] = *yylsp;
      yydestruct ("Error: popping",
		  yystos[yystate], yyvsp, yylsp, scanner, root, error);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  if (yyn == YYFINAL)
    YYACCEPT;

  *++yyvsp = yylval;

  yyerror_range[1] = yylloc;
  /* Using YYLLOC is tempting, but would change the location of
     the look-ahead.  YYLOC is available though.  */
  YYLLOC_DEFAULT (yyloc, (yyerror_range - 1), 2);
  *++yylsp = yyloc;

  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#ifndef yyoverflow
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (&yylloc, scanner, root, error, YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEOF && yychar != YYEMPTY)
     yydestruct ("Cleanup: discarding lookahead",
		 yytoken, &yylval, &yylloc, scanner, root, error);
  /* Do not reclaim the symbols of the rule which action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
		  yystos[*yyssp], yyvsp, yylsp, scanner, root, error);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  /* Make sure YYID is used.  */
  return YYID (yyresult);
}


#line 344 "handlebars-objc.ym"


void yyerror(YYLTYPE* loc, yyscan_t scanner, HBAstProgram** root, NSError** error, const char *s)
{
    if (error) *error = [HBParseError parseErrorWithLineNumber:loc->first_line
                            positionInBuffer:loc->first_column
                            contextInBuffer:@""
                            lowLevelParserDescription:[NSString stringWithFormat:@"%s", s]
                            ];
}


#pragma clang diagnostic pop




