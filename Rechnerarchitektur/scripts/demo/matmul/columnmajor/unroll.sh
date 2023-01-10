#!/bin/sh
set +x
CC="`sed -e '/^CC/!d;s,^CC=,,' makefile|tail -1`"
for i in 1 2 3 4 5 6 8 9 10 12 15 16
do 
  sed -e 's,UNROLL [0-9][0-9]*$,UNROLL '$i',' unroll.c > unroll$i.c
  $CC -O3 -c unroll$i.c -mavx512f
  $CC -o unroll$i.exe unroll$i.o main.o lib.o
  echo -n "unroll$i "
  time -f "%U" ./unroll$i.exe
done
