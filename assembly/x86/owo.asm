section .data
    line1 db "__        ___           _    _        _   _     _      ",10,0
    line2 db "\ \      / / |__   __ _| |_ ( ) ___  | |_| |__ (_) ___ ",10,0
    line3 db " \ \ /\ / /|  _  \/ _ \| __|// / __| | __|  _ \| |/ __|",10,0
    line4 db "  \ V  V / | | | | (_| | |_    \__ \ | |_| | | | |\__ \",10,0
    line5 db "   \_/\_/  |_| |_|\__,_|\__|   |___/ \___|_| |_|_|/___/",10,0

section .text
    global _start

_start:

    mov eax, line1
    call _print
    mov eax, line2
    call _print
    mov eax, line3
    call _print
    mov eax, line4
    call _print
    mov eax, line5
    call _print

    mov eax, 60 ; exit
    mov di, 0
    syscall

_print:
    push eax
    mov ebx, 0
_printLoop:
    inc eax
    inc ebx
    mov cl, [eax]
    cmp cl, 0
    jne _printLoop ; keep incrementing until cl reaches 0

    mov eax, 1
    mov di, 1
    pop si
    mov edx, ebx
    syscall

    ret
