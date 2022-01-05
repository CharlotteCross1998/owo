all:
	nasm -f elf32 -o owo.o owo.asm
	ld -m elf_i386 owo.o -o owo
	rm owo.o
install: all
	cp owo /usr/bin
	sudo chmod +x /usr/bin/owo