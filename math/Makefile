default: build run

build:
	@nasm -f elf64 -o math.o math.asm
	@ld math.o -o math

run:
	@./math

