; multi-segment executable file template.

data segment

;the logo
Logo db "        ______  ________  ______  ___ __ __  ________  ___   __      ",0ah
     db "       /_____/\/_______/\/_____/\/__//_//_/\/_______/\/__/\ /__/\    ",0ah
     db "       \:::_ \ \::: _  \ \:::__\/\::\| \| \ \::: _  \ \::\_\\  \ \   ",0ah
     db "        \:(_) \ \::(_)  \ \:\ \  _\:.      \ \::(_)  \ \:. `-\  \ \  ",0ah
     db "         \: ___\/\:: __  \ \:\ \/_/\:.\-/\  \ \:: __  \ \:. _    \ \ ",0ah
     db "          \ \ \   \:.\ \  \ \:\_\ \ \. \  \  \ \:.\ \  \ \. \`-\  \ \", 0ah
     db "           \_\/    \__\/\__\/\_____\/\__\/ \__\/\__\/\__\/\__\/ \__\/","$" 

;main menu
MainMenu db "                               MAIN MENU:",0ah,0ah
         db "                          a. Play       ",0ah
         db "                          b. How to play",0ah
         db "                          c. About      ",0ah
         db "                          d. Quit       ",0ah,0ah,0ah
         db "Press a letter on the keyboard...","$" 

;instructions
Instructions db "          Use the arrow keys to maneuver Pacman around the maze.",0ah
             db "          Avoid the monsters, if they catch you, you will lose.  ",0ah
             db "          Complete the level by eating all the dots.            ","$" 

;about
About db "          Pacman project in assembly.              ",0ah
      db "          For lab unit in Computer Science #899127.",0ah,0ah
      db "          Features:                                ",0ah
      db "          -Seamless User-Computer interaction.     ",0ah
      db "          -Complete functional AI.                 ",0ah
      db "          -Pseudo-Random number generator.          ",0ah
      db "          -16-bit colors.                          ",0ah,0ah,0ah   
      db "          Project By Guy Omer,                     ",0ah
      db "          2014."                                    ,"$" 

;return message
Return db "Press any key to return to main menu...","$" 

;victory message
Victory db "           __ __  ___  __ __      __    __  ___  ____       __ ",0ah
        db "          |  |  |/   \|  |  |    |  |__|  |/   \|    \     |  |",0ah
        db "          |  |  |     |  |  |    |  |  |  |     |  _  |    |  |",0ah
        db "          |  ~  |  O  |  |  |    |  |  |  |  O  |  |  |    |__|",0ah
        db "          |___, |     |   :  |    |  `  '  |     |  |  |     __ ",0ah
        db "          |     |     |     |     \      /|     |  |  |    |  |",0ah
        db "          |____/ \___/ \__,_|      \_/\_/  \___/|__|__|    |__|","$" 

;defeat message
Defeat  db "           __   __ _______ __   __   ___     _______ _______ _______ ",0ah
        db "          |  | |  |       |  | |  | |   |   |       |       |       |",0ah
        db "          |  |_|  |   _   |  | |  | |   |   |   _   |  _____|_     _|",0ah
        db "          |       |  | |  |  |_|  | |   |   |  | |  | |_____  |   |  ",0ah
        db "          |_     _|  |_|  |       | |   |___|  |_|  |_____  | |   |  ",0ah
        db "            |   | |       |       | |       |       |_____| | |   |  ",0ah
        db "            |___| |_______|_______| |_______|_______|_______| |___|  ","$" 
     
;the maze
MazeLine1  	db "#####################################################"
            db "#. . . . . . . . . . . .#####. . . . . . . . . . . .#"
            db "#.#########.###########.#####.###########.#########.#"
            db "#.#########.###########.#####.###########.#########.#"
            db "#. . . . . . . . . . . . . . . . . . . . . . . . . .#"
            db "#.#########.#####.#################.#####.#########.#"
            db "#. . . . . .#####. . . . ### . . . .#####. . . . . .#"
            db "#######.###.############ ### ############.###.#######"
            db "#######.###.####                     ####.###.#######"
            db "#######.###.#### ######## # ######## ####.###.#######"
            db "#######.###.#### ######## # ######## ####.###.#######"
            db "#######. . .           &#&#&#&           . . .#######"
            db "#######.###.#### ################### ####.###.#######"
            db "#######.###.####          @          ####.###.#######"
            db "#######.###.#### ################### ####.###.#######"
            db "#. . . . . . . . . . . .#####. . . . . . . . . . . .#"
            db "#.#########.###########.#####.###########.#########.#"
            db "#. . .#####. . . . . . .  . . . . . . .. .#####. . .#"
            db "#####.#####.#####.#################.#####.#####.#####"
            db "#. . . . . .#####. . . .#####. . . .#####. . . . . .#"
            db "#.#####################.#####.#####################.#"
            db "#. . . . . . . . . . . . . . . . . . . . . . . . . .#"
            db "#####################################################","$"
   
