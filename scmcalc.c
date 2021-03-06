#include "token.h"
/*#include "parser.tab.h"*/
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <getopt.h>

void print_usage_and_exit();
void scan(char*);
void parse(char*);
extern int yyparse();
extern int yylex();
extern const char* token_string(token_t t);
int main(int argc, char* argv[]){
	int opt, long_index;
	static struct option long_options[] = {
		{"parse",	required_argument, 0, 'p'},
		{0,		0,		   0, 0}
	};
	while ((opt = getopt_long_only(argc, argv,"",long_options,&long_index)) != -1){		// go through the command line options
		switch(opt){
			case 'p':			// if the option was -parse
				parse(optarg);			// parse the file argument
				exit(0);
				break;
			default:
				print_usage_and_exit();	// if the wrong options were given
		}

	}
	if(argv[1]){
		parse(argv[1]);
	} else {
		print_usage_and_exit();
	}
	return 0;
}

void print_usage_and_exit(){
  	printf("Usage: ./scmcalc [-parse] sourcefile.scm\n");
  	exit(1);
}

// scan the file passed in. Works the same as the scanner potion of the compiler project. Will print out the stream of tokens
// read from the input file
void scan(char *file){
        extern FILE* yyin;		// file to read from
	extern char* yytext;		// holds matches
	int t;
	yyin = fopen(file,"r");
	if(!yyin){
        	fprintf(stderr,"Could not open file '%s'\n",file);
	 	exit(1);
        }
	while(1){
		t = yylex();
		if (!t){
			break;
		} else{				// if t is not NULL and not 0
			if(t==TOKEN_STRING_LITERAL){	// if it requires a literal,
				printf("%s %s\n",token_string(t),yytext);				// print out the string and the value
			} else {
				printf("%s\n",token_string(t));						// print out the string of the token
			}
		}
	}
	return;
}


// parse the file passed in and prints out the syntax tree. Will fail with exit code 1 if the parse is unsuccessful
void parse(char *file){
    extern FILE* yyin;		// file to read from
	extern char* yytext;		// holds matches
	extern int parser_result;
	yyin = fopen(file,"r");
	if(!yyin){
        	printf("Could not open file '%s'\n",file);
	 	exit(1);
        }
	if(yyparse()==0){
		printf("successful parse\n");
		printf("result is: %d\n",parser_result);
	} else {
		printf("parse failed\n");
		exit(1);
	}
	return;
}
