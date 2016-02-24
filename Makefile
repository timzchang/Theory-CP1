CC=gcc

all: heist scmcalc

heist: heist.o scanner.o parser.tab.o token.o
	$(CC) heist.o scanner.o parser.tab.o token.o -o heist

scmcalc: scmcalc.o scanner.o parsercalc.tab.o token.o
	$(CC) scmcalc.o scanner.o parsercalc.tab.o token.o -o scmcalc


%.o: %.c *.h parser.tab.h
	gcc -c $< -o $@

scanner.c:  scanner.l parser.tab.h 
	flex -o scanner.c scanner.l

parser.tab.c parser.tab.h: scheme.bison
	yacc -d -bparser -v scheme.bison

parsercalc.tab.c parsercalc.tab.h: schemecalc.bison
	bison -d -bparser -v schemecalc.bison -o parsercalc.tab.c

.PHONY: clean
clean:
	-rm -f parser.tab.* parser.output scanner.c heist *.o scmcalc parsercalc.tab.* *.output
