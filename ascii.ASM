.model small
.stack 100h

.data
    inv         db '                ...                  ',13,10
                db '              ........               ',13,10
                db '              .:   ...               ',13,10
                db '          .-============-.          ',13,10
                db '          .--------------:          ',13,10
                db '          .--------------:          ',13,10
                db '          .--------------:          ',13,10
                db '          .--------------:          ',13,10
                db '          .--------------:          ',13,10
                db '          .--------------:          ',13,10
                db '          .--------------:          ',13,10
                db '          ................          ',13,10
                db '                                    ',13,10, '$'



.code
main proc
    ; Set up the data segment
    mov ax, @data
    mov ds, ax

    ; Clear the screen before anything is displayed
    CALL CLEAR_SCREEN

    ; Set cursor to the top left (position 0,0) for optimal start
    MOV AH, 02h
    MOV BH, 00h      ; Page number (usually 0 for default screen)
    MOV DH, 00h      ; Row (line) 0
    MOV DL, 00h      ; Column (character) 0
    INT 10h          ; Call BIOS interrupt to set cursor position




    mov ah,02h
    mov cl, 0AH
    ; Display the ASCII art message
    mov ah, 09h
    lea dx, inv
    int 21h


    ; Wait for the user to press any key
    mov ah, 00h  ; Function to wait for a key press
    int 16h      ; BIOS interrupt to read key press

    ; Exit program
    mov ah, 4Ch
    int 21h
main endp

CLEAR_SCREEN PROC
    MOV AX, 0600H
    MOV BH, 07H
    MOV CX, 0000H
    MOV DX, 184FH
    INT 10H
    
    MOV AH, 02H
    MOV BH, 0
    MOV DX, 0000H
    INT 10H
    RET
CLEAR_SCREEN ENDP

end main