;Simple MAZE
SMazeLine1  db "!####################################################",0dh, 0ah
            db "#. . . . . . . . . . . .#####. . . . . . . . . . . .#",0dh, 0ah
            db "#.#########.###########.#####.###########.#########.#",0dh, 0ah
            db "#.#########.###########.#####.###########.#########.#",0dh, 0ah
            db "#. . . . . . . . . . . . . . . . . . . . . . . . . .#",0dh, 0ah
            db "#.#########.#####.#################.#####.#########.#",0dh, 0ah
            db "#. . . . . .#####. . . . ### . . . .#####. . . . . .#",0dh, 0ah
            db "#######.###.############ ### ############.###.#######",0dh, 0ah
            db "#######.###.####                     ####.###.#######",0dh, 0ah
            db "#######.###.#### ######## # ######## ####.###.#######",0dh, 0ah
            db "#######.###.#### ######## # ######## ####.###.#######",0dh, 0ah
            db "#######. . .           &#&#&#&           . . .#######",0dh, 0ah,"$"
SMazeLine13 db "#######.###.#### ################### ####.###.#######",0dh, 0ah
            db "#######.###.####          @          ####.###.#######",0dh, 0ah
            db "#######.###.#### ################### ####.###.#######",0dh, 0ah
            db "#. . . . . . . . . . . .#####. . . . . . . . . . . .#",0dh, 0ah
            db "#.#########.###########.#####.###########.#########.#",0dh, 0ah
            db "#. . .#####. . . . . . .  . . . . . . .. .#####. . .#",0dh, 0ah
            db "#####.#####.#####.#################.#####.#####.#####",0dh, 0ah
            db "#. . . . . .#####. . . .#####. . . .#####. . . . . .#",0dh, 0ah
            db "#.#####################.#####.#####################.#",0dh, 0ah
            db "#. . . . . . . . . . . . . . . . . . . . . . . . . .#",0dh, 0ah
            db "#####################################################",0dh, 0ah,"$"


;pacman's initial coordinates
PlayerRow db 13
PlayerCol db 26

LastMove  db ?

;AIs' initial coordinates
    ;AI: 0 |1 |2 |3
AIRow db 11,11,11,11
AICol db 23,25,27,29
;AIs' last moves (initial values are to allow quick exit from spawn)
LastAIMove db 1000b,0001b,0001b,0010b
LastOn db 4 dup(' ')  

;number of '.' to collect
Points db 230

;Random generator seeds
seed dw 3191, 61901, 44822, 32811

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
 
call Initialize

;startup
call Menus            ;comment this CALL when debugging  

PlayAgain:
call UI               ;also this one

;the game itself 
call PrintMaze        ;use SimplePrintMaze when debugging
 
;call SimplePrintMaze  ;fast maze printing for debugging
 
Game:  
    call PlayerMove
    call AIMove
    call CheckCollisions
    
    cmp ax, 'L'           ;if lost
    JE Lost
    
    cmp Points, 0         ;if won
    JE Won

JMP Game

Lost:
mov al, 5     ;set active page 5 (defeat)
mov ah, 05h
int 10h       ;set page

JMP Done

Won:
mov al, 4     ;set active page 4 (victory)
mov ah, 05h
int 10h       ;set page

JMP Done

Done:
    call Halt
    
    mov ah, 7     
    int 21h       ;wait for a keypress before restarting
    
    call ResetGame
JMP PlayAgain

proc SimplePrintMaze
    ;  /**
    ;  * procedure prints maze without colors,
    ;  * for fast print and debugging purposes
    ;  **/
    push bp
    mov bp,sp
    
    push ax
    push dx
    
    mov al, 0     ;set active page 0
    mov ah, 05h
    int 10h       ;set page
    
	lea dx, SMazeLine1  ;prints lines 1-12
	mov ah, 9
	int 21h   
	
	lea dx, SMazeLine13 ;prints lines 12-23
	int 21h  
	 
	pop dx
	pop ax
	
	pop bp
    ret
SimplePrintMaze endp

