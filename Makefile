FLAGS   = -nostartfiles -g
QEMU64	= /home/dajunhuang/plct-qemu/build/qemu-system-riscv64
QEMU32	= /home/dajunhuang/plct-qemu/build/qemu-system-riscv32

all: test64.img test32.img

# 64 bit testcase

test64.img: test64.elf
	riscv64-unknown-linux-gnu-objcopy test64.elf -I binary test64.img
	riscv64-unknown-linux-gnu-objdump -d test64.elf > test64.asm

test64.elf: test64.o link.ld Makefile
	riscv64-unknown-linux-gnu-ld -T link.ld -o test64.elf test64.o

test64.o: test64.s
	riscv64-unknown-linux-gnu-gcc $(FLAGS) -march=rv64gp -mabi=lp64d -c $< -o $@

run64: test64.img
	$(QEMU64) -cpu rv64,x-p=true -M virt -bios none -serial stdio -display none -kernel test64.img

gdb64: test64.img
	$(QEMU64) -cpu rv64,x-p=true -s -S -M virt -bios none -serial stdio -display none -kernel test64.img

# 32 bit testcase

test32.img: test32.elf
	riscv32-unknown-linux-gnu-objcopy test32.elf -I binary test32.img
	riscv32-unknown-linux-gnu-objdump -d test32.elf > test32.asm

test32.elf: test32.o link.ld Makefile
	riscv32-unknown-linux-gnu-ld -T link.ld -o test32.elf test32.o

test32.o: test32.s
	riscv32-unknown-linux-gnu-gcc $(FLAGS) -march=rv32gp -mabi=ilp32 -c $< -o $@

run32: test32.img
	$(QEMU32) -cpu rv32,x-p=true -M virt -bios none -serial stdio -display none -kernel test32.img

gdb32: test32.img
	$(QEMU32) -cpu rv32,x-p=true -s -S -M virt -bios none -serial stdio -display none -kernel test32.img

# clean

clean:
	rm -f *.o test64.elf test64.img test64.asm test64.o test32.elf test32.img test32.asm test32.o
