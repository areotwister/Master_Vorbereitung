all:
	riscv64-linux-gnu-gcc -O3 -march=rv32i -mabi=ilp32 -S myabs.c -o myabs.rv32i.s
	riscv64-linux-gnu-gcc -O3 -march=rv64i -mabi=lp64 -S myabs.c -o myabs.rv64i.s
	#riscv64-linux-gnu-gcc -O3 -march=rv32i -mabi=ilp32 main.c myabs.c -o myabs.rv32i -static
	riscv64-linux-gnu-gcc -O3 main.c myabs.c -o myabs.rv64i -static
clean:
	rm -f myabs.rv32i myabs.rv64i *.o *.s
