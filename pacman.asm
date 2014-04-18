; multi-segment executable file template.

data segment
; add your data here!

;the maze
MazeLine1  db "#######################################################"
MazeLine2  db "# . . . . . . . . . . . . ### . . . . . . . . . . . . #"
MazeLine3  db "# . ####### . ######### . ### . ######### . ####### . #"
MazeLine4  db "# P ####### . ######### . ### . ######### . ####### P #"
MazeLine5  db "# . . . . . . . . . . . . . . . . . . . . . . . . . . #"
MazeLine6  db "# . ####### . ### . ############### . ### . ####### . #"
MazeLine7  db "# . . . . . . ### . . . . ### . . . . ### . . . . . . #"
MazeLine8  db "####### . # . #########   ###   ######### . # . #######"
MazeLine9  db "####### . # . ###                     ### . # . #######"
MazeLine10 db "####### . # . ###   ##### - - #####   ### . # . #######"
MazeLine11 db "####### .   . ###   #   H H H H   #   ### . # . #######"
MazeLine12 db "####### . # . ###   #   H H H H   #   ### . # . #######"
MazeLine13 db "####### . # . ###   ###############   ### . # . #######"
MazeLine14 db "####### . # . ###          @          ### . # . #######"
MazeLine15 db "####### . # . ###   ##################### . # . #######"
MazeLine16 db "# . . . . . . . . . . . . ### . . . . . . . . . . . . #"
MazeLine17 db "# . ####### . ######### . ### . ######### . ####### . #"
MazeLine18 db "# P . . ### . . . . . . .  . . . . . . .. . ### . . P #"
MazeLine19 db "##### . ### . ### . ############### . ### . ### . #####"
MazeLine20 db "# . . . . . . ### . . . . ### . . . . ### . . . . . . #"
MazeLine21 db "# . ################### . ### . ################### . #"
MazeLine22 db "# . . . . . . . . . . . . . . . . . . . . . . . . . . #"
MazeLine23 db "#######################################################","$"
   
   ;STUIPD MAZE
    SMazeLine1  db "%######################################################",0dh, 0ah
    SMazeLine2  db "# . . . . . . . . . . . . ### . . . . . . . . . . . . #",0dh, 0ah
    SMazeLine3  db "# . ####### . ######### . ### . ######### . ####### . #",0dh, 0ah
    SMazeLine4  db "# P ####### . ######### . ### . ######### . ####### P #",0dh, 0ah
    SMazeLine5  db "# . . . . . . . . . . . . . . . . . . . . . . . . . . #",0dh, 0ah
    SMazeLine6  db "# . ####### . ### . ############### . ### . ####### . #",0dh, 0ah
    SMazeLine7  db "# . . . . . . ### . . . . ### . . . . ### . . . . . . #",0dh, 0ah
    SMazeLine8  db "####### . # . #########   ###   ######### . # . #######",0dh, 0ah
    SMazeLine9  db "####### . # . ###                     ### . # . #######",0dh, 0ah
    SMazeLine10 db "####### . # . ###   ##### - - #####   ### . # . #######",0dh, 0ah
    SMazeLine11 db "####### .   . ###   #   H H H H   #   ### . # . #######",0dh, 0ah
    SMazeLine12 db "####### . # . ###   #   & & & &   #   ### . # . #######",0dh, 0ah,"$"
    SMazeLine13 db "####### . # . ###   ###############   ### . # . #######",0dh, 0ah
    SMazeLine14 db "####### . # . ###          @          ### . # . #######",0dh, 0ah
    SMazeLine15 db "####### . # . ###   ##################### . # . #######",0dh, 0ah
    SMazeLine16 db "# . . . . . . . . . . . . ### . . . . . . . . . . . . #",0dh, 0ah
    SMazeLine17 db "# . ####### . ######### . ### . ######### . ####### . #",0dh, 0ah
    SMazeLine18 db "# P . . ### . . . . . . .  . . . . . . .. . ### . . P #",0dh, 0ah
    SMazeLine19 db "##### . ### . ### . ############### . ### . ### . #####",0dh, 0ah
    SMazeLine20 db "# . . . . . . ### . . . . ### . . . . ### . . . . . . #",0dh, 0ah
    SMazeLine21 db "# . ################### . ### . ################### . #",0dh, 0ah
    SMazeLine22 db "# . . . . . . . . . . . . . . . . . . . . . . . . . . #",0dh, 0ah
    SMazeLine23 db "#######################################################",0dh, 0ah,"$"



