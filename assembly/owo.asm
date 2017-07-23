section .data
    line1 db "__        ___           _    _        _   _     _      ",10,0
    line2 db "\ \      / / |__   __ _| |_ ( ) ___  | |_| |__ (_) ___ ",10,0
    line3 db " \ \ /\ / /|  _  \/ _ \| __|// / __| | __|  _ \| |/ __|",10,0
    line4 db "  \ V  V / | | | | (_| | |_    \__ \ | |_| | | | |\__ \",10,0
    line5 db "   \_/\_/  |_| |_|\__,_|\__|   |___/ \___|_| |_|_|/___/",10,0

section .text
    global _start

_start:

    mov rax, line1
    call _print
    mov rax, line2
    call _print
    mov rax, line3
    call _print
    mov rax, line4
    call _print
    mov rax, line5
    call _print

    mov rax, 60 ; exit
    mov rdi, 0
    syscall

_print:
    push rax
    mov rbx, 0
_printLoop:
    inc rax
    inc rbx
    mov cl, [rax]
    cmp cl, 0
    jne _printLoop ; keep incrementing until cl reaches 0

    mov rax, 1
    mov rdi, 1
    pop rsi
    mov rdx, rbx
    syscall

    ret
