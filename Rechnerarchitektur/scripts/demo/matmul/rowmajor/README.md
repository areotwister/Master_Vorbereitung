Here are several implementations of matrix multiplication similar to those discussed in the book.

The first one in Python is roughly 200 times slower than the simple 'mul.c' implementation if compiled with '-O3' which gives the
executable 'mul3.exe'.  Optimization gives roughly a factor of three or more (that is 'mul0.exe' versus 'mul3.exe').

However, taking memory access locality into account which can not be hidden by the processor cache by first transposing the second
matrix in order to have better cache usage for the tight inner loop of the procedure gives another substantial benefit.  This effect is
increasing with the size of the matrix and for n=1920 it is already a factor of three.

These were pretty rough comparisons and we used GCC 9.3.0 on a Laptop with a i7-1185G7 3.00GHz processor.  The default python on our
machine was python 2.7.18 which is slightly faster than using python 3.8.10 (where 'xrange' is replaced with 'range').
