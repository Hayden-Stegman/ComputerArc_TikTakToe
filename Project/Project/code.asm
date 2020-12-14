; Name: code.asm
; Date: 12/12/2020

; Description:

; Contributors: Hayden Stegman & Zachary Jones

; --------------------------------

; Function Prototypes 
printConsole PROTO 

; ---------------- Data Segment
.DATA

; Win Counter
numXwins QWORD 0
numOwins QWORD 0

; Strings
introString BYTE "Welcome to Tic Tac Toe!", 0
playAgainString BYTE "Would you like to play again? (y/n)", 0
winCounterString BYTE " Wins!", 0
exitGameString BYTE "Goodbye!", 0

; Board
board BYTE "1 | 2 | 3", 
           "---------",
           "4 | 5 | 6",
           "---------",
           "7 | 8 | 9", 0

; Array to represent the 9 Board Spaces
; 0 = Empty; 1 = X; 2 = O
boardArray BYTE 0, 0, 0,
                0, 0, 0,
                0, 0, 0


; --------------- Code Segment
.CODE

; Main Assembly Function
asmMain PROC

; Use RBX register to store the current player (O = PLAYER 1, 1 = PLAYER 2)

;push rbp        ; Set up stack frame (RBP is the stack frame pointer)
;mov rbp, rsp    ; Moves the address of the top of stack to the stack frame pointer
;sub esp, 8      ; Allocate 8-bits worth of memory for variables

;lea rax, numXwins
;push numXwins
;call printConsole   ; Call C++ Function
;add rsp, 8       ; Dereference the variable pushed to the stack (8 because QWORD)
 

ret		; Essentially Return 0
asmMain ENDP


END
