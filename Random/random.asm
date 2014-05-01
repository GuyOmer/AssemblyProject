; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
    
    seed dw 568,264,3,1533
    res db 8 dup(0)
    last dw 5
    double dw 0
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

;    This codes is used to benchmark the random genrator .
;    Results are exectly the same as they will be in the xorshift.c,
;    when seeds are the same.
    
    mov cx, 800
    Rnd:
        call RandomGen
        mov bx, dx
        cmp bx, last
        JNE Cont1
        mov dx, double
        inc dx
        mov double, dx
        Cont1:
        inc res[bx]
        mov last, bx
    LOOP Rnd
    
            
    lea dx, pkey
    mov ah, 9
    int 21h        ; output string at ds:dx
    
    ; wait for any key....    
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h
    
    
proc RandomGen
    ;  /**                                                       
    ;  * proc genrate pseudorandom numbers using XORshift
    ;  * http://en.wikipedia.org/wiki/Xorshift
    ;  * re-implmanted for 16-bit (see xorshift.c)
    ;  * Random numbers range from 0-3, and returned in dx
    ;  * ^ - XOR, >>/<< shift
    ;  **/
    
    push bp
    mov bp, sp
    
    push ax
    push bx
    push cx
    push si
    
;    mov ah, 0     ;gets system time
;    int 1ah       ;populate AX (x), CX (z) and DX (w) with differnt values each call
;    mov bx, 256   ;y - arbitrary picked
;    mov si, 0     ;t - value holder

    mov ax, seed[0]
    mov bx, seed[2]
    mov cx, seed[4]
    mov dx, seed[6]
    
    mov si, ax             
    shl ax, 11   ;x ^ (x << 11)
    xor si, ax
    
    mov seed[0], bx   ;x = y
    mov seed[2], cx   ;y = z
    mov seed[4], dx   ;z = w
    
    mov ax, dx
    shr ax, 19   ;w ^ (w >> 19)
    xor dx, ax
    
    xor dx, si   ;...^ t
    
    mov ax, si
    shr ax, 8    ;...^ (t >> 8)
    xor dx, ax
    
    mov seed[6], dx    ;saves result at w
    
    call Mod
    
    pop si
    pop cx
    pop bx
    pop ax
    
    pop bp
    
    ret
endp

proc Mod
    ;  /**
    ;  * proc preforms modulo by 4 for DX (needs to be passed by caller)
    ;  * returns moduled value in dx
    ;  *
    ;  * Due the large numbers divison take place on a 32-bit
    ;  * REG, to eliminate risk of overflow
    ;  **/
    push bp
    mov bp, sp
    
    push ax
    push bx
    
    mov ax, dx  ;ax is the less significant
    mov dx, 0
    mov bx, 4
    
    div bx      ;dl contains the divisor
                ;reminder of divison is kept in DX
    
    pop bp
    
    pop bx 
    pop ax 
    ret        
endp   
ends

end start ; set entry point and stop the assembler.
