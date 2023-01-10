#!/usr/bin/env python3
try:
    xrange
except NameError:
    xrange = range
import random
n = 240
C = [[0 for e in range(n)] for e in range(n)]
A = [[random.random() for e in range(n)] for e in range(n)]
B = [[random.random() for e in range(n)] for e in range(n)]
for i in xrange(n) :
   for j in xrange(n) :
       for k in xrange(n) :
           C[i][j] += A[i][k] * B[k][j]
