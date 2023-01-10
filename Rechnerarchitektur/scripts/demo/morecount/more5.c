#include <stdbool.h>

bool
more5 (unsigned *counts, unsigned a, unsigned b)
{
  const unsigned s = counts[a];
  const unsigned t = counts[b];
  const unsigned x = t - s; 
  const unsigned y = s - t; 
  const unsigned z = a - b; 
  return (x | (z & ~y)) >> 31;
}
