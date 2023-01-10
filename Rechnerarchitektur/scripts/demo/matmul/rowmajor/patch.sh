#!/bin/sh
n="`awk '/^#define n/{print $3}' size.h`"
sed -i -e 's/li	t3,.*/li	t3,'$n'/' riscv.s sim64.c
sed -i -e 's/t3 = .*;/t3 = '$n';/' riscv.s sim64.c
