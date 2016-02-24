all: heist scmcalc

heist: heist.make heist.c scheme.bison scanner.l token.h token.c
	make --no-print-directory -f heist.make

scmcalc: scmcalc.make scmcalc.c schemecalc.bison scanner.l token.h token.c
	make --no-print-directory -f scmcalc.make

.PHONY: clean
clean:
	-rm -f parser.tab.* parser.output scanner.c heist *.o scmcalc parsercalc.tab.* *.output

