default: build run

build:
	@nasm -f elf64 -o print_strings.o print_strings.asm
	@ld print_strings.o -o print_strings

run:
	@./print_strings

