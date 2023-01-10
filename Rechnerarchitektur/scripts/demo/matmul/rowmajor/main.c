#include <stdio.h>

#include "lib.h"

static double A[n][n], B[n][n], C[n][n];

int main (int argc, char ** argv)
{
  printf ("n = %d\n", n);
  init (A);
  init (B);
  mul (A, B, C);
  if (argc > 1)
    print (C);
}
