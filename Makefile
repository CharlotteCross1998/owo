all:
	gcc owo.c -o owo
install: all
	cp owo /usr/bin
