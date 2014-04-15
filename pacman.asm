; multi-segment executable file template.

data segment
; add your data here!


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

mov al, 03h ;set onsole mode (24X79)
mov ah, 0
int 10h

mov ch, 32
mov ah, 1
int 10h     ;removes blinking cursor

call GetKeystroke

call PrintMaze

;call GetKeystroke

; wait for any key....
mov ah, 1
int 21h

mov ax, 4c00h ; exit to operating system.
int 21h

proc PrintMaze
;/**
;  * This proc prints the whole maze,
;  * and colors is according to chars:
;  * # - Blue, . - Yellow, @ - Orange
;  * Maze Dimensions: 46x24 Chars
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
mov al, MazeLine1[si] ;get char to print

cmp MazeLine1[si], '#'
JE Blue
cmp MazeLine1[si], '.'
JE Yellow
cmp MazeLine1[si], '@'
JE Orange

mov bl, 00h ;set color black
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

inc dh          ;new line
mov dl, 0
JMP MC

NextCol:
inc dl          ;move cursor foward

MC:
mov bh, 0 ;page number
mov ah, 2
int 10h   ;set cursor position

pop dx
pop cx
pop bx
pop ax

pop bp

ret
endp


proc GetKeyStroke
push bp
mov bp, sp

push cx
push dx

;mov ax, 0c00h  ;ah = 0ch, al = 00h, so no input is attempted by int
;int 21h        ;flushes keyboard buffer

call Halt

mov ah, 01h
int 16h        ;read from buffer

JZ NoStroke    ; if ZF = 1, no keystroke was entered, required?

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
mov ah, 'u'
JMP ContGK

Right:
mov ah, 'r'
JMP ContGK

Down:
mov ah, 'd'
JMP ContGK

Left:
mov ah, 'l'
JMP ContGK

ContGK:

mov ax, 0c00h  ;ah = 0ch, al = 00h, so no input is attempted by int
int 21h        ;flushes keyboard buffer

NoStroke:

pop dx
pop cx

pop bp

ret

endp
ends

end start ; set entry point and stop the assembler.