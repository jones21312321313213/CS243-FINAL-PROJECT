.model small
.stack 100h
.data
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    cart db '                                                  @@@',13,10
         db '                                               =@@@@',13,10
         db '                                               @@',13,10
         db '                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',13,10
         db '                   %@     @@-    +@@    -@@    @@=',13,10
         db '                    @+    #@*    =@@    +@     @@',13,10
         db '                   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@',13,10
         db '                   .@*    @@    =@@    @@    #@@',13,10
         db '                   @@===+@@+===@@@===#@@====@@',13,10
         db '                    #@@+++@@@+++@@@+++@@@+++@@@',13,10
         db '                     @@   %@#   =@@   @@+   @@@',13,10
         db '                     #@@@@@@@@@@@@@@@@@@@@@@@@@@@',13,10
         db '                                                @@',13,10
         db '                   :@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',13,10
         db '                     %@@@@=             *@@@@#',13,10
         db '                    @@@@@@@%           @@@@@@@@',13,10
         db '                    :@   @@             @:  =@',13,10
         db '                     :@@@@               @@@@',13,10, '$'
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      msg db '              ________                                          ',13,10,
          db    '          /  _____/______  ____   ____  ___________ ___.__. ',13,10,
          db    '          /   \  __\_  __ \/  _ \_/ ___\/ __ \_  __ <   |  | ',13,10,
          db    '          \    \_\  \  | \(  <_> )  \__\  ___/|  | \/\\___  | ',13,10,
          db    '           \______  /__|   \____/ \___  >___  >__|   / ____| ',13,10,
          db    '                  \/                  \/    \/       \/       ',13,10, '$'
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mainMenuMSG     db '  __  __       _         __  __                   ',13,10
                    db ' |  \/  | __ _(_)_ __   |  \/  | ___ _ __  _   _ ',13,10
                    db ' | |\/| |/ _` | | ''_ \  | |\/| |/ _ \ ''_ \| | | |',13,10
                    db ' | |  | | (_| | | | | | | |  | |  __/ | | | |_| |',13,10
                    db ' |_|  |_|\__,_|_|_| |_| |_|  |_|\___|_| |_|\__,_|',13,10, '$'
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    shop        db '                ...                  ',13,10
                db '              ........               ',13,10
                db '              .:   ...               ',13,10
                db '          .-============-.          ',13,10
                db '          .--------------:          ',13,10
                db '          .--------------:          ',13,10
                db '          .--------------:          ',13,10
                db '          .--------------:          ',13,10
                db '          .--------------:          ',13,10
                db '          .--------------:          ',13,10
                db '          .--------------:          ',13,10
                db '          ................          ',13,10, '$'
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    list db'                   _                 ____     _____   ', 13, 10
        db '                  |"|        ___    / __"| u |_ " _|  ', 13, 10
        db '                U | | u     |_"_|  <\___ \/    | |    ', 13, 10
        db '                 \| |/__     | |    u___) |   /| |\   ', 13, 10
        db '                  |_____|  U/| |\u  |____/>> u |_|U   ', 13, 10
        db '                  //  \\.-,_|___|_,-.)(  (__)_// \\_  ', 13, 10
        db '                 (_")("_)\_)-'' ''-(_/(__)    (__) (__) ', 13, 10, '$'
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      is   db '                               ____                                       ', 13, 10
          db '                       ___    / __"| u                                  ', 13, 10
          db '                      |_"_|  <\___ \/                                   ', 13, 10
          db '                       | |    u___) |                                   ', 13, 10
          db '                     U/| |\u  |____/>>                                  ', 13, 10
          db '                  .-,_|___|_,-.)(  (__)                                 ', 13, 10
          db '                   \_)-'' ''-(_/(__)                                    ', 13, 10, '$'
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   
    emptyMSG    db '            U _____ u  __  __    ____    _____   __   __       ', 13, 10
                db '            \| ___"|/U|'' \/ ''uU|  _"\ u|_ " _|  \ \ / /     ', 13, 10
                db '             |  _|"  \| |\/| |/\| |_) |/  | |     \ V /      ', 13, 10
                db '             | |___   | |  | |  |  __/   /| |\   U_|"|_u     ', 13, 10
                db '             |_____|  |_|  |_|  |_|     u |_|U     |_|       ', 13, 10
                db '             <<   >> <<,-,,-.   ||>>_   _// \\_.-,//|(_      ', 13, 10
                db '            (__) (__) (./  \.) (__)__) (__) (__)\_) (__)     ', 13, 10, '$'    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  online db ' Grocery Items Inventory System $'
  programmer db 0ah, ' Programmer: JOSHUA D. ARCO $'
  date db 0ah, ' Date(Written): NOV. 22, 2024$'

  registerNewCustomers db '1.Register new customers                                 ',13,10,'$';
  logInCustomers db '2.Log in customers                                             ',13,10,'$';
  createNewRecord db '3.Create new Inventory                                        ',13,10,'$';
  updateExistingRecord db '4.Update existing Inventory                                  ',13,10,'$';
  deleteExistingRecord db '5.Delete existing Inventory                                  ',13,10,'$';
  viewExistingRecord db '6.View existing Inventory                                      ',13,10,'$';
  space db '                      $'

  choice db 'Enter your choice: $'
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  enterGrocery db 0ah,0ah, 'Please enter your 5 grocery items to be added in the inventory: $'
  promptFirstItem db 0ah,'Item No. 1: $'
  promptSecondItem db 0ah,'Item No. 2: $'
  promptThirdItem db 0ah,'Item No. 3: $'
  promptFourthItem db 0ah,'Item No. 4: $'
  promptFifthItem db 0ah,'Item No. 5: $'
 
  ordersum db 0ah,0ah,'              ORDER SUMMARY $'
 
  outFirstItem db 0ah,'   Item No. 1:    | $'
  outSecondItem db 0ah,'   Item No. 2:    | $'
  outThirdItem db 0ah,'   Item No. 3:    | $'
  outFourthItem db 0ah,'   Item No. 4:    | $'
  outFifthItem db 0ah,'   Item No. 5:    | $'
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; Errors/ENTERS
  errorInvalid  DB 'ERROR! Invalid choice!                                                        $',13,10
  pressEnter DB 'PRESS ENTER TO CONTINUE!                                                         $',13,10
  pressBACK DB 'PRESS ANY KEYS TO GO BACK TO MAIN MENU :)$'
  isEmpty DB 'LIST/INVENTORY IS EMPTY! PLEASE ADD SOME$'
 ; Variables;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                DB ?

  firstItem db 100, ?, 100 dup(' ')
  secondItem db 100, ?, 100 dup(' ')
  thirdItem db 100, ?, 100 dup(' ')
  fourthItem db 100, ?, 100 dup(' ')
  fifthItem db 100, ?, 100 dup(' ')
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.code
main proc
  mov ax, @data
  mov ds, ax
  ; Clear the screen before anything is displayed
  CALL CLEAR_SCREEN

  ; Set cursor to the top left (position 0,0) for optimal start
  MOV AH, 02h
  MOV BH, 00h      ; Page number (usually 0 for default screen)
  MOV DH, 00h      ; Row (line) 0
  MOV DL, 00h      ; Column (character) 0
  INT 10h          ; Call BIOS interrupt to set cursor position

