all:
	aarch64-linux-gnu-as owo.asm -o owo.o
	aarch64-linux-gnu-gcc owo.o -o owo.elf -nostdlib -static
	rm owo.o
run:
	qemu-aarch64 ./owo.elf
