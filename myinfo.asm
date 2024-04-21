.model small
.stack
.data
line1 db "Laygo, Jhon Michael$"
line2 db "July 21, 2004$"
lfcr db 0Ah, 24H
line3 db "Computer Science-3$"
line4 db "Manila, Philippines$"
line5 db "099123456$"
line6 db "jhonmic@gmail.com$"
line7 db "True believers live forever, they will die forgotten$"
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
    mov dx, offset lfcr
    call out1
    mov dx, offset line5
    call out1
    mov dx, offset lfcr
    call out1
    mov dx, offset line6
    call out1
    mov dx, offset lfcr
    call out1
    mov dx, offset line7
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