;    CALL NEW_LINE

    mov ah, 09h
    lea dx, msg
    int 21h

    CALL NEW_LINE

    mov ah, 09h
    lea dx, cart
    int 21h

    mov ah, 09h
    lea dx, space
    int 21h

    mov ah, 09h
    mov bh, 0
    mov bl, 0B4h   ; BG,FG
    mov cx, 24  ; Length
    int 10h

    mov ah, 09h
    lea dx, pressEnter
    int 21h

    

    ; Wait for the user to press any key
    mov ah, 00h  ; Function to wait for a key press
    int 16h      ; BIOS interrupt to read key press

  
loopMenu:
  ; CALL MAIN MENU
  CALL mainMenuCALL

  ; Prompt for user choice
  CALL NEW_LINE

  mov ah, 09h
  lea dx, choice
  int 21h
  ; Get user input (choice)
  MOV AH, 01H
  INT 21H

  ; Check the user input
  CMP AL, '1'
  JZ registerNewCustomersCALL
  CMP AL, '2'
  JZ logInCustomersCALL
  CMP AL, '3'
  JZ createNewCALL
  CMP AL, '4'
  JZ updateExistingRecordCALL
  CMP AL, '5'
  JZ deleteExistingRecordCALL
  CMP AL, '6'
  JZ viewExistingRecordCALL

  ; Invalid choice
  MOV DL, 0DH
  MOV AH, 02H
  INT 21H

  MOV DL, 0AH
  INT 21H

  CALL NEW_LINE
    mov ah, 09h
    mov bh, 0
    mov bl, 0CEh   ; BG,FG
    mov cx, 27    ; Length
    int 10h

  LEA DX, errorInvalid
  MOV AH, 09H
  INT 21H
  CALL NEW_LINE
  CALL NEW_LINE

 
  MOV AH, 09h
  LEA DX, pressEnter
  INT 21h

  ; Wait for user to press Enter (check for Enter key: ASCII value 0Dh)
  MOV AH, 01h   ; Function to read a character from input
  INT 21h

  ; Check if Enter (0Dh) was pressed, if not, continue to wait
  CMP AL, 0Dh
  CALL CLEAR_SCREEN
  JZ loopMenu   ; If Enter was pressed, go back to the menu
  JMP $         ; If not, keep waiting


