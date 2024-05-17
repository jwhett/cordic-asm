default: cordic

cordic.o: cordic.asm
	nasm -o cordic.o -f elf64 cordic.asm

main.o: main.c
	gcc -c -o main.o main.c

cordic: main.o cordic.o
	gcc -o cordic cordic.o main.o

