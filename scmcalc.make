CC=gcc

all: scmcalc

scmcalc: scmcalc.o scanner.o parsercalc.tab.o token.o
	$(CC) scmcalc.o scanner.o parsercalc.tab.o token.o -o scmcalc


%.o: %.c *.h parsercalc.tab.h
	gcc -c $< -o $@

scanner.c:  scanner.l parsercalc.tab.h 
	flex -o scanner.c scanner.l

parsercalc.tab.c parsercalc.tab.h: schemecalc.bison
	bison -d -bparser -v schemecalc.bison -o parsercalc.tab.c
