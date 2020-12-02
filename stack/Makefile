default: build run

build:
	@nasm -f elf64 -o stack.o stack.asm
	@ld stack.o -o stack

run:
	@./stack

