CC=gcc

all: heist

heist: lex.yy.c token.c heist.c scanner.l
	$(CC) lex.yy.c token.c heist.c -o heist 

lex.yy.c: scanner.l
	flex scanner.l

.PHONY: clean
clean:
	-rm lex.yy.c heist *~
