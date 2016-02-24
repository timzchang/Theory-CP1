
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

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
     NOT_TOKEN = 258,
     TOKEN_L_PAREN = 259,
     TOKEN_R_PAREN = 260,
     TOKEN_SEMICOLON = 261,
     TOKEN_DOUBLEQUOTE = 262,
     TOKEN_SINGLEQUOTE = 263,
     TOKEN_TRUE = 264,
     TOKEN_FALSE = 265,
     TOKEN_IF = 266,
     TOKEN_AND = 267,
     TOKEN_OR = 268,
     TOKEN_NOT = 269,
     TOKEN_ADD = 270,
     TOKEN_SUBTRACT = 271,
     TOKEN_DIVIDE = 272,
     TOKEN_MULTIPLY = 273,
     TOKEN_COND = 274,
     TOKEN_CONS = 275,
     TOKEN_DEFINE = 276,
     TOKEN_NULL = 277,
     TOKEN_CAR = 278,
     TOKEN_CDR = 279,
     TOKEN_GT = 280,
     TOKEN_LT = 281,
     TOKEN_EQ = 282,
     TOKEN_GTE = 283,
     TOKEN_LTE = 284,
     TOKEN_ELSE = 285,
     TOKEN_DISPLAY = 286,
     TOKEN_LAMBDA = 287,
     TOKEN_IDENT = 288,
     TOKEN_STRING_LITERAL = 289,
     TOKEN_MOD = 290,
     TOKEN_INTEGER_LITERAL = 291
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


