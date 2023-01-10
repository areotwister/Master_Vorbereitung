all:
	riscv64-linux-gnu-gcc -S -fomit-frame-pointer alloc.c -o alloc-no-fp.s
	riscv64-linux-gnu-gcc -S alloc.c -o alloc.s
	riscv64-linux-gnu-gcc alloc.c show.c -o alloc-risc-v -static
	gcc alloc.c show.c -o alloc-x86
clean:
	rm -f *.s alloc-risc-v alloc-x86
