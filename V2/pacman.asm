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
        db "          |___, |     |   :  |    |  `     |     |  |  |     __ ",0ah
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
            db "#######.###.#### ########B#B######## ####.###.#######"
            db "#######.###.#### ########B#B######## ####.###.#######"
            db "#######. . .     BBBBBB&#&#&#&BBBBBB     . . .#######"
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
            db "#######.###.#### ########B#B######## ####.###.#######",0dh, 0ah
            db "#######.###.#### ########B#B######## ####.###.#######",0dh, 0ah
            db "#######. . .     BBBBBB&#&#&#&BBBBBB     . . .#######",0dh, 0ah,"$"
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
AIRow   db 11,11,11,11
AICol   db 23,25,27,29
;AI direction constants
UP    equ 0001b
RIGHT equ 0010b
DOWN  equ 0100b
LEFT  equ 1000b
;AIs' last moves (initial values are to allow quick exit from spawn)
LastAIMove db LEFT,UP,UP,RIGHT
LastOn db 4 dup('B')
;AIs' colors (light red, magenta, cyan, brown)
AIColor db 0ch,0dh,0bh,06h  
;AIs' eating stats
AIAlive      db  1,1,1,1
AIReturnRow  db 8
AIReturnCol  db 23
AIDeadCount  db 0,0,0,0
AIEatingMode db 1
;number of '.' to collect
CPOINTS equ 230
Points db CPOINTS

;Player Score
ScoreHeader db "Score:",0ah,"$"
Score db "00000","$"
DecScore dw 0

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
   
xor ax,ax   
   
call Initialize

;startup
;call Menus            ;comment this CALL when debugging  

PlayAgain:
;call UI               ;also this one

;the game itself 
;call PrintMaze        ;use SimplePrintMaze when debugging
 
call SimplePrintMaze  ;fast maze printing for debugging
 
Game:  
    call PlayerMove
    call AIMove
    call PrintScore
    call CheckCollisions
    
    call Halt
    
    cmp ax, 'L'           ;if lost
    JE Lost
    
    cmp Points, 0         ;if won
    JE Won

JMP Game

Lost:
call Halt

mov ax, 0c00h    ;ah = 0ch, al = 00h, so no input is attempted by interrupts
int 21h          ;flushes keyboard buffer    

mov al, 5     ;set active page 5 (defeat)
mov ah, 05h
int 10h       ;set page

JMP Done

Won:  
call Halt

mov ax, 0c00h    ;ah = 0ch, al = 00h, so no input is attempted by interrupts
int 21h          ;flushes keyboard buffer
mov al, 4     ;set active page 4 (victory)
mov ah, 05h
int 10h       ;set page

JMP Done

