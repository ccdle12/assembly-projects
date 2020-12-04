section .data
    text db "Hello, world!",10,0

section .text
    global _start

_start:
    mov rax, text ; Move the value of text into the rax register.
    call _print ; call the _print subroutine, this will printout the string currently
                ; stored in rax.

    mov rax, 60
    mov rdi, 0
    syscall
    ret

_print:
    push rax ; Push the value of rax onto the stack, this will save
             ; the string value for later.
    mov rbx, 0 ; Move 0 to rbx, this will be used to count the length of
               ; the string.

_printLoop:
    inc rax ; Increment rax to read the the next character.
    inc rbx ; Increment rbx to track the length of the string.
    mov cl, [rax] ; Move the next value of the string into the cl register
    cmp cl, 0 ; If the character is 0, then its the end of the string.
    jne _printLoop ; Jump to the start of the routine if cl is not 0.

    mov rax, 1 ; sys_write
    mov rdi, 1 ; stdout
    pop rsi ; Pop the value on the stack into the rsi register. (the string)
    mov rdx, rbx ; Move the rbx value (incremented length in bytes) into rdx
                 ; and use that as the length of the string.
    syscall
    ret