proc PrintMaze
;/**
;  * This procedure prints the whole maze,
;  * and colors it according to its chars:
;  * # - Blue, . - Yellow, @ - Orange.
;  * Maze Dimensions: 54x23 Chars.
;**/

    push bp
    mov bp,sp
    
    push ax
    push bx
    push cx
    push dx
    push si
    
    mov dx, 0000h  ;set cords (0,0)
	mov bh, 0      ;page 0 (game page)
	mov ah, 2
	int 10h        ;set cursor location
    
    mov si, -1
    print:
        inc si
        mov al, MazeLine1[si]     ;get char to print
        
        cmp MazeLine1[si], '#'
        JE Blue
        cmp MazeLine1[si], '.'    ;set color according to char
        JE Yellow
        cmp MazeLine1[si], '@'
        JE Orange
        cmp MazeLine1[si], '&'
        JE Magneta
        
        mov bl, 00h               ;set color black
        
        JMP ResumePrint
        
        Blue:
            mov bl, 99h           ;set color light blue
            JMP ResumePrint       ;for walls
            
        Yellow:
            mov bl, 0eh           ;set color yellow
            JMP ResumePrint       ;for points
            
        Orange:
            mov bl, 0ch           ;set color light red
            JMP ResumePrint       ;for pacman
        
        Magneta:
            mov bl, 0dh           ;set color magneta
            JMP ResumePrint       ;for AIs  
            
        ResumePrint:
            mov cx, 1             ;how many times to print
            mov ah, 09h
            int 10h               ;print char
            
        call MoveCursor
        
        cmp MazeLine1[si], '$'    ;print char until terminator ('$')
    JNE print
    
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    
    pop bp
    
    ret
PrintMaze endp

proc MoveCursor
    ;  /**
    ;  * procedure moves cursor according to maze printing,
    ;  * i.e: moves right by default, and down when printing the last
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
    
    cmp dl, 52          ;print new line after 55 chars
    JNE NextCol
    
    inc dh              ;new line
    mov dl, 0
    JMP MC
    
    NextCol:
        inc dl          ;move cursor forward
    
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
MoveCursor endp


proc GetKeyStroke
    ;  /**
    ;  * procedure reads keyboard key
    ;  * clears buffer after reading
    ;  * uses Halt procedure to give delay
    ;  * returns direction (Up,Right,Down,Left) in AL.
    ;  *
    ;  * lastest movement direction is kept on memory,
    ;  * and always used unless can't be used\newer direction inputted.
    ;  **/
    push bp
    mov bp, sp
    
    push cx
    push dx
    
    call Halt
    
    mov ah, 01h
    int 16h        ;read from buffer
    
    JZ NoStroke    ; if ZF = 1, no keystroke was entered
    
    cmp ah, 48h    ;up key was pressed
    JE Up
    
    cmp ah , 4Dh   ;right key was pressed
    JE Right
    
    cmp ah, 50h    ;down key was pressed
    JE Down
    
    cmp ah, 4bh    ;left key was presses
    JE Left
    
    ;converts BIOS codes to ASCII
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
        mov ax, 0c00h    ;ah = 0ch, al = 00h, so no input is attempted by interrupts
        int 21h          ;flushes keyboard buffer
        pop ax
        JMP FinishGK
        
    NoStroke:
        mov ah, LastMove ;get last direction
    
    FinishGK:
    
    pop dx
    pop cx
    
    pop bp
    ret
    
GetKeyStroke endp

proc Halt
    ;  /**
    ;  * procedure delays program.
    ;  * uses system times to measure time.
    ;  * system time is in clicks, ~18 clicks = 1 second.
    ;  **/
    
    push bp
    mov bp, sp
    
    push ax
    push bx
    push cx
    push dx
    
    ResetHalt:
    mov ah, 00h
    int 1ah      ;get system time -> CX:DX, ~18 clicks = 1 second 
     
    mov bx, dx   ;keep starting time
    
    Counter:
        int 1ah       ;get system time
        sub dx, bx    
        JS  ResetHalt ;DX-BX < 0, most likely BX greater than 65527 (65536-9)
                      ;and DX will soon reset
        cmp dx, 9     ;12 clicks ~ 1/2 second
    JNGE Counter      ;if dx !>= 12

    pop dx
    pop cx
    pop bx
    pop ax
    
    pop bp
    
    ret   
Halt endp

