; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
    
    seed dw 3191, 61901, 44822, 32811
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
    
    call Fuzzy        ;attempts to change seed[0]
    
    mov ax, seed[0]
    mov bx, seed[2]
    mov cx, seed[4]
    mov dx, seed[6]
    
    mov si, ax             
    shl ax, 11        ;x ^ (x << 11)
    xor si, ax
    
    mov seed[0], bx   ;x = y
    mov seed[2], cx   ;y = z
    mov seed[4], dx   ;z = w
    
    mov ax, dx
    shr ax, 9         ;w ^ (w >> 9)
    xor dx, ax
    
    xor dx, si        ;...^ t
    
    mov ax, si
    shr ax, 8         ;...^ (t >> 8)
    xor dx, ax
    
    mov seed[6], dx   ;saves result at w
    
    push dx           ;push the Random Number
    mov bx, 4         ;modulo by 4
    push bx
    call Mod
    
    pop si
    pop cx
    pop bx
    pop ax
    
    pop bp
    
    ret
RandomGen endp

proc Mod
    ;  /**
    ;  * proc preforms modulo by BX for DX (needs to be passed by caller)
    ;  * returns moduled value in dx
    ;  *
    ;  * Due to large numbers, divison takes place on a 32-bit
    ;  * REG (DX:AX), to eliminate risk of overflow
    ;  **/
    push bp
    mov bp, sp
    
    push ax
    push bx
    
    mov ax, [bp+6] ;get dividend
    mov bx, [bp+4] ;get divisor
    mov dx, 0      ;clear the significant byte
    
    div bx      ;divide DX:AX
                ;AX contains the result
                ;reminder of divison is kept in DX
    pop bx 
    pop ax
    
    pop bp 
    ret 4        
Mod endp

proc Fuzzy 
    ;  /**
    ;  * proc does the following:
    ;  * if (time_clicks % 7 == 0 ) then seed[0]>>(clicks%10).
    ;  * 
    ;  * proc is suposed to add another factor to the randomizer,
    ;  * which is not seeds dependent, therefore improving randomization,
    ;  * and making AI movement unpredictable.
    ;  * There are 9362 hits in a sinlge cycle, which means about 15%
    ;  * of all click's possible values will trigger Fuzzy.
    ;  * DX's values (0-9) have 1/9% of appering.
    ;  **/
    push bp
    mov bp, sp
    
    push ax
    push cx
    push dx
    
    mov ah, 00h
    int 1ah      ;get system time -> CX:DX, ~18 clicks = 1 second
    
    mov cx, dx   ;saves DX for future retrival
    
    push cx      ;push dividend
    mov dx, 7    ;set divisor
    push dx      ;push divisor
    call Mod     ;returns reminder in DX
    
    cmp dx, 0
    JNE SkipF    ;DX % 7 != 0 
    
    push cx      ;push dividend
    mov dx, 10   ;set divisor
    push dx      ;push divisor
    call Mod     ;returns reminder in DX
    
    cmp dx, 0    ;if reminder is 0 do nothing
    JE SkipF
    
    FuzzyLoop:          ;due to the SHR's possbile operand 
        shr seed[0], 1  ;a loop must be induced in order to shift
        dec dx          ;DX times
        cmp dx, 0
    JNE FuzzyLoop
        
    SkipF:
    
    pop dx
    pop cx
    pop ax
    
    pop bp
    ret    
Fuzzy endp


ends

end start ; set entry point and stop the assembler.
