.model small
.stack 100h

.data
    msg1 db '                   _                 ____     _____   ', 13, 10
         db '                  |"|        ___    / __"| u |_ " _|  ', 13, 10
         db '                U | | u     |_"_|  <\___ \/    | |    ', 13, 10
         db '                 \| |/__     | |    u___) |   /| |\   ', 13, 10
         db '                  |_____|  U/| |\u  |____/>> u |_|U   ', 13, 10
         db '                  //  \\.-,_|___|_,-.)(  (__)_// \\_  ', 13, 10
         db '                 (_")("_)\_)-'' ''-(_/(__)    (__) (__) ', 13, 10, '$'

    emptyMSG    db '            U _____ u  __  __    ____    _____   __   __       ', 13, 10
                db '            \| ___"|/U|'' \/ ''uU|  _"\ u|_ " _|  \ \ / /     ', 13, 10
                db '             |  _|"  \| |\/| |/\| |_) |/  | |     \ V /      ', 13, 10
                db '             | |___   | |  | |  |  __/   /| |\   U_|"|_u     ', 13, 10
                db '             |_____|  |_|  |_|  |_|     u |_|U     |_|       ', 13, 10
                db '             <<   >> <<,-,,-.   ||>>_   _// \\_.-,//|(_      ', 13, 10
                db '            (__) (__) (./  \.) (__)__) (__) (__)\_) (__)     ', 13, 10, '$'

.code
main proc
    ; Set up the data segment
    mov ax, @data
    mov ds, ax

    ; Clear the screen before displaying messages
    CALL CLEAR_SCREEN

    ; Display the first ASCII art
    mov ah, 09h
    lea dx, msg1
    int 21h

    ; Wait for the user to press any key
    mov ah, 00h
    int 16h

    ; Clear the screen before displaying the next message
    CALL CLEAR_SCREEN

    ; Display the second ASCII art
    mov ah, 09h
    lea dx, emptyMSG
    int 21h

    ; Wait for the user to press any key
    mov ah, 00h
    int 16h

    ; Exit program
    mov ah, 4Ch
    int 21h
main endp

CLEAR_SCREEN PROC
    ; Clear the screen and reset cursor to the top-left
    MOV AX, 0600H          ; Function to scroll the entire screen up
    MOV BH, 07H            ; Attribute for blank spaces
    MOV CX, 0000H          ; Top left corner (row 0, column 0)
    MOV DX, 184FH          ; Bottom right corner (row 24, column 79)
    INT 10H                ; Call BIOS interrupt 10h to clear the screen

    MOV AH, 02H            ; Move cursor function
    MOV BH, 0              ; Page number
    MOV DX, 0000H          ; Position cursor at (0,0)
    INT 10H                ; Call BIOS interrupt 10h to set cursor position
    RET
CLEAR_SCREEN ENDP

end main
