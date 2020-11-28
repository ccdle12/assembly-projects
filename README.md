## Install

### Ubuntu

```sh
apt-get install nasm
```

### Run

```console
make
```

### Manually Build and run

```console
nasm -f elf64 -o hello_world.o hello_world.asm
```

Link the .o file to make it executable

```console
ld hello_world.o -o hello_world
```


