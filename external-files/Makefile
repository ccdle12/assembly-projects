default: build run

build:
	@nasm -f elf64 -o macros.o macros.asm
	@ld macros.o -o macros

run:
	@./macros

