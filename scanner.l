%option noyywrap
%{ 
#include "token.h"
%}
delim 	[ \t\n\r]
ws 	{delim}+
digit 	[0-9]
letter 	[a-zA-Z]
id 	({letter}|_)({letter}|{digit}|_)*
number	{digit}+
string  \"([^\"\n]|\\\")*\"
com 	;.*$
%%
{ws}			{/* do nothing */}
{com}			{/* do nothing */}
display			{return TOKEN_DISPLAY;}
and			{return TOKEN_AND;}
or			{return TOKEN_OR;}
cons			{return TOKEN_CONS;}
cond			{return TOKEN_COND;}
cdr			{return TOKEN_CDR;}
"null?"			{return TOKEN_NULL;}
"eq?"			{return TOKEN_EQ;}
if			{return TOKEN_IF;}
else			{return TOKEN_ELSE;}
#f			{return TOKEN_FALSE;}
#t			{return TOKEN_TRUE;}
"+"			{return TOKEN_ADD;}
"-"			{return TOKEN_SUBTRACT;}
"*"			{return TOKEN_MULTIPLY;}
"/"			{return TOKEN_DIVIDE;}
"%"			{return TOKEN_MOD;}
">"			{return TOKEN_GT;}
">="			{return TOKEN_GTE;}
"<"			{return TOKEN_LT;}
"<="			{return TOKEN_LTE;}
"("			{return TOKEN_L_PAREN;}
")"			{return TOKEN_R_PAREN;}

{string}		{
				edit_string(yytext);
				return TOKEN_STRING_LITERAL;
				
			}
{number}		{return TOKEN_INTEGER_LITERAL;}

{id}			{
				
				return TOKEN_IDENT;
				
			}
.			{printf("scan error: invalid character: %c\n",yytext[0]); exit(1);}
%%

