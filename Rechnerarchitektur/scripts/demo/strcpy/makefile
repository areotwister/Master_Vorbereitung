all:
	riscv64-linux-gnu-gcc -S -O0 strcpy.c -o strcpy0.s
	riscv64-linux-gnu-gcc -S -O1 strcpy.c -o strcpy1.s
	riscv64-linux-gnu-gcc -S -O3 strcpy.c -o strcpy3.s
	riscv64-linux-gnu-gcc -S -O1 ptrcpy.c -o ptrcpy1.s
	riscv64-linux-gnu-gcc -S -O3 ptrcpy.c -o ptrcpy3.s
