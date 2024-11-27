.model small
.stack 100h

.data
    ; Define messages
    existingString db 20h, 10h, 'Hello, World!$'  ; max length 20, actual length 16, string content
    stringDeletedMessage db 'String deleted!$'

.code
main:
    ; Initialize data segment
    mov ax, @data
    mov ds, ax

    ; Print the existing string
    CALL printExistingString

    ; Call delete function to clear the string
    CALL deleteString

    ; Print confirmation message that the string was deleted
    lea dx, stringDeletedMessage
    mov ah, 09h
    int 21h

    ; Terminate the program
    MOV AH, 4Ch
    INT 21h

; Procedure to print the existing string
printExistingString PROC
    lea dx, existingString + 2  ; Skip the max and actual length bytes
    mov ah, 09h
    int 21h
    ret
printExistingString ENDP

; Procedure to delete (clear) the string
deleteString PROC
    ; Set the length byte (second byte) to 0 to indicate that the string is empty
    mov byte ptr [existingString + 1], 0  ; Set the actual length of the string to 0

    ; Optionally, clear the string content as well
    lea di, existingString + 2   ; Start at the position where the string starts
CLEAR_STRING_LOOP:
    mov byte ptr [di], 0         ; Clear each byte
    inc di
    cmp byte ptr [di], '$'       ; If we reach the null terminator, stop
    je END_CLEAR
    jmp CLEAR_STRING_LOOP
END_CLEAR:
    ret
deleteString ENDP
END main
