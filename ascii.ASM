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
      msg db '              ________                                          ',13,10
          db    '          /  _____/______  ____   ____  ___________ ___.__. ',13,10
          db    '          /   \  __\_  __ \/  _ \_/ ___\/ __ \_  __ <   |  | ',13,10
          db    '          \    \_\  \  | \(  <_> )  \__\  ___/|  | \/\\___  | ',13,10
          db    '           \______  /__|   \____/ \___  >___  >__|   / ____| ',13,10
          db    '                  \/                  \/    \/       \/       ',13,10, '$'
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mainMenuMSG     db '  __  __       _         __  __                   ',13,10
                    db ' |  \/  | __ _(_)_ __   |  \/  | ___ _ __  _   _ ',13,10
                    db ' | |\/| |/ _` | | ''_ \  | |\/| |/ _ \ ''_ \| | | |',13,10
                    db ' | |  | | (_| | | | | | | |  | |  __/ | | | |_| |',13,10
                    db ' |_|  |_|\__,_|_|_| |_| |_|  |_|\___|_| |_|\__,_|',13,10, '$'
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    shop        db '                        ...                  ',13,10
                db '                      ........               ',13,10
                db '                      .:   ...               ',13,10
                db '                  .-============-.          ',13,10
                db '                  .--------------:          ',13,10
                db '                  .--------------:          ',13,10
                db '                  .--------------:          ',13,10
                db '                  .--------------:          ',13,10
                db '                  .--------------:          ',13,10
                db '                  .--------------:          ',13,10
                db '                  .--------------:          ',13,10
                db '                  ................          ',13,10, '$'
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
    invTory db '    ____                      __                   ', 13, 10
            db '   /  _/___ _   _____  ____  / /_____  _______  __', 13, 10
            db '   / // __ \ | / / _ \/ __ \/ __/ __ \/ ___/ / / /', 13, 10
            db ' _/ // / / / |/ /  __/ / / / /_/ /_/ / /  / /_/ / ', 13, 10
            db '/___/_/ /_/|___/\___/_/ /_/\__/\____/_/   \__, /  ', 13, 10
            db '                                         /____/    ', 13, 10, '$'
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
doYouHave   db '            ______       __   __             _   _   ___  _   _ _____ ',13,10
            db '            |  _  \      \ \ / /            | | | | / _ \| | | |  ___|',13,10
            db '            | | | |___    \ V /___  _   _   | |_| |/ /_\ \ | | | |__  ',13,10
            db '            | | | / _ \    \ // _ \| | | |  |  _  ||  _  | | | |  __| ',13,10
            db '            | |/ / (_) |   | | (_) | |_| |  | | | || | | \ \_/ / |___ ',13,10
            db '            |___/ \___/    \_/\___/ \__,_|  \_| |_/\_| |_/\___/\____/ ',13,10,'$'
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 acc db '              ___           ___                            _  ___  ',13,10
    db '             / _ \         / _ \                          | ||__ \ ',13,10
    db '            / /_\ \_ __   / /_\ \ ___ ___ ___  _   _ _ __ | |_  ) |',13,10
    db '            |  _  | ''_ \  |  _  |/ __/ __/ _ \| | | | ''_ \| __|/ / ',13,10
    db '            | | | | | | | | | | | (_| (_| (_) | |_| | | | | |_|_|  ',13,10
    db '            \_| |_/_| |_| \_| |_/\___\___\___/ \__,_|_| |_|\__(_)  ',13,10,'$'
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
userMSG db ' _  _  ____  ____  ____                                           ', 13, 10
    db'/ )( \/ ___)(  __)(  _ \                                          ', 13, 10
    db') \/ (\___ \ ) _)  )   /                                          ', 13, 10
    db'\____/(____/(____)(__\_)                                          ', 13, 10
    db'____  ____  ___  __  ____  ____  ____   __  ____  __  __   __ _ ', 13, 10
    db'(  _ \(  __)/ __)(  )/ ___)(_  _)(  _ \ / _\(_  _)(  )/  \ (  ( \', 13, 10
    db')   / ) _)( (_ \ )( \___ \  )(   )   //    \ )(   )((  O )/    /', 13, 10
    db'(__\_)(____)\___/(__)(____/ (__) (__\_)\_/\_/(__) (__)\__/ \_)__)', 13, 10, '$'
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  online db ' CITU - Grocery Items Inventory System $'
  programmer db 0ah, ' Programmer: JOSHUA D. ARCO ',13,10,'$'
  date db 0ah, ' Date(Written): NOV. 22, 2024$'

  registerNewCustomers db '1.Register new customers                                 ',13,10,'$';
  logInCustomers db '2.Log in customers                                             ',13,10,'$';
  createNewRecord db '3.Create new Inventory                                        ',13,10,'$';
  updateExistingRecord db '4.Update existing Inventory                                  ',13,10,'$';
  deleteExistingRecord db '5.Delete existing Inventory                                  ',13,10,'$';
  viewExistingRecord db '6.View existing Inventory                                      ',13,10,'$';
  exit db '7.Exit Program                                         ',13,10,'$';
  space db '                      $'

  choice db 'Enter your choice: $'
  choice2 db 13,10,10,'            Enter Y for YES and N for NO: $'
  thankk db 'Thank you for using the program :)$';
  chooseUpdate db 'Choose Which Item do you want to update? (1-5): $'
  enterNewItem db 13,10,'Enter name of the item to replace $: $$$',0
  colon db ':$'
  chooseDelete db 'Choose Which Item do you want to delete? (1-5): $';
  success db 'Item has been successfully deleted!',13,10,'$'
  accSucc db 13, 10, 'Registration Successful!$'
  success_msg db 13,10,"Login Successful!$"
  failure_msg db 13,10,"Invalid Login!$"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


  promptUserNameLogIn db "Enter username: $"
  promptPasswordLogIn db 13,10,"Enter password: $"

  promptUsername db 13,10,'Enter username: $'
  promptPassword db 13,10,'Enter password: $'
  promptConfirmPass db 13,10,'Confirm password: $'

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
  isEmpty DB '           LIST/INVENTORY IS EMPTY! PLEASE ADD SOME$'
  pressEnter2 DB '            PRESS ENTER TO CONTINUE!$',13,10
  password_mismatch db 'Passwords do not match. Please try again.$', 13, 10, '$'
  Ast     db "*$"
 ; Variables;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                DB ?

  logIn_username db 100 dup('$')
  logIn_password db 100 dup('$')

  checkUser db 13,10,'Username: $'
  checkPass db 13,10,'Password: $'
  stored_username db 100 dup('$')
  stored_password db 100 dup('$')


  username db 100,?, 100 dup('$');4 registration
  password  db 100,?, 100 dup('$');4 registration
  confirmPass  db 100,?, 100 dup('$');4 registration

  logInUsername db 100, ?, 100 dup(' '); 4 login
  logInPassword db 100, ?, 100 dup(' '); 4 login

  firstItem db 100, ?, 100 dup(' ');4 creation
  secondItem db 100, ?, 100 dup(' ');4 creation
  thirdItem db 100, ?, 100 dup(' ');4 creation
  fourthItem db 100, ?, 100 dup(' ');4 creation
  fifthItem db 100, ?, 100 dup(' ');4 creation

  newFirstItem db 100 dup('$');4 update 
  newSecondItem db 100 dup('$');4 update 
  newThirdItem db 100 dup('$');4 update 
  newFourthItem db 100 dup('$');4 update 
  newFifthItem db 100 dup('$');4 update 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.code
