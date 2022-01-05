section .data
    line1 db "__        ___           _    _        _   _     _      ",10,0
    line2 db "\ \      / / |__   __ _| |_ ( ) ___  | |_| |__ (_) ___ ",10,0
    line3 db " \ \ /\ / /|  _  \/ _ \| __|// / __| | __|  _ \| |/ __|",10,0
    line4 db "  \ V  V / | | | | (_| | |_    \__ \ | |_| | | | |\__ \",10,0
    line5 db "   \_/\_/  |_| |_|\__,_|\__|   |___/ \___|_| |_|_|/___/",10,0
	lenline1 equ $-line1
	lenline2 equ $-line2
	lenline3 equ $-line3
	lenline4 equ $-line4
	lenline5 equ $-line5

section .text
    global _start

_start:
	;Don't ask how the fuck only printing the first line prints them all but it does
	mov edx, lenline1 ;length of line
	mov ecx, line1 	; string
	mov ebx, 1 ; file descriptor (1 is stdout)
	mov eax, 4 ; the syscall (4 is sys_write)
	int 0x80
	; mov edx, lenline2
	; mov ecx, line2
	; mov ebx, 1
	; mov eax, 4
	; int 0x80
	; mov edx, lenline3
	; mov ecx, line3
	; mov ebx, 1
	; mov eax, 4
	; int 0x80
	; mov edx, lenline4
	; mov ecx, line4
	; mov ebx, 1
	; mov eax, 4
	; int 0x80
	; mov edx, lenline5
	; mov ecx, line5
	; mov ebx, 1
	; mov eax, 4
	; int 0x80

    mov eax, 1 ; exit
    int 0x80
