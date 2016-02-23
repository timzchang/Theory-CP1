%token	NOT_TOKEN
%token	TOKEN_L_PAREN
%token	TOKEN_R_PAREN
%token	TOKEN_SEMICOLON
%token	TOKEN_DOUBLEQUOTE
%token	TOKEN_SINGLEQUOTE
%token	TOKEN_TRUE
%token	TOKEN_FALSE
%token	TOKEN_IF
%token	TOKEN_AND
%token	TOKEN_OR
%token	TOKEN_NOT
%token	TOKEN_ADD
%token	TOKEN_SUBTRACT
%token	TOKEN_DIVIDE
%token	TOKEN_MULTIPLY
%token	TOKEN_COND
%token	TOKEN_CONS
%token	TOKEN_DEFINE
%token	TOKEN_NULL
%token	TOKEN_CAR
%token	TOKEN_CDR
%token	TOKEN_GT
%token	TOKEN_LT
%token	TOKEN_EQ
%token	TOKEN_GTE
%token	TOKEN_LTE
%token	TOKEN_ELSE
%token	TOKEN_DISPLAY
%token	TOKEN_LAMBDA
%token	TOKEN_IDENT
%token	TOKEN_STRING_LITERAL
%token	TOKEN_MOD
%token	TOKEN_INTEGER_LITERAL

%{

#include <math.h>
#include <stdio.h>

#define YYSTYPE double

extern char *yytext();
extern int yylex();
extern int yyerror( char *str );

%}

%%

/* grammar goes here */
program`	:	func_list										/*scheme programs are just lists of sequential functions*/
	;
func_list	:	func func_list									/* func list is at least one function */
				| /*nothing*/
	;
func		:	TOKEN_L_PAREN func_name arg_list TOKEN_R_PAREN	/* ( func arg_list ) */
				| /*nothing*/
	;
func_name	:	TOKEN_TRUE
				| 	TOKEN_FALSE
				|	TOKEN_IF
				|	TOKEN_AND
				|	TOKEN_OR
				|	TOKEN_NOT
				|	TOKEN_ADD
				|	TOKEN_SUBTRACT
				|	TOKEN_DIVIDE
				|	TOKEN_MULTIPLY
				|	TOKEN COND
				|	TOKEN_CONS
				|	TOKEN_DEFINE
				|	TOKEN_NULL
				|	TOKEN_CAR
				|	TOKEN_CDR
				|	TOKEN_GT
				|	TOKEN_LT
				|	TOKEN_EQ
`				|	TOKEN_GTE
				|	TOKEN_LTE
				|	TOKEN_ELSE
				|	TOKEN_DISPLAY
				|	TOKEN_LAMBDA
				|	TOKEN_MOD
				|	TOKEN_IDENT		/*user defined functions?*/
	;
arg_list	:	func_list
				|	TOKEN_IDENT
				|	TOKEN_STRING_LITERAL
				|	TOKEN_INTEGER_LITERAL

	;

