#!/bin/sh
set +x
CC="`sed -e '/^CC/!d;s,^CC=,,' makefile|tail -1`"
for i in 8 16 32 64 128 256 512 1024
do 
  sed -e 's,BLOCK [0-9][0-9]*$,BLOCK '$i',' block.c > block$i.c
  $CC -O3 -c block$i.c -mavx512f
  $CC -o block$i.exe block$i.o main.o lib.o
  echo -n "block$i "
  time -f "%U" ./block$i.exe
done
