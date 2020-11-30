section .data ; Define the bytes used in the program
    ; db - define bytes
    ; msg - label on the memory address of the defined bytes
    msg db "Hello world!",10 ; 10 is the ASCII code for new line

section .text ; Define where the code goes
    global _start ; Global defines the location of the _start label for the linker

_start: ; labels this part of code, _start is required since the linker will
        ; look for this label on entry.
    mov rax, 1   ; Move 1 to rax to use sys_write (sys_call)
    mov rdi, 1   ; Move 1 to rdi to enable output to stdout
    mov rsi, msg ; Move address of msg to rsi as the buffer to printout
    mov rdx, 14  ; Move 14 (the length of the buffer incl new line 10)
    syscall

    call _printHello ; Repeat the above code but in a subroutine call

    mov rax, 60  ; Move 60 to rax to use sys_exit (sys_call)
    mov rdi, 0   ; Move 0 to rdi to exit with error code of 0 (no error)
    syscall

_printHello: ; subroutine to repeat the example for printing the hello world message
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 14
    syscall
    ret

