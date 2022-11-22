bootloader.bin: bootloader.asm
	nasm bootloader.asm -f bin -o bootloader.bin

run:
	qemu-system-x86_64 bootloader.bin