proc PlayerMove
    ;  /**
    ;  * procedure moves pacman spirit.
    ;  * gets movement direction with GetKeyStroke,
    ;  * checks validity of movement with SetCourse and CheckLocation.
    ;  *
    ;  * procedure's input: last direction of movement (AH), output: new direction of movement.
    ;  *               ^^(Through GetKeyStroke)^^
    ;  **/ 
     
    push bp
    mov bp, sp
    
    push bx
    push cx
    push dx
    
    mov dh, PlayerRow   ;sets dx as pacman's position
    mov dl, PlayerCol
                         
    mov ah, 2
    int 10h             ;sets cursor at pacman's current location
    
    call GetKeyStroke   ;returns in AH which key was pressed (Up\Right\Down\Left)
    push ax             ;save AX for after pacman spirit deletion
       
    mov al, ' '         ;print SPACE
    mov bl, 00h         ;set color to black
    mov bh, 0           ;set page 0
    mov cx, 1           ;print ' ' only once
     
    mov ah, 09h
    int 10h             ;remove pacman's spirit from maze 
    
    call SetCourse      ;sets cursor at desired coordinates

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
    int 10h             ;re-sets cursor position at verified location
    
    mov al, '@'         ;sets pacman spirit
    mov bl, 0ch         ;sets color to light red
    mov bh, 0           ;sets page to 0
    mov cx, 1           ;print only once
    
    mov ah, 09h
    int 10h             ;re-place pacman's spirit at maze
    
    pop ax              ;retrieves AX (last direction of movement)
    
    SkipMovement:
    
    pop dx
    pop cx 
    pop bx
    
    pop bp
    
    ret
PlayerMove endp

proc SetCourse
    ;  /**
    ;  * procedure sets cursor at desired location,
    ;  * checks if movement is valid, and updates pacman's Cords.
    ;  **/
    
    push bp
    mov bp, sp
    
    push bx
    push dx
    
    mov ax, [bp+4]
    
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
        JMP ContSC
        
    ContSC:
    mov ah, 2
    int 10h             ;sets cursor position at desired location           
        
    call CheckLocation  ;check coordinates for game elements
                        ;returns char at AL, attribute at AH
    
    cmp al, '#'         ;if wall, denies movement in desired direction
    JE FinishSC
    
    mov PlayerRow ,dh 
    mov PlayerCol ,dl   ;update pacman's position
    
    JMP FinishSC
        
    FinishSC:
    pop dx
    pop bx
    
    pop bp
    
    ret 2  
SetCourse endp

proc CheckLocation
    ;  /**
    ;  * procedure returns data about current cursor location,
    ;  * char at AL, attribute at AH.
    ;  **/
    push bp
    mov bp,sp
    
    push bx
    push cx
    
    mov bh, 0     ;sets page to 0
    mov ah, 08h   ;reads data of cursor location
    int 10h       ;stores char at AL, attribute at AH
    
    pop cx
    pop bx
    
    pop bp
    
    ret     
CheckLocation endp

proc AIMove
    push bp
    mov bp, sp
    
    push dx
    push si
    
    mov si, 0          ;first AI index is 0
    
    AIs: 
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
AIMove endp