Done:
    
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
    push di
    
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
        JE GhostsColor
        
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
        
        GhostsColor:
            mov bl, AIColor[di]   ;set color based on AI index 
            inc di                ;for AIs
            JMP ResumePrint         
            
        ResumePrint:
            mov cx, 1             ;how many times to print
            mov ah, 09h
            int 10h               ;print char
            
        call MoveCursor
        
        cmp MazeLine1[si], '$'    ;print char until terminator ('$')
    JNE print
    
    pop di
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
    ;  * returns direction (Up,Right,Down,Left) in AL.
    ;  *
    ;  * lastest movement direction is kept on memory,
    ;  * and always used unless can't be used\newer direction inputted.
    ;  **/
    push bp
    mov bp, sp
    
    push cx
    push dx
    
    mov ah, 01h
    int 16h        ;read from buffer
    
    JZ NoStroke    ; if ZF = 1, no keystroke was entered
    
    cmp ah, 48h    ;up key was pressed
    JE Up
    
    cmp ah , 4Dh   ;right key was pressed
    JE Right
    
    cmp ah, 50h    ;down key was pressed
    JE Down
    
    cmp ah, 4bh    ;left key was pressed
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
        JS  ResetHalt ;DX-BX < 0, most likely BX greater than 65527 (65536-6)
                      ;and DX will soon reset
        cmp dx, 6     ;6 clicks ~ 1/3 second
    JNGE Counter      ;if dx !>= 6

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
    
    cmp AIAlive[si], 1
    JE AliveAI         ;if AI wasn't eaten
    
    dec AIDeadCount[si]
    JNZ StllDead
    mov AIAlive[si], 1
    StllDead:
    call Blink
    JMP EndAI
    
    AliveAI: 
    call AIDelete
    call AICrawl
    call PlaceAI    
    
    EndAI:
    
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
    add cl, UP          ;up is good
    inc ch
    UpBlock:
    inc dh              ;return to original  cords
     
     
    inc dl
    mov ah, 2
    int 10h             ;position cursor right to AI
    
    call CheckLocation  ;stores char at AL, attribute at AH
    cmp al, '#'
    JE RightBlock
    add cl, RIGHT      ;right is good
    inc ch
    RightBlock:
    dec dl
    
    
    inc dh
    mov ah, 2
    int 10h             ;position cursor below to AI
    
    call CheckLocation  ;stores char at AL, attribute at AH
    cmp al, '#'
    JE DownBlock
    add cl, DOWN        ;down is good
    inc ch
    DownBlock:
    dec dh
    
    
    dec dl
    mov ah, 2
    int 10h             ;position cursor left to AI
    
    call CheckLocation  ;stores char at AL, attribute at AH
    cmp al, '#'
    JE LeftBlock
    add cl, LEFT        ;left is good
    inc ch
    LeftBlock:
    inc dl
    
    cmp ch, 3           ;if we are on a crossing (e.g 3 paths)
    JGE NewMove         ;try changing direction    
                            
    
    test cl, LastAIMove[si]
    JNE LastMoveGood          ;can move in last direction 
                                                      
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
    test cl, UP            ;check if up direction is possible
    mov LastAIMove[si], UP ;saves new direction
    JE NewMove
    dec dh                 ;set new position
                        
    JMP GoodNewMove
    
    TryRight:
    pop dx
    test cl, RIGHT            ;check if right direction is possible
    mov LastAIMove[si], RIGHT ;saves new direction
    JE NewMove
    inc dl                    ;set new position
    
    JMP GoodNewMove
    
    TryDown:
    pop dx
    test cl, DOWN            ;check if down direction is possible
    mov LastAIMove[si], DOWN ;saves new direction
    JE NewMove
    inc dh                    ;set new position
    
    JMP GoodNewMove
    
    TryLeft:
    pop dx
    test cl, LEFT            ;check if left direction is possible
    mov LastAIMove[si], LEFT ;saves new direction
    JE NewMove
    dec dl                   ;set new position
    
    JMP GoodNewMove
    
     
    LastMoveGood: 
    push dx       ;not required, only used to keep stack correct due to Try*.
                  ;following code introduces double checking, but reduces code required
    mov cl, LastAIMove[si]
     
    cmp cl, UP      ;check if last direction was up
    JE TryUp
     
    cmp cl, RIGHT   ;check if last direction was right
    JE TryRight
       
    cmp cl, DOWN    ;check if last direction was down
    JE TryDown
      
    cmp cl, LEFT    ;check if last direction was left
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
    
    cmp al, 'B'              ;if B, place wall
    JE RetBlock
    
    mov bl, 07h              ;sets color to grey - default color
    JMP ResumeDelete         ;not really required, mostly for proper code
    
    RetYellow:
            mov bl, 0eh      ;set color yellow
            JMP ResumeDelete
    
    RetBlock:
        mov al, "#"          ;print wall
        mov bl, 99H          ;set color light blue
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
    mov bl, AIColor[si]      ;set AI color
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
    ;  * returns moduled value in DX.
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
    
    cmp AIEatingMode, 1
    JE EatAIPTA
    
    mov ax, 'L'     ;mark Lost
    JMP FinishCC    ;no need to keep running, jump to the end
    
    EatAIPTA:
    mov AIAlive[si], 0       ;mark AI as dead
    mov AIDeadCount[si], 25  ;25 turns untill he returns
    
    mov al, AIReturnRow
    mov AIRow[si], al
    mov al, AIReturnCol
    cwd
    add ax, si
    mov AICol[si], al
    
    call AIDelete
    mov ax, 0
    
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
    
    cmp AIEatingMode, 1
    JE EatAIWB
    
    mov ax, 'L'          ;mark Lost
    JMP FinishCC         ;no need to keep running, jump to the end
    
    EatAIWB:
    mov AIAlive[si], 0       ;mark AI as dead
    mov AIDeadCount[si], 25  ;25 turns untill he returns
    
    mov al, AIReturnRow
    mov AIRow[si], al
    mov al, AIReturnCol
    cwd
    add ax, si
    mov AICol[si], al
    
    call AIDelete
    mov ax, 0
    
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
    call Printer
    
    ;Score
    mov dx, 000ch      ;set page 0, color light red
    push dx
    mov dx, 083fh      ;set starting cords (8,59)
    push dx
    lea dx, ScoreHeader;get score header's address
    push dx
    call Printer
    
    mov dx, 000ah      ;set page 0, color light green
    push dx
    mov dx, 093fh      ;set starting cords (9,59)
    push dx
    lea dx, Score      ;get score's address
    push dx
    call Printer
    
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
    
    mov LastAIMove[0], LEFT
    mov LastAIMove[1], UP
    mov LastAIMove[2], UP
    mov LastAIMove[3], RIGHT
    
    mov LastOn[0], 'B'
    mov LastOn[1], 'B'
    mov LastOn[2], 'B'
    mov LastOn[3], 'B'
    
    mov AIAlive[0], 1
    mov AIAlive[1], 1
    mov AIAlive[2], 1
    mov AIAlive[3], 1
    
    mov AIDeadCount[0], 0
    mov AIDeadCount[1], 0
    mov AIDeadCount[2], 0
    mov AIDeadCount[3], 0
    
    mov AIEatingMode, 0
    
    mov Points, CPOINTS
    
    ;mov Score, "00000"
    lea di, Score
    mov al, "0"
    mov cx, 5
    cld
    rep STOSB
    
    mov DecScore, 0
    
    mov al, 0              ;set page 0 (game page)
    
    mov ah, 05h            ;set page
    int 10h
    
    mov cx, 0000h          ;windows top right corner
    mov dx, 184fh          ;window's bottom right corner                       
    mov al, 0              ;clear screen
    mov bh, 00h            ;set color black
                          
    mov ah,07h             ;scroll down                  
    int 10h
    
    ;print score 
    mov dx, 000ch      ;set page 0, color light red
    push dx
    mov dx, 083fh      ;set starting cords (8,59)
    push dx
    lea dx, ScoreHeader;get score header's address
    push dx
    call Printer
    
    mov dx, 000ah      ;set page 0, color light green
    push dx
    mov dx, 093fh      ;set starting cords (9,59)
    push dx
    lea dx, Score      ;get score's address
    push dx
    call Printer
    
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

