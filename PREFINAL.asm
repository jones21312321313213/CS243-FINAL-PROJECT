; x86 Assembly Program to Display ASCII Art
.model small
.stack 100h
.data
smiley db ' ........ ................................ .... ',13,10
    db '                  ............                   ',13,10
    db '             .........:::........                ',13,10
    db '             ...:::::::::::::......              ',13,10
    db '           ...::::::::::::::.........            ',13,10
    db '          ..::..::------:::::.........           ',13,10
    db '          .::..::--==---------:...:::.           ',13,10
    db '        ..:-:::--=#%%=-----###-::::::...         ',13,10
    db '        ..------==%@%------*@%=:::::::..         ',13,10
    db '        .:-==========-------=------:::..         ',13,10
    db '        .:--=+*=====-------------==-:::.         ',13,10
    db '        .:--===**=====--------=+*--:::..         ',13,10
    db '        ..--=====##*+======+*#*=----::..         ',13,10
    db '..        .-=======+*%@@@%#*+=------:...         ',13,10
    db '............-===============-------:..           ',13,10
    db '.............-===============-----:..            ',13,10
    db '..............:-=============---:..........      ',13,10
    db '.........::::::::--=========--:................. ',13,10
    db '.........::::::::::--==+==--:::................. ',13,10
    db '$'
.code
main proc
    mov ax, @data
    mov ds, ax
    lea dx, art
    mov ah, 09h
    int 21h
    mov ah, 4Ch
    int 21h
main endp
end main
