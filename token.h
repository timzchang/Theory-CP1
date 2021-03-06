#ifndef TOKEN_H
#define TOKEN_H

enum token{
	NOT_TOKEN,
	TOKEN_L_PAREN,
	TOKEN_R_PAREN,
	TOKEN_SEMICOLON,
	TOKEN_DOUBLEQUOTE,
	TOKEN_SINGLEQUOTE,
	TOKEN_TRUE,
	TOKEN_FALSE,
	TOKEN_IF,
	TOKEN_AND,
	TOKEN_OR,
	TOKEN_NOT,
	TOKEN_ADD,
	TOKEN_SUBTRACT,
	TOKEN_DIVIDE,
	TOKEN_MULTIPLY,
	TOKEN_COND,
	TOKEN_CONS,
	TOKEN_DEFINE,
	TOKEN_NULL,
	TOKEN_CAR,
	TOKEN_CDR,
	TOKEN_GT,
	TOKEN_LT,
	TOKEN_EQ,
	TOKEN_GTE,
	TOKEN_LTE,
	TOKEN_ELSE,
	TOKEN_DISPLAY,
	TOKEN_LAMBDA,
	TOKEN_IDENT,
	TOKEN_STRING_LITERAL,
	TOKEN_MOD,
	TOKEN_INTEGER_LITERAL
};
typedef enum token token_t;

const char* token_string(token_t);
void edit_string(char * word);
#endif
