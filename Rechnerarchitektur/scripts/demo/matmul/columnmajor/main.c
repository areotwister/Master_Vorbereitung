#include "lib.h"

void mul (const double *, const double *, double *);

static double A[n * n], B[n * n], C[n * n];

int
main (int argc, char ** argv)
{
  init (A), init (B);
  mul (A, B, C);
  if (argc > 1)
    print (C);
}
