; Use equ to define constants
STDIN equ 0
STDOUT equ 1

SYS_READ equ 0
SYS_WRITE equ 1
SYS_EXIT equ 60

section .data
    digit db 0,10 ; store x2 bytes at [digit] - (0, 10). 10 is the new line character

section .text
    global _start

; This macro takes 0 arguements and exits the program.
%macro exit 0
    mov rax, SYS_EXIT
    mov rdi, 0
    syscall
%endmacro

; This macro takes 1 arguement, the digit that will be printed and prints
; the ASCII represenation of the digit.
%macro printDigit 1
    mov rax, %1
    call _printRAXDigit
%endmacro

_start:
    printDigit 3
    exit

_printRAXDigit:
    add rax, 48
    mov [digit], al ; Move the LSB in rax (the al register) into the memory
                    ; address of digit.

    mov rax, SYS_WRITE
    mov rdi, STDOUT
    mov rsi, digit ; Move the digit to the rsi register.
    mov rdx, 2
    syscall
    ret