;pacman's initial coordinates
PlayerRow db 13
PlayerCol db 27

LastMove  db ?

;AIs' initial coordinates
    ;AI: 0 |1 |2 |3
AIRow db 11,11,11,11
AICol db 24,26,28,30

LastAIMove db 1,1,1,1
LastOn db 4 dup('.')
;number of . to collect
Points db 224

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

; add your code here

mov al, 03h ;set console's mode (24x79)
mov ah, 0
int 10h

mov ch, 32
mov ah, 1
int 10h     ;removes blinking cursor

;call PrintMaze
 
call StuipdPrintMaze ;fast maze prinitng for debugging
 
Game:
call PlayerMove
call AIMove
JMP Game

; wait for any key....
mov ah, 1
int 21h

mov ax, 4c00h ; exit to operating system.
int 21h

proc StuipdPrintMaze
    ;  /**
    ;  * proc prints maze without colors,
    ;  * for swift print for debug purposes
    ;  **/
    push bp
        mov bp,sp
        
        push ax
        push cx
        push dx
        
        mov al, 0     ;set active page 0
        mov ah, 05h
        int 10h       ;set page
        
    	lea dx, SMazeLine1  ;prints lines 1-12
    	mov ah, 9
    	int 21h   
    	
    	lea dx, SMazeLine13 ;print lines 12-23
    	int 21h  
    	 
    	pop dx
    	pop cx
    	pop ax
    	
    	pop bp
    ret
endp

proc PrintMaze
;/**
;  * This proc prints the whole maze,
;  * and colors is according to its chars:
;  * # - Blue, . - Yellow, @ - Orange
;  * Maze Dimensions: 46x24 Chars
;  * Emulator prints maze in 14.27 seconds
;**/

    push bp
    mov bp,sp
    
    push ax
    push bx
    push cx
    push si
    
    mov si, -1
    print:
        inc si
        mov al, MazeLine1[si]     ;get char to print
        
        cmp MazeLine1[si], '#'
        JE Blue
        cmp MazeLine1[si], '.'
        JE Yellow
        cmp MazeLine1[si], '@'
        JE Orange
        
        mov bl, 00h               ;set color black
        
        JMP ResumePrint
        
        Blue:
            mov bl, 99h           ;set color light blue
            JMP ResumePrint
            
        Yellow:
            mov bl, 0eh           ;set color yellow
            JMP ResumePrint
            
        Orange:
            mov bl, 0ch           ;set color light red
            JMP ResumePrint
            
        ResumePrint:
            mov cx, 1             ;how many times to print
            mov ah, 09h
            int 10h               ;print char
            
        call MoveCursor
        
        cmp MazeLine1[si], '$'    ;print char untill terminator ('$')
    JNE print
    
    pop si
    pop bx
    pop cx
    pop ax
    
    pop bp
    
    ret
endp

proc MoveCursor
    ;  /**
    ;  * proc moves cursor according to maze printing,
    ;  * e.g: moves right by default, and down when printing the last
    ;  * char of a line
    ;  **/
    push bp
    mov bp,sp
    
    push ax
    push bx
    push cx
    push dx
    
    
    mov ah, 03h
    int 10h             ;get cursor position. uses bx,cx,dx
    
    cmp dl, 54          ;print new line after 55 chars
    JNE NextCol
    
    inc dh              ;new line
    mov dl, 0
    JMP MC
    
    NextCol:
        inc dl          ;move cursor foward
    
    MC:
        mov bh, 0       ;page number
        mov ah, 2
        int 10h         ;set cursor position
    
    pop dx
    pop cx
    pop bx
    pop ax
    
    pop bp
    
    ret
endp


