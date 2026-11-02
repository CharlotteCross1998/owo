ZPP = $FB ; Zero page pointer
CHROUT = $FFD2

.org $080D

.segment "STARTUP" 
.segment "INIT"
.segment "ONCE"
.segment "CODE"
	jmp start
	
lines:
	.word line1, line2, line3, line4, line5, line6, line7, line8, line9, line10, line11

line1:  .byte "__        ___           _    _      ", $0
line2:  .byte "", $CD, " ", $CD, "      ", $CE, " ", $CE, " |__   __ _| |_ ( ) ___ ", $0
line3:  .byte " ", $CD, " ", $CD, " ", $CE, "", $CD, " ", $CE, " ", $CE, "|  _  ", $CD, "", $CE, " _ ", $CD, "| __|", $CE, "", $CE, " ", $CE, " __|", $0
line4:  .byte "  ", $CD, " ", $D6 , "  ", $D6 , " ", $CE, " | | | | (_| | |_    ", $CD, "__ ", $CD, "", $0
line5:  .byte "   ", $CD, "_", $CE, "", $CD, "_", $CE, "  |_| |_|", $CD, "__,_|", $CD, "__|   |___", $CE, "", $0
line6:  .byte $0
line7:  .byte " _   _     _      ", $0
line8:  .byte "| |_| |__ (_) ___ ", $0
line9:  .byte "| __|  _ ", $CD, "| |", $CE, " __|", $0
line10: .byte "| |_| | | | |", $CD, "__ ", $CD, "", $0
line11: .byte "", $CD, "___|_| |_|_|", $CE, "___", $CE, "", $0

start:
	jsr $e544
	ldx #$00

print_loop:
	lda lines,x
	sta ZPP
	lda lines+1,x
	sta ZPP+1
	
	ldy #$00
	jsr print
	
	inx
	inx
	cpx #22 ; 2 * line count (11)
	bne print_loop
	rts

print:
	cmp #$00
	beq done
	lda (ZPP),y
	jsr CHROUT
	
	iny
	bne print
done:
	lda #$0d
	jsr CHROUT
	rts
