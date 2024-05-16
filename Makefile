FLAGS   = -nostartfiles -g
QEMU64	= /home/dajunhuang/plct-qemu/build/qemu-system-riscv64
QEMU32	= /home/dajunhuang/plct-qemu/build/qemu-system-riscv32

all: clean hello64.img hello32.img

# 64 bit testcase

hello64.img: hello64.elf
	riscv64-unknown-linux-gnu-objcopy hello64.elf -I binary hello64.img
	riscv64-unknown-linux-gnu-objdump -d hello64.elf > hello64.asm

hello64.elf: hello64.o link.ld Makefile
	riscv64-unknown-linux-gnu-ld -T link.ld -o hello64.elf hello64.o

hello64.o: hello64.s
	riscv64-unknown-linux-gnu-gcc $(FLAGS) -march=rv64gp -mabi=lp64d -c $< -o $@

run64: hello64.img
	$(QEMU64) -cpu rv64,x-p=true -M virt -bios none -serial stdio -display none -kernel hello64.img

gdb64: hello64.img
	$(QEMU64) -cpu rv64,x-p=true -s -S -M virt -bios none -serial stdio -display none -kernel hello64.img

# 32 bit testcase

hello32.img: hello32.elf
	riscv32-unknown-linux-gnu-objcopy hello32.elf -I binary hello32.img
	riscv32-unknown-linux-gnu-objdump -d hello32.elf > hello32.asm

hello32.elf: hello32.o link.ld Makefile
	riscv32-unknown-linux-gnu-ld -T link.ld -o hello32.elf hello32.o

hello32.o: hello32.s
	riscv32-unknown-linux-gnu-gcc $(FLAGS) -march=rv32gp -mabi=ilp32 -c $< -o $@

run32: hello32.img
	$(QEMU32) -cpu rv32,x-p=true -M virt -bios none -serial stdio -display none -kernel hello32.img

gdb32: hello32.img
	$(QEMU32) -cpu rv32,x-p=true -s -S -M virt -bios none -serial stdio -display none -kernel hello32.img

# clean

clean:
	rm -f *.o hello64.elf hello64.img hello64.asm hello64.o hello32.elf hello32.img hello32.asm hello32.o