.global _start
.section .text

_start:
	mov x8, #64 //write syscall
	mov x0, #1
	ldr x1, =message1
	mov x2, #56
	svc 0	//syscall
	mov x0, #1
	ldr x1, =message2
	mov x2, #56
	svc 0	
	svc 0	
	mov x0, #1
	ldr x1, =message3
	mov x2, #56
	svc 0	
	svc 0	
	mov x0, #1
	ldr x1, =message4
	mov x2, #57
	svc 0	
	svc 0	
	mov x0, #1
	ldr x1, =message5
	mov x2, #56
	svc 0	

	mov x8, #0x5d //exit syscall
	mov x0, #0x45 //return code
	svc 0
.section .data
    message1:
	.ascii "__        ___           _    _        _   _     _      \n"
    message2:
    .ascii "\\ \\      / / |__   __ _| |_ ( ) ___  | |_| |__ (_) ___ \n"
    message3:
    .ascii " \\ \\ /\\ / /|  _  \\/ _ \\| __|\/\/ / __| | __|  _ \\| |/ __|\n"
    message4:
    .ascii "  \\ V  V / | | | | (_| | |_    \\__ \\ | |_| | | | |\\__ \\ \n"
    message5:
    .ascii "   \\_/\\_/  |_| |_|\\__,_|\\__|   |___/ \\___|_| |_|_|/___/\n"
