.model small
.stack 10h
.data
prompt db "Enter your pass (Press Enter when done):$"
confirm_prompt  db "Confirm your pass (Press Enter when done):$"
greet   db "Hello $"
pass    db 100 dup(?)    ; buffer to hold the password
confirm_pass db 100 dup(?) ; buffer to hold the confirm password
Ast     db "*$"
crlf    db 13, 10, 24H
mismatch_msg db "Passwords do not match. Please try again.$"

.code
    mov     ax, @data
    mov     ds, ax

    ; Display Name prompt
    lea     dx, prompt
    mov     ah, 9
    int     21h

    lea     si, pass       ; buffer to hold the password
    lea     dx, Ast       ; symbol to display *

input_password:
    ; get char typed for password
    mov     ah, 7
    int     21h
    ; check if the pressed key is Enter (0Dh)
    cmp     al, 0Dh
    je      input_done    ; if Enter is pressed, stop input

    ; save the typed char in our password buffer
    mov     byte ptr[si], al

    ; Display Asterisk
    mov     ah, 9
    int     21h           ; display the asterisk (*)

    ; increase buffer pointer
    inc     si

    ; continue the loop for next character
    jmp     input_password

input_done:
    ; properly terminate our password string
    mov     byte ptr[si], "$"

    ; insert blank line
    lea     dx, crlf
    mov     ah, 9
    int     21h

    ; Display confirmation prompt
    lea     dx, confirm_prompt
    mov     ah, 9
    int     21h

    lea     si, confirm_pass ; buffer to hold the confirm password
    lea     dx, Ast          ; symbol to display *

input_confirm_password:
    ; get char typed for confirm password
    mov     ah, 7
    int     21h
    ; check if the pressed key is Enter (0Dh)
    cmp     al, 0Dh
    je      confirm_input_done ; if Enter is pressed, stop input

    ; save the typed char in our confirm password buffer
    mov     byte ptr[si], al

    ; Display Asterisk
    mov     ah, 9
    int     21h           ; display the asterisk (*)

    ; increase buffer pointer
    inc     si

    ; continue the loop for next character
    jmp     input_confirm_password

confirm_input_done:
    ; properly terminate our confirm password string
    mov     byte ptr[si], "$"

    ; Compare both passwords
    lea     si, pass           ; point to the first password
    lea     di, confirm_pass   ; point to the confirm password
    mov     cx, 100            ; maximum characters to compare
    call compare_passwords

    ; If passwords match, display success message
    lea     dx, greet
    mov     ah, 9
    int     21h

    lea     dx, pass
    mov     ah, 9
    int     21h

    ; exit
    mov     ah, 4Ch
    int     21h

passwords_mismatch:
    ; Display mismatch message and prompt to re-enter password
    lea     dx, mismatch_msg
    mov     ah, 9
    int     21h

    ; Re-enter password and confirmation
    jmp     input_password

; Function to compare two passwords
compare_passwords proc
    mov     al, [si]             ; Load byte from password into AL
    cmp     al, [di]             ; Compare with byte from confirm password
    jne     passwords_mismatch   ; Jump if not equal
    inc     si                   ; Move to the next character
    inc     di
    loop    compare_passwords   ; Loop until all characters are compared
    ret
compare_passwords endp
end
