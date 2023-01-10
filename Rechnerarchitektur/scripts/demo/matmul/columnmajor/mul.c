#include "lib.h"

void
mul (const double *A, const double *B, double *C)
{
  for (int j = 0; j < n; j++)
    for (int k = 0; k < n; k++)
      for (int i = 0; i < n; i++)
	C[i + j * n] += A[i + k * n] * B[k + j * n];
}