proc GetKeyStroke
    ;  /**
    ;  * proc reads keyboard key
    ;  * clears buffer post reading
    ;  * uses Halt proc to give 1 seconds delay
    ;  *
    ;  * lastest movement direction is kept on memory
    ;  * and always used unless can't be used\newer direction
    ;  * therefore Implementing a recursive-like approach
    ;  **/
    push bp
    mov bp, sp
    
    push cx
    push dx
    
    call Halt
    
    mov ah, 01h
    int 16h        ;read from buffer
    
    JZ NoStroke    ; if ZF = 1, no keystroke was entered, required?
    
    cmp LastMove, 'N' 
    
    cmp ah, 48h    ;up key was pressed
    JE Up
    
    cmp ah , 4Dh   ;right key was pressed
    JE Right
    
    cmp ah, 50h    ;down key was pressed
    JE Down
    
    cmp ah, 4bh    ;left key was presses
    JE Left
    
    ;not required, debug and simplifaction only!
    Up:
        mov ah, 'U'
        JMP ContGK
    
    Right:
        mov ah, 'R'
        JMP ContGK
    
    Down:
        mov ah, 'D'
        JMP ContGK
    
    Left:
        mov ah, 'L'
        JMP ContGK
    
    ContGK:
    
        mov LastMove, ah ;saves movement
        push ax
        mov ax, 0c00h    ;ah = 0ch, al = 00h, so no input is attempted by int
        int 21h          ;flushes keyboard buffer
        pop ax
        JMP FinishGK
        
    NoStroke:
        mov ah, LastMove
    
    FinishGK:
    
    pop dx
    pop cx
    
    pop bp
    
    ret
    
    endp

proc Halt
    ;  /**
    ;  * proc delays programs by 1 sec
    ;  * uses system times to measure time
    ;  * system time is in clicks, ~18 clicks = 1 second
    ;  **/
    
    push bp
    mov bp, sp
    
    push ax
    push bx
    push cx
    push dx
    
    mov ah, 00h
    int 1ah      ;get system time -> CX:DX, ~18 clicks = 1 second 
     
    mov bx, dx   ; keep starting time
    
    Counter:
        int 1ah      ;get system time
        sub dx, bx
        cmp dx, 12   ;12 clicks ~ 2/3 second
    JNGE Counter ;if dx !>= 19

    pop dx
    pop cx
    pop bx
    pop ax
    
    pop bp
    
    ret   
endp

proc PlayerMove
    ;  /**
    ;  * proc moves pacman spirit
    ;  * gets movement direction with GetKeyStroke
    ;  * checks validity of movement with SetCourse and CheckLocation
    ;  *
    ;  * proc's input: last direction of movement (AH), output: new direction of movement
    ;  **/ 
     
    push bp
    mov bp, sp
    
    ;push ax
    push bx
    push cx
    push dx
    
    mov dh, PlayerRow   ;sets dx as pacman's new position
    mov dl, PlayerCol
                         
    mov ah, 2
    int 10h             ;sets cursor at pacma's current location
    
    call GetKeyStroke   ;returns in AH which key was pressed (Up\Right\Down\Left)
    push ax             ;save AX for after pacman spirit deletion
       
    mov al, ' '
    mov bl, 00h         ;set color to black
    mov bh, 0           ;set page 0
    mov cx, 1           ;print ' ' only once
     
    mov ah, 09h
    int 10h             ;remove pacman spirit from maze 
    
    pop ax              ;retrieves AX
    
    call SetCourse      ;sets cursor at desired coordinates
   ;call CheckPosition  ;checks desired coordinates for game elements (walls, points, ghosts...)
                        ;iff walls returns W, points  P (at AH)  >>Include in SetCourse<<
    cmp al, '.'         ;if point
    JE PointsEarned
    
    JMP Normal
    
    PointsEarned:
    mov al, Points
    dec al
    mov Points, al
    
    Normal:
    
    mov dh, PlayerRow   ;sets dx as pacman's new position
    mov dl, PlayerCol
    
    push ax             ;saves AX so last direction of movement will be kept
    
    mov ah, 2
    int 10h             ;re-sets cursor position verfied location
    
    mov al, '@'         ;sets pacman spirit
    mov bl, 0ch         ;sets color to light red
    mov bh, 0           ;sets page to 0
    mov cx, 1           ;print pacman only once
    
    mov ah, 09h
    int 10h             ;re-place pacman spirit at maze
    
    pop ax              ;retrieves  AX (last direction of movement)
    
    SkipMovement:
    
    pop dx
    pop cx 
    pop bx
    ;pop ax
    
    pop bp
    
    ret
endp

