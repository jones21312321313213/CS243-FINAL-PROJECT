.MODEL SMALL
.STACK 100H

.DATA
    enterNewItem DB 'Enter the new value for the first item: $'
    pressEnter DB 'Press Enter to continue... $'
    newline DB 0AH, 0DH, '$'
    colon DB ': $'

    ; Item buffers
    firstItem DB 100, 11, 'First Item', '$', 100 DUP(' ') ; max length, actual length, string data
    secondItem DB 100, 12, 'Second Item', '$', 100 DUP(' ')
    thirdItem DB 100, 11, 'Third Item', '$', 100 DUP(' ')
    fourthItem DB 100, 12, 'Fourth Item', '$', 100 DUP(' ')
    fifthItem DB 100, 11, 'Fifth Item', '$', 100 DUP(' ')

    ; Buffer for user input
    newFirstItem DB 100, 0, 100 DUP(' ')

.CODE

MAIN PROC
    ; Initialize DS
    MOV AX, @DATA
    MOV DS, AX

    ; Update first item
    CALL updateFirstItemCALL

    ; Display all items
    CALL displayITEMS

    ; Exit program
    MOV AH, 4CH
    INT 21H
MAIN ENDP

updateFirstItemCALL PROC
    ; Prompt for new value
    CALL NEW_LINE
    MOV AH, 09H
    LEA DX, enterNewItem
    INT 21H

    ; Take user input
    MOV AH, 0AH
    LEA DX, newFirstItem
    INT 21H

    ; Update firstItem with the new value
    LEA SI, newFirstItem + 2    ; Start of the new input string
    LEA DI, firstItem + 2       ; Start of the firstItem buffer
    MOV AL, newFirstItem[1]     ; Get the length of the new input
    MOV [firstItem + 1], AL     ; Update the actual length in firstItem
    MOV CL, AL                  ; Store length in CL for loop

COPY_STRING:
    MOV AL, [SI]                ; Load character from input buffer
    MOV [DI], AL                ; Store character in firstItem
    INC SI                      ; Move to next input character
    INC DI                      ; Move to next firstItem character
    LOOP COPY_STRING            ; Repeat for all characters

    ; Null-terminate the updated firstItem
    MOV BYTE PTR [DI], '$'
    CALL NEW_LINE

    ; Prompt to continue
    LEA DX, pressEnter
    MOV AH, 09H
    INT 21H

    RET
updateFirstItemCALL ENDP

displayITEMS PROC
    CALL NEW_LINE

    ; Display firstItem
    LEA DX, firstItem + 2
    MOV AH, 09H
    INT 21H

    CALL NEW_LINE

    ; Display secondItem
    LEA DX, secondItem + 2
    MOV AH, 09H
    INT 21H

    CALL NEW_LINE

    ; Display thirdItem
    LEA DX, thirdItem + 2
    MOV AH, 09H
    INT 21H

    CALL NEW_LINE

    ; Display fourthItem
    LEA DX, fourthItem + 2
    MOV AH, 09H
    INT 21H

    CALL NEW_LINE

    ; Display fifthItem
    LEA DX, fifthItem + 2
    MOV AH, 09H
    INT 21H

    RET
displayITEMS ENDP

NEW_LINE PROC
    LEA DX, newline
    MOV AH, 09H
    INT 21H
    RET
NEW_LINE ENDP

END MAIN
