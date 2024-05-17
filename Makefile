default: run

.PHONY: run

run: cordic
	./cordic

cordic.o: cordic.asm
	nasm -o cordic.o -f elf64 cordic.asm

main.o: main.c
	gcc -c -o main.o -no-pie main.c

cordic: main.o cordic.o
	gcc -o cordic -no-pie cordic.o main.o