proc AICrawl
    ;  /**                                                       
    ;  * procedure checks if certain AI can move:
    ;  * up, down, left or right.
    ;  * if more than 2 direction are available or latest  movement
    ;  * direction is unavailable, a new direction of movement will be generated.
    ;  *
    ;  * CL - binary key of possible directions, CH - number of possible directions.
    ;  *
    ;  * procedure receives current AI on SI.
    ;  * procedure returns new cords for AI in DX.
    ;  **/
    push bp
    mov bp ,sp
    
    push ax
    push bx
    push cx
    
    mov dh, AIRow[si]        ;sets current cords
    mov dl, AICol[si]
    
    mov bh, 0           ;set page 0
    mov cx, 0
    
    dec dh
    mov ah, 2
    int 10h             ;position cursor above AI
    
    call CheckLocation  ;stores char at AL, attribute at AH
    cmp al, '#'
    JE UpBlock
    add cl, 00000001b   ;up is good
    inc ch
    UpBlock:
    inc dh              ;return to original  cords
     
     
    inc dl
    mov ah, 2
    int 10h             ;position cursor right to AI
    
    call CheckLocation  ;stores char at AL, attribute at AH
    cmp al, '#'
    JE RightBlock
    add cl, 00000010b   ;right is good
    inc ch
    RightBlock:
    dec dl
    
    
    inc dh
    mov ah, 2
    int 10h             ;position cursor below to AI
    
    call CheckLocation  ;stores char at AL, attribute at AH
    cmp al, '#'
    JE DownBlock
    add cl, 00000100b   ;down is good
    inc ch
    DownBlock:
    dec dh
    
    
    dec dl
    mov ah, 2
    int 10h             ;position cursor left to AI
    
    call CheckLocation  ;stores char at AL, attribute at AH
    cmp al, '#'
    JE LeftBlock
    add cl, 00001000b   ;left is good
    inc ch
    LeftBlock:
    inc dl
    
    cmp ch, 3           ;if we are on a crossing (e.g 3 paths)
    JGE NewMove         ;try changing direction    
                            
    
    push cx 
    and cl, LastAIMove[si]
    cmp cl, LastAIMove[si]
    pop cx
    JE LastMoveGood          ;can move in last direction 
                                                      
    NewMove:
    push dx
    call RandomGen
    
    ContAIC:
    
    cmp dx, 0
    JE TryUp         ;up was randomised
    cmp dx, 1
    JE TryRight      ;right was randomised                                            
    cmp dx, 2
    JE TryDown       ;down was randomised                                           
    cmp dx, 3
    JE TryLeft       ;left was randomised
    
    pop dx
    JMP NewMove      ;fail-safe
    
    TryUp:
    pop dx
    push cx
    and cl, 00000001b      ;check if up direction is possible
    cmp cl, 00000001b
    mov LastAIMove[si], cl ;saves new direction
    pop cx
    JNE NewMove
    dec dh                 ;set new position
                        
    JMP GoodNewMove
    
    TryRight:
    pop dx
    push cx
    and cl, 00000010b      ;check if right direction is possible
    cmp cl, 00000010b
    mov LastAIMove[si], cl ;saves new direction
    pop cx
    JNE NewMove
    inc dl                 ;set new position
    
    JMP GoodNewMove
    
    TryDown:
    pop dx
    push cx
    and cl, 00000100b      ;check if down direction is possible
    cmp cl, 00000100b
    mov LastAIMove[si], cl ;saves new direction
    pop cx
    JNE NewMove
    inc dh                 ;set new position
    
    JMP GoodNewMove
    
    TryLeft:
    pop dx
    push cx
    and cl, 00001000b      ;check if left direction is possible
    cmp cl, 00001000b
    mov LastAIMove[si], cl ;saves new direction
    pop cx
    JNE NewMove
    dec dl                 ;set new position
    
    JMP GoodNewMove
    
     
    LastMoveGood: 
    push dx       ;not required, only used to keep stack correct due to Try*.
                  ;following code introduces double checking, but reduces code required
    mov cl, LastAIMove[si]
     
    cmp cl, 00000001b    ;check if last direction was up
    JE TryUp
     
    cmp cl, 00000010b    ;check if last direction was right
    JE TryRight
       
    cmp cl, 00000100b    ;check if last direction was down
    JE TryDown
      
    cmp cl, 00001000b    ;check if last direction was left
    JE TryLeft
    
    GoodNewMove:
    mov AIRow[si], dh    ;updates cords
    mov AICol[si], dl 
    
    pop cx
    pop bx
    pop ax 
    
    pop bp 
    ret    
AICrawl endp

proc AIDelete
    ;  /**                                                       
    ;  * procedure removes AI spirit from board,
    ;  * and re-print the block the existed  on the cords before.
    ;  *
    ;  * procedure receives  current AI on SI.
    ;  **/
    push bp
    mov bp, sp
    
    push ax
    push bx 
    push cx
    
    mov dh, AIRow[si]        ;sets current cords
    mov dl, AICol[si]
    
    mov bh, 0                ;set page
	mov ah, 2
	int 10h                  ;sets cursor on current AI position
   
    mov al, LastOn[si]
    
    cmp al, '.'              ;checks what was on the block before
    JE RetYellow             ;and colors it accordingly
    
    mov bl, 07h              ;sets color to grey - default color
    JMP ResumeDelete         ;not really required, mostly for proper code standard
    
    RetYellow:
            mov bl, 0eh      ;set color yellow
            JMP ResumeDelete
            
    ResumeDelete:
    mov cx, 1                ;print only once
    mov ah, 09h              ;prints stepped-on-block
    int 10h                 
    
    pop cx
    pop bx
    pop ax
    
    pop bp
    
    ret    
AIDelete endp

