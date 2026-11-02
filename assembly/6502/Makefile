ALL_ASM = $(wildcard *.asm) $(wildcard *.inc)
TARGET = owo.prg

all: $(ALL_ASM)
	cl65 -t c64 -o $(TARGET) owo.asm
	
run:
	x64sc $(TARGET)

clean:
	rm -f *.prg *.list *.o
