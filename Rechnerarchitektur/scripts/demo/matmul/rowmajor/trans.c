#include "lib.h"

static double T[n][n];

void mul (const double A[n][n], const double B[n][n], double C[n][n])
{
  for (int i = 0; i < n; i++)
    for (int j = 0; j < n; j++)
      T[i][j] = B[j][i];

  for (int i = 0; i < n; i++)
    for (int j = 0; j < n; j++)
      for (int k = 0; k < n; k++)
	C[i][j] += A[i][k] * T[j][k];
}