proc PlaceAI
    ;  /**                                                       
    ;  * procedure places AI's spirit on it's new location,
    ;  * and saves the block the AI is stepping on.
    ;  *
    ;  * procedure receives current AI on SI.
    ;  **/
    
    push bp
    mov bp, sp
    
    push ax
    push bx
    push cx
    
    mov dh, AIRow[si]        ;sets new cords
    mov dl, AICol[si]
    
    mov bh, 0                ;set page
	mov ah, 2
	int 10h                  ;sets cursor on next AI position
	
	call CheckLocation       ;reads new position data (al=char, ah=attribute)
	
	mov LastOn[si], al       ;stores stepped-on block for future retrieval
	
    mov al, '&'              
    mov bl, 0dh              ;set color light magenta
    mov cx, 1                ;print only once
    
    mov ah, 09h
    int 10h                  ;print AI spirit
    
    pop cx
    pop bx
    pop ax
    
    pop bp
    
    ret    
PlaceAI endp

proc RandomGen
    ;  /**                                                       
    ;  * procedure generates pseudorandom numbers using XORshift.
    ;  * http://en.wikipedia.org/wiki/Xorshift
    ;  * re-implemented for 16-bit,
    ;  * and benchmarked with random.asm.
    ;  * Random numbers range from 0-3, and returned in dx.
    ;  * ^ - XOR, >>/<< shift.
    ;  **/
    
    push bp
    mov bp, sp
    
    push ax
    push bx
    push cx
    push si
    
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
    ;  * procedure preforms modulo by BX for DX (needs to be passed by caller).
    ;  * returns moduled value in dx.
    ;  *
    ;  * Due to large numbers, division takes place on a 32-bit
    ;  * REG (DX:AX), to eliminate risk of overflow.
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
                ;reminder of division is kept in DX
    pop bx 
    pop ax
    
    pop bp 
    ret 4        
Mod endp

proc CheckCollisions
    ;  /**
    ;  * procedure checks 2 things:
    ;  * 1. if the player collide with an AI and therefore lost.
    ;  * 2. if AI's collided with each other, which causes fake
    ;  *    '&'. if there was a collision, LastOn is modified to
    ;  *    to fix it.
    ;  *
    ;  * procedure returns 'L' in AX if player was eaten, else returns 0.
    ;  **/
    
    push bp
    mov bp, sp
    
    push bx
    push cx
    push dx
    push si
    
    
    mov ax, 0
    mov si, 0
    mov bx, 0
    mov dh, PlayerRow 
    mov dl, PlayerCol
    
    PlayerToAI:   
    cmp dh, AIRow[si] 
    JNE SkipPTA     ;if no collison
    
    cmp dl, AICol[si]
    JNE SkipPTA     ;if no collison
    
    mov ax, 'L'     ;mark Lost
    JMP FinishCC    ;no need to keep running, jump to the end
    
    SkipPTA:
    inc si    
    cmp si, 04
    JNE PlayerToAI 
    
    mov si, 0       ;reset si
    
    
    ;sometimes the AI and pacman can cross each other's paths,
    ;but not overlap. this is considered as losing, but missed by above
    ;algorithm.
    
    mov dh, PlayerRow    ;get current row
    mov dl, PlayerCol    ;get current col
    
    mov ah, 02h
    int 10h              ;set cursor at pacman's location
    
    call CheckLocation
    cmp al, '@'          ;check if pacman's is where it's supposed to be
    JE WalkByGood
    
    mov ax, 'L'          ;mark Lost
    JMP FinishCC         ;no need to keep running, jump to the end
    
    WalkByGood:
    
    ;checks AIs collisions  to remove dead-drops (grey '&')
    ;which are caused by AI cannibalism
    
    AIToAI:         ;iterate over "source AIs"
    mov bx, 1       ;only check AIs after current AI (si), e.g. if we check AI 2, no need to check AI 1 again
    mov dh, AIRow[si] 
    mov dl, AICol[si] 
    
        AIToAI2:    ;iterate AIs we compare to source AI
        cmp dh, AIRow[si+bx] 
        JNE SkipATA     ;if no collision
        
        cmp dl, AICol[si+bx] 
        JNE SkipATA     ;if no collision
        
        mov cl, LastOn[si]
        mov LastOn[si+bx], cl  ;swap the stepping AI LastOn, with stepped on LastOn
                               ;so stepping AI wont overwrite the correct LastOn with '&'
        SkipATA:
        inc bx
        push bx
        add bx, si
        cmp bx, 04  ;iterate until si+bx = 4, i.e. we checked the last AI
        pop bx
        JNE AIToAI2
        
    inc si    
    cmp si, 03      ;iterate 3 times (fourth AI is checked though the first 3 AIs)
    JNE AIToAI
    
    FinishCC:
    
    pop si
    pop dx
    pop cx
    pop bx
    
    pop bp
    ret    
