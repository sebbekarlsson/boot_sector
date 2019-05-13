mov ah, 0x0e ; here I set it to tty mode
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10
mov al, 'o'
int 0x10

jmp $ ; infinite loop

; padding and magic number
times 510 - ($-$$) db 0
dw 0xaa55
