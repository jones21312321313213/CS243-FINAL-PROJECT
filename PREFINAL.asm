

userRegistrationFUNCTION PROC
    ; Ask for username
    CALL CLEAR_SCREEN

    lea dx, userMSG
    mov ah, 09h              ; DOS function to display string
    int 21h

    lea dx, promptUsername
    mov ah, 09h              ; DOS function to display string
    int 21h

    ; Take username input
    mov ah, 0ah
    lea dx, username
    int 21h

password_loop:
    ; Ask for password
    lea dx, promptPassword
    mov ah, 09h              ; DOS function to display string
    int 21h

    ; Take password input (masked with *)
    xor cx, cx               ; Clear CX for character count (max 20 characters)
    mov si, 0                ; SI will be used to point to the character variable

    ; Read and mask password input
password_input:
    mov ah, 08h              ; BIOS function to read a single character
    int 21h                  ; Get character input (it won't be displayed)

    cmp al, 13               ; Check if Enter (CR) is pressed
    je password_confirm_input ; Jump if Enter is pressed

    mov dl, '*'              ; Display asterisk character
    mov ah, 02h              ; DOS function to display character
    int 21h

    ; Store the typed character in a variable (direct storage)
    mov [password + si], al  ; Store the character in the password variable
    inc si                   ; Move to the next variable
    inc cx                   ; Increment character count
    cmp cx, 100               ; Check if we've reached max length (20 chars)
    jl password_input        ; Repeat the input loop if not at max length

password_confirm_input:
    ; Null-terminate the password input
    mov byte ptr [password + si], '$'    ; Terminate password string with '$'

    ; Ask for confirm password
    lea dx, promptConfirmPass
    mov ah, 09h              ; DOS function to display string
    int 21h

    ; Take confirm password input (masked with *)
    xor cx, cx               ; Clear CX for character count
    mov si, 0                ; Reset SI for confirm password

confirm_password_input:
    mov ah, 08h              ; BIOS function to read a single character
    int 21h                  ; Get character input (it won't be displayed)

    cmp al, 13               ; Check if Enter (CR) is pressed
    je compare_passwords     ; Jump if Enter is pressed

    mov dl, '*'              ; Display asterisk character
    mov ah, 02h              ; DOS function to display character
    int 21h

    ; Store the typed character in a variable (direct storage)
    mov [confirmPass + si], al  ; Store the character in the confirm password variable
    inc si                   ; Move to the next variable
    inc cx                   ; Increment character count
    cmp cx, 100               ; Check if we've reached max length (20 chars)
    jl confirm_password_input ; Repeat the input loop if not at max length

    ; Null-terminate the confirm password input
    mov byte ptr [confirmPass + si], '$'

compare_passwords:
    ; Compare the passwords
    lea si, password         ; Point to the start of the actual password
    lea di, confirmPass      ; Point to the start of the confirm password
    mov cx,100
    call compare_passwords_internal

    ; If passwords match, display success message
    lea dx, accSucc
    mov ah, 09h              ; DOS function to display string
    int 21h

    CALL NEW_LINE

    lea dx, pressEnter
    mov ah, 09h              ; DOS function to display string
    int 21h

    CALL waitUserToPressEnter

passwords_mismatch:
    ; Display mismatch message
    lea dx, password_mismatch
    mov ah, 09h              ; DOS function to display string
    int 21h
    jmp password_loop         ; Retry password entry

userRegistrationFUNCTION ENDP

; Function to compare two passwords
compare_passwords_internal proc
         mov al, [si]             ; Load byte from password into AL
        cmp al, '$'              ; Check for string termination ($)
        je loopMenu      ; If null terminator, passwords match
        cmp al, [di]             ; Compare with byte from confirm password
        jne passwords_mismatch   ; Jump to mismatch if not equal
        inc si                   ; Move to the next character
        inc di
        loop compare_passwords_internal         ; Repeat the loop
compare_passwords_internal endp













userRegistrationFUNCTION PROC 
; Ask for username
    CALL CLEAR_SCREEN

    lea dx, userMSG
    mov ah, 09h              ; DOS function to display string
    int 21h

    lea dx, promptUsername
    mov ah, 09h              ; DOS function to display string
    int 21h

    ; Take username input
    mov ah, 0ah
    lea dx, username
    int 21h

password_loop:
    ; Ask for password
    lea dx, promptPassword
    mov ah, 09h              ; DOS function to display string
    int 21h

    ; Take password input
    mov ah, 0ah
    lea dx, password
    int 21h

    ; Ask for confirm password
    lea dx, promptConfirmPass
    mov ah, 09h              ; DOS function to display string
    int 21h

    ; Take confirm password input
    mov ah, 0ah
    lea dx, confirmPass
    int 21h

    ; Compare passwords
    lea si, password + 2      ; Point to the actual password input (skip length byte)
    lea di, confirmPass + 2 ; Point to the actual confirm password input
    mov cx, 100               ; Maximum length of the password to compare
    call compare_passwords

    ; If passwords match, display success message
    lea dx, accSucc
    mov ah, 09h              ; DOS function to display string
    int 21h

    CALL NEW_LINE

    lea dx, pressEnter
    mov ah, 09h              ; DOS function to display string
    int 21h

   CALL waitUserToPressEnter

passwords_mismatch:
    ; Display mismatch message
    lea dx, password_mismatch
    mov ah, 09h              ; DOS function to display string
    int 21h
    jmp password_loop         ; Retry password entry

userRegistrationFUNCTION ENDP 
; Function to compare two passwords
compare_passwords proc
    mov al, [si]             ; Load byte from password into AL
    cmp al, [di]             ; Compare with byte from confirm password
    jne passwords_mismatch   ; Jump if not equal
    inc si                   ; Move to the next character
    inc di
    loop compare_passwords   ; Loop until all characters are compared
    ret
compare_passwords endp