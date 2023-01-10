#include <stdbool.h>

bool
more4 (unsigned *counts, unsigned a, unsigned b)
{
  const unsigned s = counts[a];
  const unsigned t = counts[b];
  const unsigned x = s > t;
  const unsigned y = s < t;
  const unsigned z = a < b;
  return x | (z & !y);
}
