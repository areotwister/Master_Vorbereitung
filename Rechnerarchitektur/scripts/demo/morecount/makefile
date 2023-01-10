all:
	gcc -ggdb3 -g -O3 -Wall -o run *.c -lm
	for n in 1 2 3 4 5 6; \
	do \
	  gcc -O3 -S more$${n}.c -o more$${n}-x86.s; \
	  riscv64-linux-gnu-gcc -O3 -S more$${n}.c -o more$${n}-risc-v64.s; \
	  riscv64-linux-gnu-gcc -march=rv32if -mabi=ilp32f -O3 -S more$${n}.c -o more$${n}-risc-v32.s; \
	done
clean:
	rm -f run *.s
