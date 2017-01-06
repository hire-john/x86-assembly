csandbox: csandbox.o
	ld -o csandbox csandbox.o
csandbox.o: csandbox.asm
	nasm -f elf -g -F stabs csandbox.asm -l csandbox.1st