main proc
  mov ax, @data
  mov ds, ax
  ; Clear the screen before anything is displayed 
  CALL CLEAR_SCREEN

 
    xor al, al
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

askAccount:
    CALL CLEAR_SCREEN
    CALL askIfAccExists

    mov ah, 09h
    lea dx, choice2
    int 21h

    ; Get user input (choice)
    MOV AH, 01H
    INT 21H
    
    CMP AL,'Y'
    JE userLogInCALL
    CMP AL,'y'
    JE userLogInCALL
    CMP AL,'N'
    JE userRegistrationCALL
    CMP AL,'n'
    JE userRegistrationCALL
    ; Invalid choice
    MOV DL, 0DH
    MOV AH, 02H
    INT 21H

    MOV DL, 0AH
    INT 21H

    CALL NEW_LINE    

    CALL spacing
    CALL spacing
    CALL spacing
    CALL spacing
    CALL spacing
    CALL spacing
    CALL spacing
    CALL spacing
    CALL spacing
    CALL spacing
    CALL spacing
    CALL spacing
    
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
    LEA DX, pressEnter2
    INT 21h

    ; Wait for user to press Enter (check for Enter key: ASCII value 0Dh)
    MOV AH, 01h   ; Function to read a character from input
    INT 21h

    ; Check if Enter (0Dh) was pressed, if not, continue to wait
    CMP AL, 0Dh
    CALL CLEAR_SCREEN
    JZ askAccount   ; If Enter was pressed, go back to the menu
    JMP $         ; If not, keep waiting

