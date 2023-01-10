CC=riscv64-linux-gnu-gcc
CC=riscv32-unknown-elf-gcc
CC=gcc

all:
	./patch.sh
	$(CC) -O3 -c main.c
	$(CC) -O3 -c lib.c
	$(CC) -O0 -c mul.c -o mul0.o
	$(CC) -O1 -c mul.c -o mul1.o
	$(CC) -O2 -c mul.c -o mul2.o
	$(CC) -O3 -c mul.c -o mul3.o
	$(CC) -O3 -c trans.c
	$(CC) -O3 -c sim64.c
	$(CC) -o trans.exe trans.o main.o lib.o
	$(CC) -o sim64.exe sim64.o main.o lib.o
	$(CC) -o mul0.exe mul0.o main.o lib.o
	$(CC) -o mul1.exe mul1.o main.o lib.o
	$(CC) -o mul2.exe mul2.o main.o lib.o
	$(CC) -o mul3.exe mul3.o main.o lib.o
	riscv64-linux-gnu-gcc -o riscv64.exe main.c lib.c riscv.s -static
clean:
	rm -f *.o *.exe
