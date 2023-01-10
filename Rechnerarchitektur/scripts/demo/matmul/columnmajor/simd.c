#include "lib.h"

#include <x86intrin.h>
#include <stdio.h>

void
mul (const double *A, const double *B, double *C)
{
  for (int i = 0; i < n; i += 8)
    for (int j = 0; j < n; j++)
      {
	__m512d c0 = _mm512_load_pd (C + i + j * n);
	for (int k = 0; k < n; k++)
	  {
	    __m512d bb = _mm512_broadcastsd_pd (_mm_load_sd (B + j * n + k));
	    c0 = _mm512_fmadd_pd (_mm512_load_pd (A + n * k + i), bb, c0);
	  }
	_mm512_store_pd (C + i + j * n, c0);
      }
}
