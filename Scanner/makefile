all:
	lex scanner.l
	gcc lex.yy.c -o scan
	./scan < config.c