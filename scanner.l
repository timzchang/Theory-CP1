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
else			{return TOKEN_ELSE;}
#f			{return TOKEN_FALSE;}
if			{return TOKEN_IF;}
display			{return TOKEN_DISPLAY;}
#t			{return TOKEN_TRUE;}
"null?"			{return TOKEN_NULL;}
"+"			{return TOKEN_ADD;}
"-"			{return TOKEN_SUBTRACT;}
"*"			{return TOKEN_MULTIPLY;}
"/"			{return TOKEN_DIVIDE;}
"%"			{return TOKEN_MOD;}
">"			{return TOKEN_GT;}
">="			{return TOKEN_GTE;}
"<"			{return TOKEN_LT;}
"<="			{return TOKEN_LTE;}
"eq?"			{return TOKEN_EQ;}
and			{return TOKEN_AND;}
or			{return TOKEN_OR;}
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

