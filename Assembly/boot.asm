[ORG 7C00h]
 
 mov bx, text
 
 mov ah, 0x0e
 
 PrintLoop:
    
    mov al, [bx]
    
    cmp al, 0
    je .end
    
    int 0x10
    
    inc bx
    jmp PrintLoop
    
.end:
    jmp $
    
 text db 'Hello World!',0

times 510 - ($-$$) db 0
dw 0AA55h