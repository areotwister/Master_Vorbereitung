#include "lib.h"

#include <stdlib.h>
#include <stdio.h>

static int initialized;

void
init (double *A)
{
  if (!initialized)
    srand48 (42), initialized = 1;
  for (int i = 0; i < n; i++)
    for (int j = 0; j < n; j++)
      A[i + j * n] = drand48 ();
}

void
trans (const double *A, double *T)
{
  for (int j = 0; j < n; j++)
    for (int i = 0; i < n; i++)
      T[i * n + j] = A[j * n + i];
}

void
print (const double *A)
{
  putc ('\n', stdout);
  for (int i = 0; i < n; i++)
    {
      for (int j = 0; j < n; j++)
	printf ("%f ", A[i +  n * j]);
      putc ('\n', stdout);
    }
}
