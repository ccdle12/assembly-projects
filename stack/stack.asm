section .data
    digit db 0,10 ; store x2 bytes at [digit] - (0, 10). 10 is the new line character

section .text
    global _start

_start:
    push 4
    push 8
    push 3

    pop rax
    call _printRAXDigit
    pop rax
    call _printRAXDigit
    pop rax
    call _printRAXDigit

    mov rax, 60
    mov rdi, 0
    syscall
    ret

_printRAXDigit:
    add rax, 48 ; Add 48 to rax. 48 is the ASCII number for 0. So whatever is
                ; in rax, for example 6 will have 48 added to it equaling 54.
		; The current value at rax is 56, which is the ASCII representation
		; of 6.

    mov [digit], al ; move the al register, which is the first byte of rax into
                    ; the memory address of digit. Digit is defined with 2 bytes
		    ; so al will replace the least significant bit in digit.
		    ; In digit, 0 will be replaced but 10, the new line character
		    ; won't be replaced.

    ; Print out the 2 bytes found in digit.
    mov rax, 1 ; sys_write
    mov rdi, 1 ; stdout
    mov rsi, digit
    mov rdx, 2
    syscall
    ret
