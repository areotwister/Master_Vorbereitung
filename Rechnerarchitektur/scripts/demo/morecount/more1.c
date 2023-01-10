#include <stdbool.h>

bool
more1 (unsigned *counts, unsigned a, unsigned b)
{
  const unsigned s = counts[a];
  const unsigned t = counts[b];
  if (s > t)
    return 1;
  if (s < t)
    return 0;
  return a < b;
}
