#include "lib.h"

static double T[n * n];

void
mul (const double *A, const double *B, double *C)
{
  trans (A, T);

  for (int j = 0; j < n; j++)
    for (int i = 0; i < n; i++)
      for (int k = 0; k < n; k++)
	C[i + j * n] += T[k + i * n] * B[k + j * n];
}
