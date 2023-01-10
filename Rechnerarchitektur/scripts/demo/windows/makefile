all:
	i686-w64-mingw32-gcc sizes.c -o sizes-windows
	gcc sizes.c -o sizes-linux-intel-64
	riscv64-linux-gnu-gcc sizes.c -o sizes-riscv-64 -static
clean:
	rm -f sizes-*
