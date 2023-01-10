#!/bin/sh
run () {
  echo -n "$1 "
  /usr/bin/time -f "%U" ./$1.exe
}
#run mul0
run mul1
run mul2
run mul3
run simd
run unroll
run block
