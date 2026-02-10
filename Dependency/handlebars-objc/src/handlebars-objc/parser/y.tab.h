/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

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
/* Line 1529 of yacc.c.  */
#line 143 "y.tab.h"
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