registerNewCustomersCALL:
  ; Display "Register New Customer" and end the program
  CALL CLEAR_SCREEN
    jmp loopMenu

logInCustomersCALL:
  ; Display "Log In Customers" and end the program
  CALL NEW_LINE
  MOV AH, 4Ch
  INT 21h

mainMenuCALL:
  ; Display "Main Menu" and end the program
    CALL CLEAR_SCREEN
    CALL NEW_LINE
    CALL tittle   ; Display title information

    mov ah, 09h
    lea dx, mainMenuMSG
    int 21h

    CALL displayMenu

    ret
createNewCALL:  
    CALL CLEAR_SCREEN
    CALL createNewFunction

updateExistingRecordCALL:
  ; Display "Update Existing Record" and end the program
  CALL NEW_LINE
  MOV AH, 4Ch
  INT 21h

deleteExistingRecordCALL:
  ; Display "Delete Existing Record" and end the program
  CALL NEW_LINE
  MOV AH, 4Ch
  INT 21h

  ; Exit program if reached here
  MOV AH, 4Ch
  INT 21h

viewExistingRecordCALL:
    CALL CLEAR_SCREEN
    CALL viewExistingRecordFunction

createNewFunction:
    mov ah, 09h
    lea dx, shop
    int 21h

    mov ah, 09h
    lea dx, enterGrocery
    int 21h

    
    ;INPUTS 
    mov ah, 09h
    lea dx, promptFirstItem
    int 21h
    
    mov ah, 0ah
    lea dx, firstItem
    int 21h


    mov ah, 09h
    lea dx, promptSecondItem
    int 21h
    
    mov ah, 0ah
    lea dx, secondItem
    int 21h


    mov ah, 09h
    lea dx, promptThirdItem
    int 21h
    
    mov ah, 0ah
    lea dx, thirdItem
    int 21h


    mov ah, 09h
    lea dx, promptFourthItem
    int 21h
    
    mov ah, 0ah
    lea dx, fourthItem
    int 21h


    mov ah, 09h
    lea dx, promptFifthItem
    int 21h
    
    mov ah, 0ah
    lea dx, fifthItem
    int 21h
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    CALL NEW_LINE
    CALL NEW_LINE
    
    mov ah, 09h
    mov bh, 0
    mov bl, 0B4h   ; BG,FG
    mov cx, 41 ; Length
    int 10h

    MOV AH, 09h
    LEA DX, pressBACK
    INT 21h

    ; Wait for user to press Enter (check for Enter key: ASCII value 0Dh)
    MOV AH, 01h   ; Function to read a character from input
    INT 21h

    ; Check if Enter (0Dh) was pressed, if not, continue to wait
    CMP AL, 0Dh
    CALL CLEAR_SCREEN
    JMP loopMenu   ; If Enter was pressed, go back to the menu
    JMP $         ; If not, keep waiting


viewExistingRecordFunction:
    lea si, firstItem + 1  ; Point to the actual input (input buffer starts at +1)
    mov al, [si]           ; Get the length of the string (first byte)
    cmp al, 0              ; Check if the length is zero
    jz kungEmpty           ; If zero, jump to the "kungEmpty" label

    ; If not empty, display items
    jmp ifNotEmpty          ; Jump to handle the non-empty case