CheckCollisions endp

proc Fuzzy 
    ;  /**
    ;  * procedure does the following:
    ;  * if (time_clicks % 7 == 0 ) then seed[0]>>(clicks%10).
    ;  * 
    ;  * procedure adds another factor to the randomizer,
    ;  * which is not seeds dependent, therefore improving randomization,
    ;  * and making AI movement unpredictable.
    ;  * There are 9362 hits in a single cycle (~1 hour), which means about 15%
    ;  * of all click's possible values will trigger Fuzzy.
    ;  * shift's values (0-9) have equal 1/9% chance of appearing.
    ;  **/
    push bp
    mov bp, sp
    
    push ax
    push cx
    push dx
    
    mov ah, 00h
    int 1ah      ;get system time -> CX:DX, ~18 clicks = 1 second
    
    mov cx, dx   ;saves DX for future retrieval
    
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
    
    FuzzyLoop:          ;due to the limited SHR's possible operands 
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

proc UI
    ;  /**
    ;  * procedure implements main menu operations.
    ;  **/
    push bp
    mov bp, sp
    
    push ax
    
    ResetUI:
    
    mov al, 1        ;set active page 1 (main menu)
    mov ah, 05h
    int 10h          ;set page
    
    mov ah, 7        ;read from buffer (input in AL)
	int 21h          ;if empty wait for input
    
    or al, 00100000b ;upper case to lower case
    
    cmp al, 'a'
    JE EndUI
    
    cmp al, 'b'
    JE DispInstructions
    
    cmp al, 'c'
    JE DispAbout:
    
    cmp al, 'd'
    JE UIQuit
    
    JMP ResetUI
    
    DispInstructions:
        mov al, 2     ;set active page 2 (Instructions)
        mov ah, 05h
        int 10h       ;set page
        JMP WaitReturn
    
    DispAbout:
        mov al, 3     ;set active page 3 (About)
        mov ah, 05h
        int 10h       ;set page    
        JMP WaitReturn
        
    WaitReturn:
        mov ah, 7     ;read from buffer (input in AL)
    	int 21h       ;if empty wait for input
        JMP ResetUI
    
    UIQuit:
        mov ax, 4c00h ;exit
        int 21h
        
    EndUI:
    mov al, 0     ;set active page 0 (game page)
    mov ah, 05h
    int 10h       ;set page
    
    pop ax
    
    pop bp
    ret
UI endp

proc Initialize
    ;  /**
    ;  * procedure initializes pages 0-5 with:
    ;  * correct video mode (80X25)
    ;  * and no cursor blinking. 
    ;  **/
    push bp
    mov bp, sp 
    
    push ax
    push cx
    push dx
    
    mov dl, 0     ;set first page 0
    
    PageInit:
        mov al, dl
        mov ah, 05h
        int 10h       ;set page
        
        mov al, 03h ;set console's mode (24x79)
        mov ah, 0
        int 10h
        
        mov cl, 7
        mov ch, 32
        mov ah, 1    ;removes blinking cursor
        int 10h    
        
        inc dl
        cmp dl, 6
    JNE PageInit
    
    pop dx
    pop cx
    pop ax
    
    pop bp
    ret
endp Initialize

