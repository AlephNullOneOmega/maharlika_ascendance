.model tiny
.code
org 0100H
prog_entry: jmp main
lettera db 61h
letterz db 7Ah
main proc near
mov ah, 02
mov dl, lettera
next:int 21h
inc dl
cmp dl, letterz
jle next
int 20h
main endp
end prog_entry