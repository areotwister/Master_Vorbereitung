#!/usr/bin/env python3
try:
    xrange
except NameError:
    xrange = range
import random
n = 240
C = [0 for e in range(n*n)]
A = [random.random() for e in range(n*n)]
B = [random.random() for e in range(n*n)]
for j in xrange(n) :
    for k in xrange(n) :
        for i in xrange(n) :
            C[i + j*n] += A[i + k*n] * B[k + j*n]