proc SetCourse
    ;  /**
    ;  * proc sets cursor at desired location,
    ;  * checks if movememt s vaild, and updates pacman's Cords
    ;  **/
    
    push bp
    mov bp, sp
    
    push bx
    push dx
    
    mov bh, 0         ;sets page to 0
    
    mov dh, PlayerRow ;sets dx as pacman's position
    mov dl, PlayerCol
    
    cmp ah, 'U'
    JE SCUp
    cmp ah, 'R'
    JE SCRight
    cmp ah, 'D'
    JE SCDown
    cmp ah, 'L'
    JE SCLeft
    
    JMP ContSC
    
    SCUp:
        dec dh
        JMP ContSC
    SCRight:
        inc dl
        JMP ContSC
    SCDown:
        inc dh
        JMP ContSC
    SCLeft:
        dec dl
        
    ContSC:
    push ax             ;maintains ax
    mov ah, 2
    int 10h             ;sets cursor position at desired location           
        
    call CheckLocation  ;checks coordinates for game elements
                        ;returns char at AL, attribute at AH
    
    cmp al, '#'         ; if wall denies movement in desired direction
    JE RejectNewCords
    
    pop ax              ;retrieves ax
    
    mov PlayerRow ,dh 
    mov PlayerCol ,dl   ;updates pacman's position
    
    JMP FinishSC
                        
    RejectNewCords:
        mov LastMove, 'N'
        
        ;mov dh, PlayerRow 
        ;mov dl, PlayerCol
        
        ;mov ah, 2
        ;int 10h         ;re-position cursor on pacman
        
        pop ax
        
    FinishSC:
    pop dx
    pop bx
    
    pop bp
    
    ret   
endp

proc CheckLocation
    ;  /**
    ;  * proc returns data about current cursor location
    ;  * char at AL, attribute at AH
    ;  **/
    push bp
    mov bp,sp
    
    push bx
    
    mov bh, 0     ;sets page to 0
    mov ah, 08h   ;reads data of cursor location
    int 10h       ;stores char at AL, attribute at AH
    
    pop bx
    
    pop bp
    
    ret     
endp

proc AIMove
    push bp
    mov bp, sp
    
    push dx
    push si
    
    mov si, 0
    
    AIs:
    mov dh, AIRow[si] 
    mov dl, AICol[si]  ;AI's cords
    
    call AIDelete
    call AICrawl
    call PlaceAI    
    
    inc si    
    cmp si, 04h
    JNE AIs
    
    pop si
    pop dx
    
    pop bp
    
    ret
endp

proc AICrawl
    ;  /**                                                       
    ;  * proc checks if certain AI can move
    ;  * up, down, left or right
    ;  * if more than 2 direction are avilable or lastest movement
    ;  * direction is unavilable a new direction of movement will be genrated
    ;  *
    ;  * BL binary key of possbile directions, BH number of possible directions
    ;  *
    ;  * proc recives current AI on SI, and his cords on DX
    ;  * proc returns new good cords for AI in DX
    ;  **/
    push bp
    mov bp ,sp
    
    push ax
    push bx
    
    mov bx, 0
    
    dec dh
    mov ah, 2
    int 10h             ;position cursor above AI
    
    call CheckLocation  ;stores char at AL, attribute at AH
    cmp al, '#'
    JE UpBlock
    add bl, 00000001b   ;up is good
    inc bh
    UpBlock:
    inc dh              ;return to orignial cords
     
     
    inc dl
    mov ah, 2
    int 10h             ;position cursor right to AI
    
    call CheckLocation  ;stores char at AL, attribute at AH
    cmp al, '#'
    JE RightBlock
    add bl, 00000010b   ;right is good
    inc bh
    RightBlock:
    dec dl
    
    
    inc dh
    mov ah, 2
    int 10h             ;position cursor below to AI
    
    call CheckLocation  ;stores char at AL, attribute at AH
    cmp al, '#'
    JE DownBlock
    add bl, 00000100b   ;down is good
    inc bh
    DownBlock:
    dec dh
    
    
    dec dl
    mov ah, 2
    int 10h             ;position cursor left to AI
    
    call CheckLocation  ;stores char at AL, attribute at AH
    cmp al, '#'
    JE LeftBlock
    add bl, 00001000b   ;left is good
    inc bh
    LeftBlock:
    inc dl
    
    cmp bh, 3           ;if we are on a crossing (e.g 3 pathes)
    JGE NewMove             
                        ;try changing direction    
    
    push bx 
    and bl, LastAIMove[si]
    cmp bl, LastAIMove[si]
    pop bx
    JE LastMoveGood          ;can move in last direction 
                                                      
    NewMove:
    push dx
    call RandomGen
    
    cmp dx, 0
    JE TryUp         ;up was randomised
    cmp dx, 1
    JE TryRight      ;right was randomised                                            
    cmp dx, 2
    JE TryDown       ;down was randomised                                           
    cmp dx, 3
    JE TryLeft       ;left was randomised
    
    pop dx
    JMP NewMove      ;fail-safe, incase of bad random number
    
    TryUp:
    pop dx
    push bx
    and bl, 00000001b    ;check if up direction is possible
    cmp bl, 00000001b
    pop bx
    JNE NewMove
    dec dh               ;set new position
    
    JMP GoodNewMove
    
    TryRight:
    pop dx
    push bx
    and bl, 00000010b    ;check if right direction is possible
    cmp bl, 00000010b
    pop bx
    JNE NewMove
    inc dl               ;set new position
    
    JMP GoodNewMove
    
    TryDown:
    pop dx
    push bx
    and bl, 00000100b    ;check if down direction is possible
    cmp bl, 00000100b
    pop bx
    JNE NewMove
    inc dh               ;set new position
    
    JMP GoodNewMove
    
    TryLeft:
    pop dx
    push bx
    and bl, 00001000b    ;check if left direction is possible
    cmp bl, 00001000b
    pop bx
    JNE NewMove
    dec dl               ;set new position
    
    JMP GoodNewMove
    
     
    LastMoveGood:        ;intrdouces double checking, but reduces code required
    push dx              ;not required, only used to keep stack correct due to Try*
    mov bl, LastAIMove[si]
     
    cmp bl, 00000001b    ;check if last direction was up
    JE TryUp
     
    cmp bl, 00000010b    ;check if last direction was right
    JE TryRight
       
    cmp bl, 00000100b    ;check if last direction was down
    JE TryDown
      
    cmp bl, 00001000b    ;check if last direction was left
    JE TryLeft
    
    GoodNewMove:
    mov AIRow[si], dh
    mov AICol[si], dl 
    
    pop bx
    pop ax 
    
    pop bx 
    ret    
