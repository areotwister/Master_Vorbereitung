#include <stdlib.h>

unsigned
generate (void)
{
#if 1
  return rand () % 100;	// Higher collision probability.
#elif 0
  return rand ();	// <= RAND_MAX <= INT_MAX
#elif 0
  unsigned a = rand ();
  unsigned b = rand ();
  return (a << 16) ^ b; // <= UINT_MAX
#else
  return (rand () & 1) ? 0x80000000 : 0;
#endif
}
