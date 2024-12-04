.model small
.stack 100h

.data
    username_prompt db 13,10,"Enter username: $"
    password_prompt db 13,10,"Enter password: $"
    success_msg db 13,10,"Login Successful!$"
    failure_msg db 13,10,"Invalid Login!$"
    register_msg db 13,10,"Please Register First!$"
mask_char db '*'
    stored_username db 20 dup('$') ; buffer for username (max 20 chars)
    stored_password db 20 dup('$') ; buffer for password (max 20 chars)

    input_username db 20 dup('$') ; buffer for input username
    input_password db 20 dup('$') ; buffer for input password

.code
main proc
    ; Initialize data segment
    mov ax, @data
    mov ds, ax

    ; Display menu
    lea dx, register_msg
    mov ah, 09h
    int 21h

    ; Start the registration process
    call registration

    ; Start login process after registration
    call login

    ; Exit program
    mov ah, 4Ch
    int 21h

registration proc
    ; Prompt for username
    lea dx, username_prompt
    mov ah, 09h
    int 21h

    ; Read username
    lea dx, input_username
    mov ah, 0Ah
    int 21h

    ; Append '$' to username
    lea di, input_username + 2
    mov bl, input_username[1] ; Length of input
    add di, bx                ; Move to end of input
    mov al, '$'
    mov [di], al              ; Append '$'

    ; Store username in stored_username
    lea si, input_username + 2
    lea di, stored_username
    call copy_string

    ; Prompt for password
    lea dx, password_prompt
    mov ah, 09h
    int 21h

    ; Read password
    lea dx, input_password
    mov ah, 0Ah
    int 21h

    ; Masking password input and store the actual password
    lea si, input_password + 2
    lea di, input_password
    mov cx, 0                ; Clear counter for input position
    call mask_password_input

    ; Store the actual password (not the masked version)
    lea si, input_password + 2
    lea di, stored_password
    call copy_string

    ret
registration endp

login proc
    ; Prompt for username
    lea dx, username_prompt
    mov ah, 09h
    int 21h

    ; Read username
    lea dx, input_username
    mov ah, 0Ah
    int 21h

    ; Append '$' to username
    lea di, input_username + 2
    mov bl, input_username[1] ; Length of input
    add di, bx                ; Move to end of input
    mov al, '$'
    mov [di], al              ; Append '$'

    ; Compare username
    lea si, stored_username
    lea di, input_username + 2
    call compare_credentials
    jnz invalid_login ; if not equal, jump to failure

    ; Prompt for password
    lea dx, password_prompt
    mov ah, 09h
    int 21h

    ; Masking password input
    lea si, input_password + 2
    lea di, input_password
    mov cx, 0                ; Clear counter for input position
    call mask_password_input

    ; Compare password
    lea si, stored_password
    lea di, input_password + 2
    call compare_credentials
    jnz invalid_login ; if not equal, jump to failure

    ; Login successful
    lea dx, success_msg
    mov ah, 09h
    int 21h
    ret

invalid_login:
    ; Login failed
    lea dx, failure_msg
    mov ah, 09h
    int 21h
    ret

; Copy the string from SI to DI
copy_string proc
    ; Copy string from SI to DI, terminating with '$'
copy_loop:
    mov al, [si]
    mov [di], al
    inc si
    inc di
    cmp al, '$'
    je copy_done
    jmp copy_loop
copy_done:
    ret
copy_string endp

; Compare strings pointed by SI and DI
compare_credentials proc
    ; Compare current bytes from both strings
    mov al, [si]            ; Load byte from stored string into AL
compare_loop:
    cmp al, '$'             ; Check for string termination
    je credentials_match    ; If end marker, strings match
    cmp al, [di]            ; Compare with byte from input string
    jne credentials_mismatch ; If mismatch, jump
    inc si                  ; Move to next character in stored string
    inc di                  ; Move to next character in input string
    mov al, [si]            ; Load next character
    jmp compare_loop        ; Repeat the loop

credentials_match:
    xor ax, ax              ; Return 0 for match
    ret

credentials_mismatch:
    mov ax, 1               ; Return 1 for mismatch
    ret
compare_credentials endp

; Mask the password input as user types
mask_password_input proc
    ; Read one character from input
mask_input_loop:
    mov al, [si]          ; Get the next character
    cmp al, 0Dh           ; Check if it is Enter (Carriage Return)
    je end_masking_input  ; If Enter is pressed, stop
    cmp al, 20h           ; Check if it is a space
    je skip_space         ; Skip spaces for better appearance

    ; Mask the character with an asterisk '*'
    lea dx, mask_char
    mov ah, 09h
    int 21h                ; Display the asterisk for masking

    inc si                 ; Move to the next character
    jmp mask_input_loop    ; Repeat the loop

skip_space:
    inc si
    jmp mask_input_loop

end_masking_input:
    ret
mask_password_input endp
login endp 
main endp
end main