endp

proc AIDelete
    ;  /**                                                       
    ;  * proc removes AI spirit from board,
    ;  * and re-print the block the exsited on the cords
    ;  *
    ;  * proc recives current AI on SI, and his cords on DX
    ;  **/
    push bp
    mov bp, sp
    
    push ax
    push bx 
    push cx
    
    mov bh, 0                ;set page
	mov ah, 2
	int 10h                  ;sets cursor on current AI position
   
    mov al, LastOn[si]
    
    cmp al, '.'              ;checks what was on the block before
    JE RetYellow             ;and colors it accordingly
    
    
    RetYellow:
            mov bl, 0eh      ;set color yellow
            JMP ResumeDelete
            
    ResumeDelete:
    mov cx, 1                ;print only once
    mov ah, 09h              ;prints stepped-on-block back
    int 10h                 
    
    pop cx
    pop bx
    pop ax
    
    pop bp
    
    ret    
endp

proc PlaceAI
    ;  /**                                                       
    ;  * proc places AI's spirit on it's new location,
    ;  * and saves the block the AI is stepping on
    ;  *
    ;  * proc recives current AI on SI, and his new cords on DX
    ;  **/
    
    push bp
    mov bp, sp
    
    push ax
    push bx
    push cx
    
    mov bh, 0                ;set page
	mov ah, 2
	int 10h                  ;sets cursor on next AI position
	
	call CheckLocation       ;reads current position data (al=char, ah=artb)
	
	mov LastOn[si], al       ;stores stepped-on block for future retrieval
	
    mov al, '&'              
    mov bl, 0dh              ;set color light magneta
    mov cx, 1                ;print only once
    
    mov ah, 09h
    int 10h                  ;print AI spirit
    
    pop cx
    pop bx
    pop ax
    
    pop bp
    
    ret    
endp

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
    
    mov ah, 0     ;gets system time
    int 1ah       ;populate AX (x), CX (z) and DX (w) with differnt values each call
    mov bx, 256   ;y - arbitrary picked
    mov si, 0     ;t - value holder
    
    
    
    mov si, ax             
    shl ax, 11   ;x ^ (x << 11)
    xor si, ax
    
    mov ax, bx   ;x = y
    mov bx, cx   ;y = z
    mov cx, dx   ;z = w
    
    mov ax, dx
    shr ax, 19   ;w ^ (w >> 19)
    xor dx, ax
    
    xor dx, si   ;...^ t
    
    mov ax, si
    shr ax, 8    ;...^ (t >> 8)
    xor dx, ax
    
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