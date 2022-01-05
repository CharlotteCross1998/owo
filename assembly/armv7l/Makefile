all:
	as -o owo.o owo.s
	ld -o owo owo.o
	rm owo.o
install: all
	cp owo /usr/bin
	sudo chmod +x /usr/bin/owo