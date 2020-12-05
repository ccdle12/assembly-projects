# x86_64 Assembly Projects

## Install

### Ubuntu 18.04

```sh
apt-get update
apt-get install nasm
```

### Run

In each folder there is a make file that will build, link and run the `.asm`
file.

```console
make
```

### Manually Build and run

Optionally you can build and run a particular file.

```console
nasm -f elf64 -o hello_world.o hello_world.asm
```

Link the .o file to make it executable

```console
ld hello_world.o -o hello_world
```


