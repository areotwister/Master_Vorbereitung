CC=clang -Wall -O3
CC=gcc -Wall -O3
all:
	$(CC) -O3 -c main.c
	$(CC) -O3 -c lib.c
	$(CC) -O0 -c mul.c -o mul0.o
	$(CC) -O1 -c mul.c -o mul1.o
	$(CC) -O2 -c mul.c -o mul2.o
	$(CC) -O3 -c mul.c -o mul3.o
	$(CC) -O3 -c trans.c
	$(CC) -O3 -c simd.c -mavx512f
	$(CC) -O3 -c unroll.c -mavx512f
	$(CC) -O3 -c block.c -o block.o -mavx512f
	$(CC) -o trans.exe trans.o main.o lib.o
	$(CC) -o mul0.exe mul0.o main.o lib.o
	$(CC) -o mul1.exe mul1.o main.o lib.o
	$(CC) -o mul2.exe mul2.o main.o lib.o
	$(CC) -o mul3.exe mul3.o main.o lib.o
	$(CC) -o simd.exe simd.o main.o lib.o
	$(CC) -o unroll.exe unroll.o main.o lib.o
	$(CC) -o block.exe block.o main.o lib.o
indent:
	indent *.c
clean:
	rm -f *.o *.s *.exe *~ unroll[1-9]*.c block[1-9]*.c
.PHONY: all indent clean
