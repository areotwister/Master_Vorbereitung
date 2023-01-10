#include "lib.h"

void mul (const double A[n][n], const double B[n][n], double C[n][n])
{
  for (int i = 0; i < n; i++)
    for (int j = 0; j < n; j++)
      for (int k = 0; k < n; k++)
	C[i][j] += A[i][k] * B[k][j];
}
