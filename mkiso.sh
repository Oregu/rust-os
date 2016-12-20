#!/bin/sh

mkdir -p target/isofiles/boot/grub

cp grub.cfg target/isofiles/boot/grub
cp target/kernel.bin target/isofiles/boot

grub-mkrescue -o target/os.iso target/isofiles
