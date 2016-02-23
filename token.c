#include "token.h"
#include <string.h>

const char* token_string(token_t t){
	switch(t){
		case TOKEN_L_PAREN:
			return "L_PAREN";
			break;
		case TOKEN_R_PAREN:
			return "R_PAREN";
			break;
		case TOKEN_SEMICOLON:
			return "SEMICOLON";
			break;
		case TOKEN_DOUBLEQUOTE:
			return "DOUBLEQUOTE";
			break;
		case TOKEN_SINGLEQUOTE:
			return "SINGLEQUOTE";
			break;
		case TOKEN_TRUE:
			return "TRUE";
			break;
		case TOKEN_FALSE:
			return "FALSE";
			break;
		case TOKEN_IF:
			return "IF";
			break;
		case TOKEN_AND:
			return "AND";
			break;
		case TOKEN_OR:
			return "OR";
			break;
		case TOKEN_NOT:
			return "NOT";
			break;
		case TOKEN_ADD:
			return "ADD";
			break;
		case TOKEN_SUBTRACT:
			return "SUBTRACT";
			break;
		case TOKEN_DIVIDE:
			return "DIVIDE";
			break;
		case TOKEN_MULTIPLY:
			return "MULTIPLY";
			break;
		case TOKEN_COND:
			return "COND";
			break;
		case TOKEN_CONS:
			return "CONS";
			break;
		case TOKEN_DEFINE:
			return "DEFINE";
			break;
		case TOKEN_NULL:
			return "NULL";
			break;
		case TOKEN_CAR:
			return "CAR";
			break;
		case TOKEN_CDR:
			return "CDR";
			break;
		case TOKEN_GT:
			return "GT";
			break;
		case TOKEN_LT:
			return "LT";
			break;
		case TOKEN_EQ:
			return "EQ";
			break;
		case TOKEN_GTE:
			return "GTE";
			break;
		case TOKEN_LTE:
			return "LTE";
			break;
		case TOKEN_ELSE:
			return "ELSE";
			break;
		case TOKEN_DISPLAY:
			return "DISPLAY";
			break;
		case TOKEN_LAMBDA:
			return "LAMBDA";
			break;
		case TOKEN_IDENT:
			return "IDENTIFIER";
			break;
		case TOKEN_STRING_LITERAL:
			return "STRING_LITERAL";
			break;
		// default cases - shouldn't reach here
		case TOKEN_INTEGER_LITERAL:
			return "INTEGER_LITERAL";	
			break;
		default:
			return "scan error";
			break;
	}
}


void edit_string(char* word){
	int i, j;
	for(i = 1; i < strlen(word); i++){
		word[i-1] = word[i];
	}
	word[i-2] = '\0';			// remove second quote and end string there
	word[i-1] = '\0';
	for(i = 0; i < strlen(word); i++){
		if(word[i]=='\\'){
			if(word[i+1]=='n'){
				word[i] = '\n';
			} else if(word[i+1]=='0'){
				word[i] = '\0';	
				if(word[0] == '\0'){
					return;
				}
			} else if(word[i+1]=='t'){
				word[i] = '\t';
			} else{
				word[i] = word[i+1];
			}
			for(j = i+1; j < strlen(word)-1; j++){
				word[j] = word[j+1];
			}
			if(strlen(word) != 0){
				word[j] = '\0';
			}
		}
        }
}
