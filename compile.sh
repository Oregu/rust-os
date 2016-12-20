#!/bin/sh

mkdir -p target

nasm -f elf64 -o target/multiboot_header.o multiboot_header.asm
nasm -f elf64 -o target/boot.o boot.asm
ld -n -o target/kernel.bin -T linker.ld target/multiboot_header.o target/boot.o
