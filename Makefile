ARCH    = riscv64-unknown-linux-gnu
CC      = $(ARCH)-gcc
FLAGS   = -nostartfiles -g
LD      = $(ARCH)-ld
OBJCOPY = $(ARCH)-objcopy
OBJDUMP = $(ARCH)-objdump
QEMU	= /home/dajunhuang/plct-qemu/build/qemu-system-riscv64


all: clean hello.img

hello.img: hello.elf
	$(OBJCOPY) hello.elf -I binary hello.img
	$(OBJDUMP) -d hello.elf > hello.asm

hello.elf: hello.o link.ld Makefile
	$(LD) -T link.ld -o hello.elf hello.o

hello.o: hello.s
	$(CC) $(FLAGS) -c $< -o $@

clean:
	rm -f *.o hello.elf hello.img hello.asm hello.o

run: hello.img
	$(QEMU) -cpu rv64,x-p=true -M virt -bios none -serial stdio -display none -kernel hello.img

gdb:
	$(QEMU) -cpu rv64,x-p=true -s -S -M virt -bios none -serial stdio -display none -kernel hello.img
