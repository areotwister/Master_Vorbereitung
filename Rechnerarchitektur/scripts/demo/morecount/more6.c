#include <stdbool.h>
#include <stdlib.h>

bool
more6 (unsigned *counts, unsigned a, unsigned b)
{
  const size_t s = counts[a];
  const size_t t = counts[b];
  const size_t x = t - (size_t) s; 
  const size_t y = s - (size_t) t; 
  const size_t z = a - (size_t) b; 
  return (x | (z & ~y)) >> (8*sizeof (size_t) - 1);
}
