CC=gcc

all: heist

heist: heist.o scanner.o parser.tab.o token.o
	$(CC) heist.o scanner.o parser.tab.o token.o -o heist

%.o: %.c *.h parser.tab.h
	gcc -c $< -o $@

scanner.c:  scanner.l parser.tab.h 
	flex -o scanner.c scanner.l

parser.tab.c parser.tab.h: scheme.bison
	yacc -d -bparser -v scheme.bison