userRegistrationCALL:
    CALL userRegistrationFUNCTION
userLogInCALL:
    CALL userLogInFUNCTION

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
  CMP AL, '7'
  JZ exit_the_programCALL

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

createNewCALL:  
    CALL CLEAR_SCREEN
    CALL createNewFunction
  

updateExistingRecordCALL:
  ; Display "Update Existing Record" and end the program
    CALL CLEAR_SCREEN
    CALL updateExistingRecordFUNCTION


deleteExistingRecordCALL:
  ; Display "Delete Existing Record" and end the program
    CALL CLEAR_SCREEN
    CALL deleteExistingRecordFunction

viewExistingRecordCALL:
    CALL CLEAR_SCREEN
    CALL viewExistingRecordFunction

exit_the_programCALL:
    CALL exitProgramFunction



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
     ; Initialize total length sum to 0
    CALL checkIfLengthisZero

    cmp dl, 0              ; Compare the total length with zero
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
    CALL waitUserToPressEnter

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ifNotEmpty:
    ; Display the items if they are not empty
    ; Output firstItem
    CALL displayITEMS
    CALL NEW_LINE
    CALL NEW_LINE

    MOV AH, 09h
    LEA DX, pressBACK
    INT 21h

    ; Wait for user to press Enter (check for Enter key: ASCII value 0Dh)
    CALL waitUserToPressEnter


updateExistingRecordFUNCTION:

    CALL checkIfLengthisZero
    cmp dl, 0              ; Compare the total length with zero
    jz ifWala           ; If zero, jump to the "kungEmpty" label

    ; If not empty, display items
    jmp ifNaaySud          ; Jump to handle the non-empty case

ifWala:
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
    CALL waitUserToPressEnter

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ifNaaySud:
    ; Display the items if they are not empty
    ; Output firstItem
    CALL displayITEMS
    CALL NEW_LINE
    CALL NEW_LINE
    
    mov ah, 09h
    lea dx, chooseUpdate
    int 21h

    MOV AH, 01H ; get USER INPUT
    INT 21h 
    CMP AL, '1'
    JE updateFirstItemCALL
    CMP AL, '2'
    JE updateSecondItemCALL
    CMP AL, '3'
    JE updateThirdItemCALL
    CMP AL, '4'
    JE updateFourthItemCALL
    CMP Al, '5'
    JE updateFifthItemCALL
  ;;;;;;;;;;;;;;;;;;;;;;;;;; Invalid choice
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
    JZ ifNaaySud   ; If Enter was pressed, go back to the menu
    JMP $         ; If not, keep waiting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
updateFirstItemCALL:
    CALL updateFirstItemFunction
updateSecondItemCALL:
    CALL updateSecondItemFunction
updateThirdItemCALL:
    CALL updateThirdItemFunction
updateFourthItemCALL:
    CALL updateFourthItemFunction
updateFifthItemCALL:
    CALL updateFifthItemFunction
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

deleteExistingRecordFunction:
    CALL checkIfLengthisZero
    cmp dl, 0              ; Compare the total length with zero
    jz ifThyScrollBeBarren           ; If zero, jump to the "kungEmpty" label

    ; If not empty, display items
    jmp ifThyScrollBeNotBarren          ; Jump to handle the non-empty case

ifThyScrollBeBarren:
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
    CALL waitUserToPressEnter

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ifThyScrollBeNotBarren:

    CALL displayITEMS
    CALL NEW_LINE
    CALL NEW_LINE
    
    mov ah, 09h
    lea dx, chooseDelete
    int 21h

    MOV AH, 01H ; get USER INPUT
    INT 21h 

    CMP AL, '1'
    JE deleteFirstItemCALL
    CMP AL, '2'
    JE deleteSecondItemCALL
    CMP AL, '3'
    JE deleteThirdItemCALL
    CMP AL, '4'
    JE deleteFourthItemCALL
    CMP AL, '5'
    JE deleteFifthItemCALL
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Invalid choice
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
    JZ ifThyScrollBeNotBarren   ; If Enter was pressed, go back to the menu
    JMP $         ; If not, keep waiting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  deleteFirstItemCALL:
    CALL deleteFirstItemFunction
  deleteSecondItemCALL:
    CALL deleteSecondItemFunction
  deleteThirdItemCALL:
    CALL deleteThirdItemFunction
  deleteFourthItemCALL:
    CALL deleteFourthItemFunction
  deleteFifthItemCALL:
    CALL deleteFifthItemFunction

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