proc PrintScore
    ;  /**
    ;  * This procedure prints the olater score.
    ;  * each POINT equals 1 point.
    ;  **/
    push bp
    mov bp, sp
    
    push ax
    push bx
    push dx
    push si
    
    mov dx, DecScore ;get old score    
    
    mov al, CPOINTS
    sub al, Points
    mov ah, 0
    
    
    ;more score calculations here 
    
    mov DecScore, ax ;if score hadn't change 
    cmp DecScore, dx ;dont do anything
    JE SkipPS            
    
    
    mov ax, DecScore
    mov si, 4
    BreakScore:    
        mov dx, 0         ;zero reminder
        mov bx, 10        ;divide by 10
        div bx
        
        add dx, 48        ;integer to ASCII 
        mov Score[si], dl ;update score string
        
        dec si            ;insert chars in reverse
        cmp ax, 0
    JNE BreakScore
    
    ;print new score
    mov dx, 000ah      ;set page 0, color light green
    push dx
    mov dx, 093fh      ;set starting cords (9,59)
    push dx
    lea dx, Score      ;get score's address
    push dx
    call Printer
    
    SkipPS:
    
    pop si
    pop dx
    pop bx
    pop ax
    
    pop bp
    ret
endp PrintScore

proc Blink
    ;  /**
    ;  * Blinks dead AIs
    ;  **/
    push bp
    mov bp, sp
    
    push ax
    push bx
    push cx
    push dx
    
    mov dh, AIRow[si]        ;gets cords
    mov dl, AICol[si]
    
    mov bh, 0                ;set page
	mov ah, 2
	int 10h                  ;sets cursor on next AI position
    
    call CheckLocation       ;reads new position data (al=char, ah=attribute)
    
    mov bl, AIColor[si]      ;set AI color
    mov cx, 1                ;print only once 
    
    cmp al, '&'
    JNE FadeAI
    
    mov al, LastOn[si]
    
    cmp al, '.'              ;checks what was on the block before
    JE BlinkYellow           ;and colors it accordingly
    
    mov bl, 07h              ;sets color to grey - default color
    JMP Fade                 ;not really required, mostly for proper code
    
    BlinkYellow:
            mov bl, 0eh      ;set color yellow
            JMP Fade
          
    FadeAI:
    mov al, '&'
                  
    Fade:
    
    mov ah, 09h
    int 10h                  ;print AI spirit

    
    pop dx
    pop cx
    pop bx
    pop ax
    
    pop bp
    ret
endp Blink    
ends
;http://home.comcast.net/~jpittman2/pacman/pacmandossier.html#CH4_Inky
end start ; set entry point and stop the assembler.