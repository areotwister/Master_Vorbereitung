#include "lib.h"

#include <x86intrin.h>
#include <stdio.h>
#include <assert.h>

#define UNROLL 4
#define BLOCK 32

static void
block (int si, int sj, int sk,
       const double *A, const double *B, double *C)
{
  assert (!(n & (UNROLL-1)));
  assert (!(n & (BLOCK-1)));

  for (int i = si; i < si + BLOCK; i += UNROLL * 8)
    for (int j = sj; j < sj + BLOCK; j++)
      {
	__m512d c[UNROLL];
	for (int r = 0; r < UNROLL; r++)
	  c[r] = _mm512_load_pd (C + i + r * 8 + j * n);
	for (int k = sk; k < sk + BLOCK; k++)
	  {
	    __m512d bb = _mm512_broadcastsd_pd (_mm_load_sd (B + j * n + k));
	    for (int r = 0; r < UNROLL; r++)
	      c[r] = _mm512_fmadd_pd (_mm512_load_pd (A + n * k + r * 8 + i), bb, c[r]);
	  }
	for (int r = 0; r < UNROLL; r++)
	  _mm512_store_pd (C + i + r * 8 + j * n, c[r]);
      }
}

void
mul (const double *A, const double * B, double * C)
{
  for (int sj = 0; sj < n; sj += BLOCK)
    for (int si = 0; si < n; si += BLOCK)
      for (int sk = 0; sk < n; sk += BLOCK)
	block (si, sj, sk, A, B, C);
}
