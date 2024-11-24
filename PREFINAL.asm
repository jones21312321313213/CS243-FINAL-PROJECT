;Filename: PREFINAL.ASM
;CS243 Lab Hands-on Pre-Final Exam
;First Semester SY 2024-2025
;Student Name: RENE JOHN SITOY
;Date Finished: 11/15/2024

.MODEL SMALL
.STACK 100H
.DATA
    ; Menu strings
    SPACE       DB ' $',0
    TITLE_MSG   DB ' Cebu Institute of Technology - University$'
    ATM_MSG     DB ' Automatic Teller Machine$'
    PROG_MSG    DB ' Programmer: RENE JOHN SITOY$'
    COPY_MSG    DB ' Copyright 2024$'
    
    MENU_MSG    DB 'Main Menu                                                                     $'
    MENU_MSG2   DB '1. Balance Inquiry                                                            $'
    MENU_MSG3   DB '2. Deposit                                                                    $'
    MENU_MSG4   DB '3. Withdrawal                                                                 $'
    MENU_MSG5   DB '4. Exit                                                                       ',13,10
                DB ' Enter your choice: $',13,10
    
    BAL_MSG     DB ' Balance Inquiry',13,10
                DB ' Your current balance: P$',13,10
    DEP_MSG     DB ' Deposit',13,10
                DB ' Enter deposit amount: P$',13,10
    WD_MSG      DB ' Withdrawal',13,10
                DB ' Enter withdrawal amount: P$',13,10
    DEP_SUCC    DB ' You deposited P$'
    WD_SUCC     DB ' You withdrew P$'
    DOT_MSG     DB '.$',13,10,'$'
    
    ; Error messages
    ERR_CHOICE  DB 'ERROR! Invalid choice!                                                        $',13,10
    ERR_BAL     DB 'ERROR! Insufficient balance!                                                  $',13,10
    EXIT_MSG    DB ' Exiting ATM',13,10,' Thank you!$'
    
    ; Variables
    BALANCE     DW 0    ; Current balance stored in memory
    TEMP        DW ?    ; Temporary storage for calculations
    BUFFER      DB 6    ; Buffer for number input
                DB ?
                DB 6 DUP(?)

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    CALL CLEAR_SCREEN

    mov ah, 06h
    xor al, al
    mov bh, 67h    ; White BG(0Fh), White text (7h)
    xor cx, cx     ; Upper left corner CH=row, CL=column
    mov dx, 184Fh  ; lower right corner DH=row, DL=column 
    mov ch, 0
    mov cl, 1
    mov dl, 78
    mov dh, 3
    int 10h
    
    ; Display title screen
    CALL SHOW_TITLE
    
MENU_LOOP:
    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    INT 21H

    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    INT 21H

    ; Display main menu
    CALL DISPLAY_MENU
    
    ; Get user choice
    MOV AH, 01H
    INT 21H
    
    ; Process choice
    CMP AL, '1'
    JZ BALANCE_INQUIRY
    CMP AL, '2'
    JZ DEPOSIT
    CMP AL, '3'
    JZ WITHDRAWAL
    CMP AL, '4'
    JZ EXIT_PROGRAM
    
    ; Invalid choice
    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    INT 21H

    LEA DX, SPACE
    MOV AH, 09H
    INT 21H

    mov ah, 09h
    mov bh, 0
    mov bl, 0CEh   ; BG,FG
    mov cx, 78     ; Length
    int 10h

    LEA DX, ERR_CHOICE
    MOV AH, 09H
    INT 21H
    JMP MENU_LOOP

BALANCE_INQUIRY:
    JMP BALANCE_INQUIRY2

DEPOSIT:
    JMP DEPOSIT2

WITHDRAWAL:
    JMP WITHDRAWAL2

EXIT_PROGRAM:
    JMP EXIT_PROGRAM2

BALANCE_INQUIRY2:

    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    INT 21H

    LEA DX, BAL_MSG
    MOV AH, 09H
    INT 21H
    
    MOV AX, BALANCE
    CALL DISPLAY_NUM2
    JMP MENU_LOOP

DEPOSIT2:
    
    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    INT 21H

    LEA DX, DEP_MSG
    MOV AH, 09H
    INT 21H
    
    CALL INPUT_NUM
    ADD BALANCE, AX
    
    LEA DX, DEP_SUCC
    MOV AH, 09H
    INT 21H
    MOV AX, TEMP
    CALL DISPLAY_NUM
    JMP MENU_LOOP

WITHDRAWAL2:
    
    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    INT 21H

    LEA DX, WD_MSG
    MOV AH, 09H
    INT 21H
    
    CALL INPUT_NUM
    MOV BX, AX
    
    ; Check if enough balance
    MOV AX, BALANCE
    CMP AX, BX
    JB INSUFF_BALANCE
    
    ; Perform withdrawal
    SUB BALANCE, BX
    LEA DX, WD_SUCC
    MOV AH, 09H
    INT 21H
    MOV AX, BX
    CALL DISPLAY_NUM
    JMP MENU_LOOP
    