proc Menus
    ;  /**
    ;  * procedure prints pages 1-5.
    ;  * page 1: Main menu.
    ;  * page 2: Instructions.
    ;  * page 3: About.
    ;  * page 4: Victory.
    ;  * page 5: Defeat. 
    ;  **/
    push bp
    mov bp, sp
    
    push dx
    
    ;Main Menu
    mov dx, 010eh      ;set page 1, color yellow
    push dx
    mov dx, 0000h      ;set starting cords (0,0)
    push dx
    lea dx, Logo       ;get logo's address
    push dx            
    call Printer
    
    mov dx, 010eh      ;set page 1, color yellow
    push dx
    mov dx, 0a00h      ;set starting cords (10,0)
    push dx
    lea dx, MainMenu   ;get MainMenu's address
    push dx
    call Printer
    
    ;Instructions
    mov dx, 020eh      ;set page 2, color yellow
    push dx
    mov dx, 0000h      ;set starting cords (10,0)
    push dx
    lea dx, Logo       ;get logo's address
    push dx            
    call Printer
    
    mov dx, 020eh       ;set page 2, color yellow
    push dx
    mov dx, 0a00h      ;set starting cords (0,0)
    push dx
    lea dx, Instructions ;get instructions' address
    push dx
    call Printer
    
    mov dx, 0205h      ;set page 2, color magenta
    push dx
    mov dx, 1600h      ;set starting cords (22,0)
    push dx
    lea dx, Return     ;get Return's address
    push dx
    call Printer
    
    ;About
    mov dx, 030eh      ;set page 3, color yellow
    push dx
    mov dx, 0000h      ;set starting cords (0,0)
    push dx
    lea dx, Logo       ;get logo's address
    push dx            
    call Printer
    
    mov dx, 030eh      ;set page 3, color yellow
    push dx
    mov dx, 0a00h      ;set starting cords (10,0)
    push dx
    lea dx, About       ;get about's address
    push dx            
    call Printer
    
    mov dx, 0305h      ;set page 3, color magenta
    push dx
    mov dx, 1600h      ;set starting cords (22,0)
    push dx
    lea dx, Return     ;get return's address
    push dx            
    call Printer
    
    ;Victory
    mov dx, 040ah      ;set page 4, color light green
    push dx
    mov dx, 0700h      ;set starting cords (7,0)
    push dx
    lea dx, Victory    ;get victory's address
    push dx            
    call Printer 
    
    ;Defeat
    mov dx, 050ch      ;set page 5, color light red
    push dx
    mov dx, 0700h      ;set starting cords (7,0)
    push dx
    lea dx, Defeat     ;get defeat's address
    push dx 
    Call Printer
    
    pop dx
    
    pop bp
    ret
endp Menus

proc Printer
    ;  /**
    ;  * this This procedure prints to screen with given arguments.
    ;  * first PUSH: high bits = page number, low bits = attribute.
    ;  * second PUSH: cords to start printing from.
    ;  * third PUSH: string address.
    ;  **/
    push bp
    mov bp, sp
    
    push ax
    push bx
    push cx
    push dx
    push si
    
    mov bx, [bp+8]   ;page number:attribute
    mov dx, [bp+6]   ;cords to start printing from
    mov si, [bp+4]   ;move string address to SI 
    
    mov cx, 1        ;print char only once
    mov ah, 02h
    int 10h      ;set cursor starting position
    
    
    Print2:
        mov ax, [si]     ;get char to print from memory
        cbw
        
        cmp al, 0ah      ;if NEW LINE
        JE NewLineP
        
        inc dl           ;advance column
        mov ah, 09h
        int 10h          ;print char
        
        JMP SetCursorP
        
        NewLineP:
        inc dh           ;advance row
        mov dl, 0        ;set column to beginning of row
        
        SetCursorP:
        mov ah, 02h      ;set cursor to new location
        int 10h
        
        inc si           ;advance SI in memory to get next char
        cmp [si], '$'    ;check if reached string terminator
    JNE Print2           ;if not, print another char
    
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    
    pop bp
    ret 6
Printer endp

proc ResetGame
    ;  /**
    ;  * This procedure resets all variables in memory and registers,
    ;  * and clears game page so it can be re printed safely.
    ;  **/
    push bp
    mov bp, sp
    
    mov PlayerRow, 13
    mov PlayerCol, 26
    mov LastMove, 'U'
    
    mov AIRow[0], 11
    mov AIRow[1], 11
    mov AIRow[2], 11
    mov AIRow[3], 11
    
    mov AICol[0], 23
    mov AICol[1], 25
    mov AICol[2], 27
    mov AICol[3], 29
    
    mov LastAIMove[0], 1000b
    mov LastAIMove[1], 0100b
    mov LastAIMove[2], 0010b
    mov LastAIMove[3], 0001b
    
    mov LastOn[0], ' '
    mov LastOn[1], ' '
    mov LastOn[2], ' '
    mov LastOn[3], ' '
    
    mov Points, 230
    
    mov al, 0              ;set page 0 (game page)
    
    mov ah, 05h            ;set page
    int 10h
    
    mov cx, 0000h          ;windows top right corner
    mov dx, 184fh          ;window's bottom right corner                       
    mov al, 0              ;clear screen
    mov bh, 00h            ;set color black
                          
    mov ah,07h             ;scroll down                  
    int 10h
    
    mov dx, 0
    mov bh, 0
    
    mov ah, 02h
    int 10h                ;set cursor at the beginning of the screen
    
    mov ax, 0              ;reset registers
    mov bx, 0
    mov cx, 0
    mov dx, 0
    mov si, 0
    mov di, 0
    
    pop bp    
    ret
ResetGame endp
ends

end start ; set entry point and stop the assembler.