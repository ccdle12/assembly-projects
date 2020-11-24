## Install

### Ubuntu

```sh
apt-get install nasm
```

### Running

```
nasm -f elf64 -o hell_world.o hello_world.asm
```

Link the .o file to make it executable

```sh
ld hello_world.o -o hello_world
```