INSUFF_BALANCE:

    LEA DX, SPACE
    MOV AH, 09H
    INT 21H

    mov ah, 09h
    mov bh, 0
    mov bl, 0CEh   ; BG,FG
    mov cx, 78     ; Length
    int 10h

    LEA DX, ERR_BAL
    MOV AH, 09H
    INT 21H
    JMP MENU_LOOP

EXIT_PROGRAM2:

    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    INT 21H

    LEA DX, EXIT_MSG
    MOV AH, 09H
    INT 21H
    
    MOV AH, 4CH
    INT 21H

MAIN ENDP

; Helper procedures
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

SHOW_TITLE PROC
    
    LEA DX, TITLE_MSG
    MOV AH, 09H
    INT 21H
    
    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX, ATM_MSG
    MOV AH, 09H
    INT 21H
    
    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX, PROG_MSG
    MOV AH, 09H
    INT 21H
    
    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX, COPY_MSG
    MOV AH, 09H
    INT 21H
    
    RET
SHOW_TITLE ENDP

; PAUSE PROC
;     MOV AH, 07H
;     INT 21H
;     RET
; PAUSE ENDP

INPUT_NUM PROC
    PUSH BX
    PUSH CX
    PUSH DX
    
    XOR BX, BX  ; Clear BX for result
    XOR CX, CX  ; Clear counter
    
INPUT_LOOP:
    MOV AH, 01H
    INT 21H
    
    CMP AL, 13  ; Check for Enter key
    JE INPUT_DONE
    
    CMP AL, '0'
    JB INPUT_LOOP
    CMP AL, '9'
    JA INPUT_LOOP
    
    SUB AL, '0'  ; Convert ASCII to number
    MOV CL, AL
    
    MOV AX, BX
    MOV BX, 10
    MUL BX      ; Multiply current result by 10
    ADD AX, CX  ; Add new digit
    MOV BX, AX
    
    JMP INPUT_LOOP
    
INPUT_DONE:
    MOV AX, BX
    MOV TEMP, AX  ; Store input in TEMP
    
    POP DX
    POP CX
    POP BX
    RET
INPUT_NUM ENDP

DISPLAY_NUM PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    
    MOV BX, 10   ; Divisor
    XOR CX, CX   ; Counter for digits
    
DIVIDE_LOOP:
    XOR DX, DX
    DIV BX
    PUSH DX      ; Push remainder (digit)
    INC CX
    TEST AX, AX
    JNZ DIVIDE_LOOP
    
DISPLAY_LOOP:
    POP DX
    ADD DL, '0'  ; Convert to ASCII
    MOV AH, 02H
    INT 21H
    LOOP DISPLAY_LOOP
    
    LEA DX, DOT_MSG
    MOV AH, 09H
    INT 21H
    
    POP DX
    POP CX
    POP BX
    POP AX
    RET
DISPLAY_NUM ENDP

DISPLAY_NUM2 PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    
    MOV BX, 10   ; Divisor
    XOR CX, CX   ; Counter for digits
    
DIVIDE_LOOP2:
    XOR DX, DX
    DIV BX
    PUSH DX      ; Push remainder (digit)
    INC CX
    TEST AX, AX
    JNZ DIVIDE_LOOP2
    
DISPLAY_LOOP2:
    POP DX
    ADD DL, '0'  ; Convert to ASCII
    MOV AH, 02H
    INT 21H
    LOOP DISPLAY_LOOP2
    
    POP DX
    POP CX
    POP BX
    POP AX
    RET
DISPLAY_NUM2 ENDP

DISPLAY_MENU PROC

    LEA DX, SPACE
    MOV AH, 09H
    INT 21H

    ; Set color for header1
    mov ah, 09h
    mov bh, 0
    mov bl, 17h   ; BG,FG
    mov cx, 78     ; Length
    int 10h

    LEA DX, MENU_MSG
    MOV AH, 09H
    INT 21H

    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    INT 21H

    LEA DX, SPACE
    MOV AH, 09H
    INT 21H

    ; Set color for header1
    mov ah, 09h
    mov bh, 0
    mov bl, 17h   ; BG,FG
    mov cx, 78     ; Length
    int 10h

    LEA DX, MENU_MSG2
    MOV AH, 09H
    INT 21H

    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    INT 21H

    LEA DX, SPACE
    MOV AH, 09H
    INT 21H

    ; Set color for header1
    mov ah, 09h
    mov bh, 0
    mov bl, 17h   ; BG,FG
    mov cx, 78     ; Length
    int 10h

    LEA DX, MENU_MSG3
    MOV AH, 09H
    INT 21H

    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    INT 21H

    LEA DX, SPACE
    MOV AH, 09H
    INT 21H

    ; Set color for header1
    mov ah, 09h
    mov bh, 0
    mov bl, 17h   ; BG,FG
    mov cx, 78     ; Length
    int 10h

    LEA DX, MENU_MSG4
    MOV AH, 09H
    INT 21H

    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    INT 21H

    LEA DX, SPACE
    MOV AH, 09H
    INT 21H

    ; Set color for header1
    mov ah, 09h
    mov bh, 0
    mov bl, 17h   ; BG,FG
    mov cx, 78     ; Length
    int 10h

    LEA DX, MENU_MSG5
    MOV AH, 09H
    INT 21H

    RET
DISPLAY_MENU ENDP

END MAIN