.model small
.data
gameTitle DB "Maharlika Ascendance"
gameTitleSize EQU $-gameTitle
newGameButton DB "New Game"
newgameSize EQU $-newGameButton
highScoresButton DB "High Scores"
highScoresSize EQU $-highScoresButton
helpButton DB "Help"
helpButtonSize EQU $-helpButton
exitButton DB "Exit"
helpbuttonSize EQU $-exitButton
.code
org 0100h
entry:
main proc near
    mov ax, @data
    mov es, ax
    mov al, 13h
    mov ah, 0
    int 10h
    mov ax, 1300h
    mov bx, 000fh
    mov bp, offset gameTitle
    mov cx, gameTitleSize
    mov dx, 0000
    int 10h
    mov ah, 4ch
    int 21h
main endp
    end entry