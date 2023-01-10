#include <stdbool.h>

bool
more3 (unsigned *counts, unsigned a, unsigned b)
{
  const unsigned s = counts[a];
  const unsigned t = counts[b];
  const bool x = s > t;
  const bool y = s < t;
  const bool z = a < b;
  return x | (!y & z);
}