exitProgramFunction:
    MOV DL, 0DH         ; Carriage return
    MOV AH, 02H         ; Print character
    INT 21H
    MOV DL, 0AH         ; Line feed
    INT 21H

    LEA DX, thankk      ; Load address of the thank-you message
    MOV AH, 09H         ; Display string
    INT 21H

    MOV AH, 4CH         ; Exit program
    INT 21H
main endp

checkIfLengthisZero PROC 
xor dx, dx            ; dx will hold the total length (initialize to 0)

    ; Check firstItem
    lea si, firstItem + 1 ; Point to the actual input (buffer starts at +1)
    mov al, [si]          ; Get the length of the string (first byte)
    add dl, al            ; Add the length to the total sum (stored in DL)

    ; Check secondItem
    lea si, secondItem + 1 ; Point to the actual input (buffer starts at +1)
    mov al, [si]           ; Get the length of the string (first byte)
    add dl, al             ; Add the length to the total sum

    ; Check thirdItem
    lea si, thirdItem + 1  ; Point to the actual input (buffer starts at +1)
    mov al, [si]           ; Get the length of the string (first byte)
    add dl, al             ; Add the length to the total sum

    ; Check fourthItem
    lea si, fourthItem + 1 ; Point to the actual input (buffer starts at +1)
    mov al, [si]           ; Get the length of the string (first byte)
    add dl, al             ; Add the length to the total sum

    ; Check fifthItem
    lea si, fifthItem + 1  ; Point to the actual input (buffer starts at +1)
    mov al, [si]           ; Get the length of the string (first byte)
    add dl, al             ; Add the length to the total sum

    ret
checkIfLengthisZero ENDP

updateFirstItemFunction PROC
    CALL NEW_LINE

    mov ah, 09h
    lea dx, enterNewItem
    int 21h

    ; Print the current first item
    xor bx, bx
    mov bl, firstItem[1]
    mov firstItem[bx+2], '$'
    lea dx, firstItem + 2
    mov ah, 09h
    int 21h

    mov ah, 09h
    lea dx, colon
    int 21h  ; Print the colon

    ; Take input for the new firstItem
    mov ah, 0ah
    lea dx, newFirstItem
    int 21h

    ; Start copying the new input into the firstItem string
    lea si, newFirstItem + 2    ; Start of the new string (skip max and actual length bytes)
    lea di, firstItem + 2       ; Start of the current string (skip max and actual length bytes)
    mov al, newFirstItem[1]  ; Get the length of the new string (from byte 2 in newFirstItem)
    MOV [firstItem + 1], AL     ; Update the actual length in firstItem
    mov cl, al                  ; Move length into CL register (lower byte of CX)
COPY_STRING:
    mov al, [si]   ; Get the current character from the new string
    cmp al, '$'     ; Compare with null terminator ('$')
    je END_COPY     ; If '$' is found, jump to END_COPY
    mov [di], al    ; Copy it to the current string
    inc si          ; Move to the next character in the new string
    inc di          ; Move to the next position in the current string
    loop COPY_STRING ; Repeat for all characters

END_COPY:
    ; Add null terminator to the updated string
    mov byte ptr [di], '$'

    CALL NEW_LINE

    LEA DX, pressEnter      
    MOV AH, 09H         ; Display string
    INT 21H

    CALL waitUserToPressEnter
updateFirstItemFunction ENDP

