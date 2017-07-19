all:
	nasm -f elf64 -o owo.o owo.asm
	ld owo.o -o owo
	rm owo.o
install: all
	cp owo /usr/bin
