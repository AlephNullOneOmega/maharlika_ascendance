.model small
.stack
.data
line1 db "Pamantasan ng Lungsod ng Maynila$"
line2 db "Intramuros, Manila$"
lfcr db 0Ah, 24H
line3 db "College of Information Management and Technology$"
line4 db "Computer Organization and Assembly Language Programming$"
.code
org 100h
main proc near
    mov ax, @data
    mov ds, ax
    mov dx, offset line1
    call out1
    mov dx, offset lfcr
    call out1
    mov dx, offset line2
    call out1
    mov dx, offset lfcr
    call out1
    mov dx, offset line3
    call out1
    mov dx, offset lfcr
    call out1
    mov dx, offset line4
    call out1
    mov ah, 4ch ;equal int20h
    int 21h          ;equal int20h
main endp

out1 proc near
    mov ah, 09 ; service for string output
    int 21h     ; int to call the service
    ret
out1 endp

end main