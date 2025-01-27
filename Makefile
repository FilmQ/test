SHELL := bash
CC = gcc
CFLAGS = -g

run: main
	./main.out < input.txt

main: clean main.o
	$(CC) $(CFLAGS) main.o -o main.out

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

clean:
	rm -f *.o main.out