section .data ; Define the bytes used in the program
    ; db - define bytes
    ; msg - label on the memory address of the defined bytes
    text1 db "Please enter your name: " ; 10 is the ASCII code for new line
    text2 db "Your name is "

section .bss ; This section is used to reserve data
    name resb 16 ;reserve 16 bytes in the name variable (memory address)

section .text ; Define where the code goes
    global _start ; Global defines the location of the _start label for the linker

_start: ; labels this part of code, _start is required since the linker will
        ; look for this label on entry.
    call _printText1
    call _getName
    call _printText2
    call _printName

    mov rax, 60
    mov rdi, 0
    syscall

_printText1:
    mov rax, 1
    mov rdi, 1
    mov rsi, text1
    mov rdx, 24
    syscall
    ret

_getName:
    mov rax, 0
    mov rdi, 0
    mov rsi, name
    mov rdx, 16
    syscall
    ret

_printText2:
    mov rax, 1
    mov rdi, 1
    mov rsi, text2
    mov rdx, 13
    syscall
    ret

_printName:
    mov rax, 1
    mov rax, 1
    mov rsi, name
    mov rdx, 16
    syscall
    ret
