#include "lib.h"

#include <stdio.h>
#include <stdlib.h>

static int initialized;

void init (double A[n][n])
{
  if (!initialized)
    srand48 (42), initialized = 1;
  for (int i = 0; i < n; i++)
    for (int j = 0; j < n; j++)
      A[i][j] = drand48 ();
}

void print (const double A[n][n])
{
  putc ('\n', stdout);
  for (int i = 0; i < n; i++)
    {
      for (int j = 0; j < n; j++)
	printf ("%f ", A[i][j]);
      fputc ('\n', stdout);
    }
}