updateSecondItemFunction PROC
    CALL NEW_LINE

    mov ah, 09h
    lea dx, enterNewItem
    int 21h

    ; Print the current first item
    xor bx, bx
    mov bl, secondItem[1]
    mov secondItem[bx+2], '$'
    lea dx, secondItem + 2
    mov ah, 09h
    int 21h

    mov ah, 09h
    lea dx, colon
    int 21h  ; Print the colon

    ; Take input for the new firstItem
    mov ah, 0ah
    lea dx, newSecondItem
    int 21h

    ; Start copying the new input into the firstItem string
    lea si, newSecondItem + 2    ; Start of the new string (skip max and actual length bytes)
    lea di, secondItem + 2       ; Start of the current string (skip max and actual length bytes)
    mov al, newSecondItem[1]  ; Get the length of the new string (from byte 2 in newFirstItem)
    MOV [secondItem + 1], AL     ; Update the actual length in firstItem
    mov cl, al                  ; Move length into CL register (lower byte of CX)
COPY_STRING2:
    mov al, [si]   ; Get the current character from the new string
    cmp al, '$'     ; Compare with null terminator ('$')
    je END_COPY2     ; If '$' is found, jump to END_COPY
    mov [di], al    ; Copy it to the current string
    inc si          ; Move to the next character in the new string
    inc di          ; Move to the next position in the current string
    loop COPY_STRING2 ; Repeat for all characters

END_COPY2:
    ; Add null terminator to the updated string
    mov byte ptr [di], '$'

    CALL NEW_LINE

    LEA DX, pressEnter      
    MOV AH, 09H         ; Display string
    INT 21H

    CALL waitUserToPressEnter
updateSecondItemFunction ENDP

updateThirdItemFunction PROC
    CALL NEW_LINE

    mov ah, 09h
    lea dx, enterNewItem
    int 21h

    ; Print the current first item
    xor bx, bx
    mov bl, thirdItem[1]
    mov thirdItem[bx+2], '$'
    lea dx, thirdItem + 2
    mov ah, 09h
    int 21h

    mov ah, 09h
    lea dx, colon
    int 21h  ; Print the colon

    ; Take input for the new firstItem
    mov ah, 0ah
    lea dx, newThirdItem
    int 21h

    ; Start copying the new input into the firstItem string
    lea si, newThirdItem + 2    ; Start of the new string (skip max and actual length bytes)
    lea di, thirdItem + 2       ; Start of the current string (skip max and actual length bytes)
    mov al, newThirdItem[1]  ; Get the length of the new string (from byte 2 in newFirstItem)
    MOV [thirdItem + 1], AL     ; Update the actual length in firstItem
    mov cl, al                  ; Move length into CL register (lower byte of CX)
COPY_STRING3:
    mov al, [si]   ; Get the current character from the new string
    cmp al, '$'     ; Compare with null terminator ('$')
    je END_COPY3     ; If '$' is found, jump to END_COPY
    mov [di], al    ; Copy it to the current string
    inc si          ; Move to the next character in the new string
    inc di          ; Move to the next position in the current string
    loop COPY_STRING3 ; Repeat for all characters

END_COPY3:
    ; Add null terminator to the updated string
    mov byte ptr [di], '$'

    CALL NEW_LINE

    LEA DX, pressEnter      
    MOV AH, 09H         ; Display string
    INT 21H

    CALL waitUserToPressEnter
updateThirdItemFunction ENDP

updateFourthItemFunction PROC
    CALL NEW_LINE

    mov ah, 09h
    lea dx, enterNewItem
    int 21h

    ; Print the current first item
    xor bx, bx
    mov bl, fourthItem[1]
    mov fourthItem[bx+2], '$'
    lea dx, fourthItem + 2
    mov ah, 09h
    int 21h

    mov ah, 09h
    lea dx, colon
    int 21h  ; Print the colon

    ; Take input for the new firstItem
    mov ah, 0ah
    lea dx, newFourthItem
    int 21h

    ; Start copying the new input into the firstItem string
    lea si, newFourthItem + 2    ; Start of the new string (skip max and actual length bytes)
    lea di, fourthItem + 2       ; Start of the current string (skip max and actual length bytes)
    mov al, newFourthItem[1]  ; Get the length of the new string (from byte 2 in newFirstItem)
    MOV [fourthItem + 1], AL     ; Update the actual length in firstItem
    mov cl, al                  ; Move length into CL register (lower byte of CX)
COPY_STRING4:
    mov al, [si]   ; Get the current character from the new string
    cmp al, '$'     ; Compare with null terminator ('$')
    je END_COPY4    ; If '$' is found, jump to END_COPY
    mov [di], al    ; Copy it to the current string
    inc si          ; Move to the next character in the new string
    inc di          ; Move to the next position in the current string
    loop COPY_STRING4 ; Repeat for all characters

