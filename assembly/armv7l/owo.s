.data
    line1: .asciz "__        ___           _    _        _   _     _      \n"
    line2: .asciz "\\ \\      / / |__   __ _| |_ ( ) ___  | |_| |__ (_) ___ \n"
    line3: .asciz " \\ \\ /\\ / /|  _  \\/ _ \\| __|\/\/ / __| | __|  _ \\| |/ __|\n"
    line4: .asciz "  \\ V  V / | | | | (_| | |_    \\__ \\ | |_| | | | |\\__ \\ \n"
    line5: .asciz "   \\_/\\_/  |_| |_|\\__,_|\\__|   |___/ \\___|_| |_|_|/___/\n"

.text
.global main
.extern printf

main:
	push {ip, lr}
	ldr r0, =line1
	bl printf
	ldr r0, =line2
	bl printf
	ldr r0, =line3
	bl printf
	ldr r0, =line4
	bl printf
	ldr r0, =line5
	bl printf

	pop {ip, pc}
