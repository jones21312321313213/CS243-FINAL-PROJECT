.model small
.stack 100h

.data
    loginLogo db "                                                          ", 13, 10
    db "                                   +@@=....=@@*                       ", 13, 10
    db "                                @%              %@                    ", 13, 10
    db "                              %*      *@@@@*      +%                  ", 13, 10
    db "                             @      .@@@@@@@@:      @                 ", 13, 10
    db "                            @       @@@@@@@@@@       @                ", 13, 10
    db "                           %        @@@@@@@@@@        %               ", 13, 10
    db "                           @         %@@@@@@%         @               ", 13, 10
    db "                          .%                          %.              ", 13, 10
    db "                           @       +@@@@@@@@@@*       @               ", 13, 10
    db "                           %     %@@@@@@@@@@@@@@%     @               ", 13, 10
    db "                            @   @@@@@@@@@@@@@@@@@@   @                ", 13, 10
    db "                             @ %@@@@@@@@@@@@@@@@@@% @                 ", 13, 10
    db "                              %@@@@@@@@@@@@@@@@@@@@@                  ", 13, 10
    db "                                @@@@@@@@@@@@@@@@@@                    ", 13, 10
    db "                                   *@@@@@@@@@@*                       ", 13, 10
    db "$"

.code
main proc
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    ; Print the ASCII art
    lea dx, ascii_art
    mov ah, 09h
    int 21h

    ; Exit the program
    mov ah, 4Ch
    int 21h
main endp

end main