END_COPY4:
    ; Add null terminator to the updated string
    mov byte ptr [di], '$'

    CALL NEW_LINE

    LEA DX, pressEnter      
    MOV AH, 09H         ; Display string
    INT 21H

    CALL waitUserToPressEnter
updateFourthItemFunction ENDP

updateFifthItemFunction PROC
    CALL NEW_LINE

    mov ah, 09h
    lea dx, enterNewItem
    int 21h

    ; Print the current first item
    xor bx, bx
    mov bl, fifthItem[1]
    mov fifthItem[bx+2], '$'
    lea dx, fifthItem + 2
    mov ah, 09h
    int 21h

    mov ah, 09h
    lea dx, colon
    int 21h  ; Print the colon

    ; Take input for the new firstItem
    mov ah, 0ah
    lea dx, newFifthItem
    int 21h

    ; Start copying the new input into the firstItem string
    lea si, newFifthItem + 2    ; Start of the new string (skip max and actual length bytes)
    lea di, fifthItem + 2       ; Start of the current string (skip max and actual length bytes)
    mov al, newFifthItem[1]  ; Get the length of the new string (from byte 2 in newFirstItem)
    MOV [fifthItem + 1], AL     ; Update the actual length in firstItem
    mov cl, al                  ; Move length into CL register (lower byte of CX)
COPY_STRING5:
    mov al, [si]   ; Get the current character from the new string
    cmp al, '$'     ; Compare with null terminator ('$')
    je END_COPY5    ; If '$' is found, jump to END_COPY
    mov [di], al    ; Copy it to the current string
    inc si          ; Move to the next character in the new string
    inc di          ; Move to the next position in the current string
    loop COPY_STRING5 ; Repeat for all characters

END_COPY5:
    ; Add null terminator to the updated string
    mov byte ptr [di], '$'

    CALL NEW_LINE

    LEA DX, pressEnter      
    MOV AH, 09H         ; Display string
    INT 21H

    CALL waitUserToPressEnter
updateFifthItemFunction ENDP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
deleteFirstItemFunction PROC 

    ; Set the length byte (second byte) to 0 to indicate that the string is empty
    mov byte ptr [firstItem + 1], 0  ; Set the actual length of the string to 0

    ; Optionally, clear the string content as well
    lea di, firstItem + 2   ; Start at the position where the string starts
CLEAR_STRING_LOOP:
    mov byte ptr [di], 0         ; Clear each byte
    inc di
    cmp byte ptr [di], '$'       ; If we reach the null terminator, stop
    je END_CLEAR
    jmp CLEAR_STRING_LOOP
END_CLEAR:
    CALL NEW_LINE

    LEA DX, success      
    MOV AH, 09H         
    INT 21H

    LEA DX, pressEnter      
    MOV AH, 09H         ; Display string
    INT 21H

    CALL waitUserToPressEnter
deleteFirstItemFunction ENDP

deleteSecondItemFunction PROC 

    ; Set the length byte (second byte) to 0 to indicate that the string is empty
    mov byte ptr [secondItem + 1], 0  ; Set the actual length of the string to 0

    ; Optionally, clear the string content as well
    lea di, secondItem + 2   ; Start at the position where the string starts
CLEAR_STRING_LOOP2:
    mov byte ptr [di], 0         ; Clear each byte
    inc di
    cmp byte ptr [di], '$'       ; If we reach the null terminator, stop
    je END_CLEAR2
    jmp CLEAR_STRING_LOOP2
END_CLEAR2:
    CALL NEW_LINE

    LEA DX, success      
    MOV AH, 09H         
    INT 21H

    LEA DX, pressEnter      
    MOV AH, 09H         ; Display string
    INT 21H

    CALL waitUserToPressEnter
deleteSecondItemFunction ENDP

deleteThirdItemFunction PROC 
    ; Set the length byte (second byte) to 0 to indicate that the string is empty
    mov byte ptr [thirdItem + 1], 0  ; Set the actual length of the string to 0

    ; Optionally, clear the string content as well
    lea di, thirdItem + 2   ; Start at the position where the string starts
CLEAR_STRING_LOOP3:
    mov byte ptr [di], 0         ; Clear each byte
    inc di
    cmp byte ptr [di], '$'       ; If we reach the null terminator, stop
    je END_CLEAR
    jmp CLEAR_STRING_LOOP3
