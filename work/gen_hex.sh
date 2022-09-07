riscv32-unknown-elf-gcc -g -ffreestanding -O0 -Wl,--gc-sections -nostartfiles -nostdlib -nodefaultlibs -Wl,-T,riscv32-virt.ld crt0.s test.c
~/usys/riscv/riscv32-unknown-elf.gcc-12.1.0/bin/riscv32-unknown-elf-objdump -d a.out
readelf -x.init a.out > init.txt
readelf -x.text a.out > text.txt
readelf -x.rodata a.out > rodata.txt
python3 gen_hex.py