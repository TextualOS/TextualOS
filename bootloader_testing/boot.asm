


mov ah, 0x0e ;set tty mode for 0x10 intterupt
mov al, 'H'
int 0x10 ;bios intterupt, basically says "print al"
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10

jmp $ ;jump to current address, infinite loop

times 510-($-$$) db 0

dw 0xaa55