END_CLEAR3:
    CALL NEW_LINE

    LEA DX, success      
    MOV AH, 09H         
    INT 21H

    LEA DX, pressEnter      
    MOV AH, 09H         ; Display string
    INT 21H

    CALL waitUserToPressEnter
deleteThirdItemFunction ENDP

deleteFourthItemFunction PROC 

    ; Set the length byte (second byte) to 0 to indicate that the string is empty
    mov byte ptr [fourthItem + 1], 0  ; Set the actual length of the string to 0

    ; Optionally, clear the string content as well
    lea di, fourthItem + 2   ; Start at the position where the string starts
CLEAR_STRING_LOOP4:
    mov byte ptr [di], 0         ; Clear each byte
    inc di
    cmp byte ptr [di], '$'       ; If we reach the null terminator, stop
    je END_CLEAR4
    jmp CLEAR_STRING_LOOP4
END_CLEAR4:
    CALL NEW_LINE

    LEA DX, success      
    MOV AH, 09H         
    INT 21H

    LEA DX, pressEnter      
    MOV AH, 09H         ; Display string
    INT 21H

    CALL waitUserToPressEnter
deleteFourthItemFunction ENDP

deleteFifthItemFunction PROC 

    ; Set the length byte (second byte) to 0 to indicate that the string is empty
    mov byte ptr [fifthItem + 1], 0  ; Set the actual length of the string to 0

    ; Optionally, clear the string content as well
    lea di, fifthItem + 2   ; Start at the position where the string starts
CLEAR_STRING_LOOP5:
    mov byte ptr [di], 0         ; Clear each byte
    inc di
    cmp byte ptr [di], '$'       ; If we reach the null terminator, stop
    je END_CLEAR5
    jmp CLEAR_STRING_LOOP5
END_CLEAR5:
    CALL NEW_LINE

    LEA DX, success      
    MOV AH, 09H         
    INT 21H

    LEA DX, pressEnter      
    MOV AH, 09H         ; Display string
    INT 21H

    CALL waitUserToPressEnter
deleteFifthItemFunction ENDP

waitUserToPressEnter PROC 

    MOV AH, 01h   ; Function to read a character from input
    INT 21h

    ; Check if Enter (0Dh) was pressed, if not, continue to wait
    CMP AL, 0Dh
    CALL CLEAR_SCREEN
    JMP loopMenu   ; If Enter was pressed, go back to the menu
    JMP $           ; If not, keep waiting

waitUserToPressEnter ENDP 

tittle proc
  ; Display all strings in one go to avoid unnecessary interrupt calls
  mov ah, 09h
  lea dx, online
  int 21h

  lea dx, programmer
  int 21h

  ; Optionally, add a new line after the title information
  ret
tittle endp

spacing proc
    mov dl, ' '         ; ASCII value for space
    mov ah, 02h         ; DOS function to display a single character
    int 21h             ; Call DOS interrupt
    ret                 ; Return to caller
spacing endp

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

displayITEMS PROC 
    lea dx, invTory
    mov ah, 09h
    int 21h

    mov ah, 06h
    xor cl, cl
    xor ax, ax

    mov ah, 06h
    mov ch, 7
    mov cl, 2
    mov dh, 7
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
    mov ch, 8
    mov cl, 2
    mov dh, 8
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
    mov ch, 9
    mov cl, 2
    mov dh, 9
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
    mov ch, 10
    mov cl, 2
    mov dh, 10
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
    mov ch, 11
    mov cl, 2
    mov dh, 11
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

  ret
displayITEMS ENDP 

askIfAccExists PROC      
    mov ah, 09h
    lea dx, doYouHave
    int 21h

    CALL NEW_LINE

    mov ah, 09h
    lea dx, acc
    int 21h

    ret
askIfAccExists ENDP     

;;so many bug
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

    ; Store the username to the stored_username variable
    lea si, username + 2      ; Point to the beginning of the actual username input
    lea di, stored_username   ; Point to stored_username variable

    ; Copy username to stored_username
    copy_username:
        mov al, [si]
        cmp al, '$'          ; Check for end of string
        je username_done
        mov [di], al
        inc si
        inc di
        jmp copy_username

    username_done:

    ; Insert blank line
    CALL NEW_LINE