kungEmpty:
    ; If the string is empty, display a message
    mov ah, 09h
    lea dx, list
    int 21h  ; Print the message

    mov ah, 09h
    lea dx, is
    int 21h  ; Print the message

    mov ah, 09h
    lea dx, emptyMSG
    int 21h  ; Print the message

    CALL NEW_LINE

    mov ah, 09h
    lea dx, isEmpty
    int 21h  ; Print the message

    CALL NEW_LINE

    MOV AH, 09h
    LEA DX, pressBACK
    INT 21h

    ; Wait for user to press Enter (check for Enter key: ASCII value 0Dh)
    MOV AH, 01h   ; Function to read a character from input
    INT 21h

    ; Check if Enter (0Dh) was pressed, if not, continue to wait
    CMP AL, 0Dh
    CALL CLEAR_SCREEN
    JMP loopMenu   ; If Enter was pressed, go back to the menu
    JMP $           ; If not, keep waiting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ifNotEmpty:
    ; Display the items if they are not empty
    ; Output firstItem
    mov ah, 06h
    xor cl, cl
    xor ax, ax

    mov ah, 06h
    mov ch, 1
    mov cl, 2
    mov dh, 1
    mov dl, 40
    mov bh, 70h
    int 10h

    lea dx, outFirstItem
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, firstItem[1]
    mov firstItem[bx+2], '$'
    lea dx, firstItem + 2
    mov ah, 09h
    int 21h

    ; Output secondItem
    mov ah, 06h
    xor cl, cl
    xor ax, ax

    mov ah, 06h
    mov ch, 2
    mov cl, 2
    mov dh, 2
    mov dl, 40
    mov bh, 30h
    int 10h

    lea dx, outSecondItem
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, secondItem[1]
    mov secondItem[bx+2], '$'
    lea dx, secondItem + 2
    mov ah, 09h
    int 21h

    ; Output thirdItem
    mov ah, 06h
    xor cl, cl
    xor ax, ax

    mov ah, 06h
    mov ch, 3
    mov cl, 2
    mov dh, 3
    mov dl, 40
    mov bh, 70h
    int 10h

    lea dx, outThirdItem
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, thirdItem[1]
    mov thirdItem[bx+2], '$'
    lea dx, thirdItem + 2
    mov ah, 09h
    int 21h

    ; Output fourthItem
    mov ah, 06h
    xor cl, cl
    xor ax, ax

    mov ah, 06h
    mov ch, 4
    mov cl, 2
    mov dh, 4
    mov dl, 40
    mov bh, 30h
    int 10h

    lea dx, outFourthItem
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, fourthItem[1]
    mov fourthItem[bx+2], '$'
    lea dx, fourthItem + 2
    mov ah, 09h
    int 21h

    ; Output fifthItem
    mov ah, 06h
    xor cl, cl
    xor ax, ax

    mov ah, 06h
    mov ch, 5
    mov cl, 2
    mov dh, 5
    mov dl, 40
    mov bh, 70h
    int 10h

    lea dx, outFifthItem
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, fifthItem[1]
    mov fifthItem[bx+2], '$'
    lea dx, fifthItem + 2
    mov ah, 09h
    int 21h

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    CALL NEW_LINE
    CALL NEW_LINE

    MOV AH, 09h
    LEA DX, pressBACK
    INT 21h

    ; Wait for user to press Enter (check for Enter key: ASCII value 0Dh)
    MOV AH, 01h   ; Function to read a character from input
    INT 21h

    ; Check if Enter (0Dh) was pressed, if not, continue to wait
    CMP AL, 0Dh
    CALL CLEAR_SCREEN
    JMP loopMenu   ; If Enter was pressed, go back to the menu
    JMP $           ; If not, keep waiting

main endp

tittle proc
  ; Display all strings in one go to avoid unnecessary interrupt calls
  mov ah, 09h
  lea dx, online
  int 21h

  lea dx, programmer
  int 21h

  ; Optionally, add a new line after the title information

tittle endp






NEW_LINE PROC
  ; Output Carriage Return (CR)
  MOV DL, 0DH
  MOV AH, 02H
  INT 21H

  ; Output Line Feed (LF)
  MOV DL, 0AH
  MOV AH, 02H
  INT 21H

  RET
NEW_LINE ENDP


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

displayMenu PROC  
  ; Display menu options
    CALL NEW_LINE
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah, 09h
    mov bh, 0
    mov bl, 29h   ; BG,FG
    mov cx, 50  ; Length
    int 10h


    mov ah, 09h
    lea dx, registerNewCustomers
    int 21h
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    mov ah, 09h
    mov bh, 0
    mov bl, 29h   ; BG,FG
    mov cx, 50  ; Length
    int 10h


    mov ah, 09h
    lea dx, logInCustomers
    int 21h

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;.

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah, 09h
    mov bh, 0
    mov bl, 29h   ; BG,FG
    mov cx, 50  ; Length
    int 10h

    mov ah, 09h
    lea dx, createNewRecord
    int 21h

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    mov ah, 09h
    mov bh, 0
    mov bl, 29h   ; BG,FG
    mov cx, 50  ; Length
    int 10h

    mov ah, 09h
    lea dx, updateExistingRecord
    int 21h

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    mov ah, 09h
    mov bh, 0
    mov bl, 29h   ; BG,FG
    mov cx, 50  ; Length
    int 10h

    mov ah, 09h
    lea dx, deleteExistingRecord
    int 21h

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah, 09h
    mov bh, 0
    mov bl, 29h   ; BG,FG
    mov cx, 50  ; Length
    int 10h

    mov ah, 09h
    lea dx, viewExistingRecord
    int 21h
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ret
displayMenu ENDP

end main
