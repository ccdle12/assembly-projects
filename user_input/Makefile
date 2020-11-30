default: build run

build:
	@nasm -f elf64 -o user_input.o user_input.asm
	@ld user_input.o -o user_input

run:
	@./user_input