input_passwords:    ; Label to loop if passwords do not match
    ; Clear the password and confirm password buffers before new input
    CALL clear_password_buffer
    CALL clear_confirm_password_buffer

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
    lea si, password + 2           ; point to the first password
    lea di, confirmPass + 2       ; point to the confirm password
    call compare_lengths
    jc passwords_mismatch2     ; Jump to mismatch if lengths differ

    ; Compare both passwords
    lea si, password  + 2         ; point to the first password
    lea di, confirmPass  + 2      ; point to the confirm password
    mov cx, 100                ; maximum characters to compare
    call compare_passwords

    ; If passwords match, store the password in the stored_password variable
    lea si, password + 2       ; point to the beginning of the password input
    lea di, stored_password    ; point to stored_password variable

    ; Copy password to stored_password
    copy_password:
        mov al, [si]
        cmp al, '$'           ; Check for end of string
        je password_done
        mov [di], al
        inc si
        inc di
        jmp copy_password

    password_done:

    ; If passwords match, proceed to success message
    lea dx, accSucc
    mov ah, 09h
    int 21h

    ; Exit
    MOV AH, 01h   ; Function to read a character from input
    INT 21h

    ; Check if Enter (0Dh) was pressed, if not, continue to wait
    CMP AL, 0Dh
    CALL CLEAR_SCREEN
    JMP askAccount   ; If Enter was pressed, go back to ask account
    JMP $           ; If not, keep waiting

passwords_mismatch2:
    ; Display mismatch message and prompt to re-enter password
    lea dx, password_mismatch
    mov ah, 09h
    int 21h

    ; Re-enter password and confirmation (without asking for username)
    jmp input_passwords

; Function to clear a buffer (set all bytes to zero)
clear_password_buffer proc
    ; Clear the password buffer
    lea di, password + 2
    mov cx, 100
clearPass:
    mov byte ptr [di], 0       ; Clear each byte
    inc di
    loop clearPass
    ret
clear_password_buffer endp

clear_confirm_password_buffer proc
    ; Clear the confirm password buffer
    lea di, confirmPass + 2
    mov cx, 100
clearConfirmPass:
    mov byte ptr [di], 0       ; Clear each byte
    inc di
    loop clearConfirmPass
    ret
clear_confirm_password_buffer endp

; Function to compare the lengths of two strings
compare_lengths proc
    lea si, password
    lea di, confirmPass
    xor ax, ax              ; Clear AX (length counter)

compare_length_loop:
    cmp byte ptr [si], '$'
    je length_check_done     ; If end of string, stop
    inc si
    inc ax
    jmp compare_length_loop

length_check_done:
    mov bx, ax               ; Store password length in BX

    lea si, confirmPass
    xor ax, ax               ; Clear AX again (length counter)

compare_confirm_length_loop:
    cmp byte ptr [si], '$'
    je compare_length_done   ; If end of string, stop
    inc si
    inc ax
    jmp compare_confirm_length_loop

compare_length_done:
    cmp ax, bx
    je lengths_match         ; If lengths match, continue
    jc passwords_mismatch2   ; If lengths don't match, jump to mismatch

lengths_match:
    ret
compare_lengths endp

; Function to compare two passwords
compare_passwords proc
    mov al, [si]             ; Load byte from password into AL
    cmp al, '$'              ; Check for string termination ($)
    je password_matchs      ; If null terminator, passwords match
    cmp al, [di]             ; Compare with byte from confirm password
    jne passwords_mismatch2   ; Jump to mismatch if not equal
    inc si                   ; Move to the next character
    inc di
    loop compare_passwords        ; Repeat the loop
password_matchs:
    ret
compare_passwords endp
userRegistrationFUNCTION ENDP


userLogInFUNCTION PROC 
    CALL CLEAR_SCREEN
    lea dx, checkUser
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, username[1]
    mov username[bx+2], '$'
    lea dx, username + 2
    mov ah, 09h
    int 21h

    CALL NEW_LINE

    CALL NEW_LINE

    lea dx, checkPass
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, password[1]
    mov password[bx+2], '$'
    lea dx, password + 2
    mov ah, 09h
    int 21h


    CALL waitUserToPressEnter
userLogInFUNCTION ENDP








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
    mov ah, 09h
    mov bh, 0
    mov bl, 29h   ; BG,FG
    mov cx, 50  ; Length
    int 10h

    mov ah, 09h
    lea dx, exit
    int 21h
    ret
displayMenu ENDP
end main