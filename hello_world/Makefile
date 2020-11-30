default: build run

build:
	@nasm -f elf64 -o hello_world.o hello_world.asm
	@ld hello_world.o -o hello_world

run:
	@./hello_world

