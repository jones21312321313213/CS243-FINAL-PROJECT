userRegistrationFUNCTION PROC
    ; Ask for username (only once)
    CALL CLEAR_SCREEN

    lea dx, userMSG
    mov ah, 09h              ; DOS function to display string
    int 21h

    lea dx, promptUsername
    mov ah, 09h              ; DOS function to display string
    int 21h

    ; Take username input (no masking)
    mov ah, 0ah
    lea dx, username
    int 21h

    ; Insert blank line
    CALL NEW_LINE

input_passwords:    ; Label to loop if passwords do not match
    ; Clear the password and confirm password buffers before new input
    lea si, password
    mov cx, 100            ; Buffer size
    call clear_buffer      ; Clear the password buffer

    lea si, confirmPass
    call clear_buffer      ; Clear the confirm password buffer

    ; Display password prompt
    lea dx, promptPassword
    mov ah, 09h
    int 21h

    lea si, password       ; buffer to hold the password
    lea dx, Ast            ; symbol to display *

input_password:
    ; get char typed for password
    mov ah, 7
    int 21h
    ; check if the pressed key is Enter (0Dh)
    cmp al, 0Dh
    je input_done          ; if Enter is pressed, stop input

    ; save the typed char in our password buffer
    mov byte ptr[si], al

    ; Display Asterisk
    mov ah, 9
    int 21h                ; display the asterisk (*)

    ; increase buffer pointer
    inc si

    ; continue the loop for next character
    jmp input_password

input_done:
    ; properly terminate our password string
    mov byte ptr[si], "$"

    ; Insert blank line
    CALL NEW_LINE

    ; Display confirmation password prompt
    lea dx, promptConfirmPass
    mov ah, 09h
    int 21h

    lea si, confirmPass    ; buffer to hold the confirm password
    lea dx, Ast            ; symbol to display *

input_confirm_password:
    ; get char typed for confirm password
    mov ah, 7
    int 21h
    ; check if the pressed key is Enter (0Dh)
    cmp al, 0Dh
    je confirm_input_done  ; if Enter is pressed, stop input

    ; save the typed char in our confirm password buffer
    mov byte ptr[si], al

    ; Display Asterisk
    mov ah, 9
    int 21h                ; display the asterisk (*)

    ; increase buffer pointer
    inc si

    ; continue the loop for next character
    jmp input_confirm_password

confirm_input_done:
    ; properly terminate our confirm password string
    mov byte ptr[si], "$"

    ; Compare lengths of both passwords
    lea si, password           ; point to the first password
    lea di, confirmPass        ; point to the confirm password
    call compare_lengths
    jc passwords_mismatch2     ; Jump to mismatch if lengths differ

    ; Compare both passwords
    lea si, password           ; point to the first password
    lea di, confirmPass        ; point to the confirm password
    mov cx, 100                ; maximum characters to compare
    call compare_passwords

    ; If passwords match, proceed to success message
    lea dx, accSucc
    mov ah, 09h
    int 21h

    ; Exit
    mov ah, 4Ch
    int 21h

passwords_mismatch2:
    ; Display mismatch message and prompt to re-enter password
    lea dx, password_mismatch
    mov ah, 09h
    int 21h

    ; Re-enter password and confirmation (without asking for username)
    jmp input_passwords

; Function to clear a buffer (set all bytes to zero)
clear_buffer proc
    ; Clear the buffer by setting each byte to 0
    xor ax, ax              ; Clear AX (zero value)
    rep stosb               ; Fill the buffer with zero bytes
    ret
clear_buffer endp

; Function to compare the lengths of two strings
compare_lengths proc
    ; Compare lengths of password and confirm password
    lea si, password
    lea di, confirmPass
    xor ax, ax              ; Clear AX (length counter)

compare_length_loop:
    ; Check if the byte at SI (password) is '$' (end of string)
    cmp byte ptr [si], '$'
    je length_check_done     ; If end of string, stop
    inc si
    inc ax
    jmp compare_length_loop

length_check_done:
    ; Store the length of the password in AX
    mov bx, ax               ; Store password length in BX

    lea si, confirmPass
    xor ax, ax               ; Clear AX again (length counter)

compare_confirm_length_loop:
    ; Check if the byte at SI (confirm password) is '$' (end of string)
    cmp byte ptr [si], '$'
    je compare_length_done   ; If end of string, stop
    inc si
    inc ax
    jmp compare_confirm_length_loop

compare_length_done:
    ; Compare the lengths of password and confirm password
    cmp ax, bx
    je lengths_match         ; If lengths match, continue
    jc passwords_mismatch2   ; If lengths don't match, jump to mismatch

lengths_match:
    ret
compare_lengths endp

; Function to compare two passwords
compare_passwords proc
    mov al, [si]             ; Load byte from password into AL
    cmp al, [di]             ; Compare with byte from confirm password
    jne passwords_mismatch2  ; Jump if not equal
    inc si                   ; Move to the next character
    inc di
    loop compare_passwords   ; Loop until all characters are compared
    ret
compare_passwords endp
userRegistrationFUNCTION ENDP