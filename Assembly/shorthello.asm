
name "TPrint"

org 100h

jmp start       ; 
msg:    db      "T$"

start:  mov     dx, msg ; load offset of msg into dx.
        mov     ah, 09h  ; print function is 9.
        int     21h      ; interrupt func
        
        mov     ah, 0 
        int     16h      ; wait for any key....
        
ret 
