#include "size.h"

#include <stdlib.h>

void init (double A[n][n])
{
  for (int i = 0; i < n; i++)
    for (int j = 0; j < n; j++)
      A[i][j] = drand48 ();
}
