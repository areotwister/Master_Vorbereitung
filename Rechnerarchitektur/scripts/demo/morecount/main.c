unsigned generate (void);

#include <stdbool.h>

bool more1 (unsigned *, unsigned, unsigned);
bool more2 (unsigned *, unsigned, unsigned);
bool more3 (unsigned *, unsigned, unsigned);
bool more4 (unsigned *, unsigned, unsigned);
bool more5 (unsigned *, unsigned, unsigned);
bool more6 (unsigned *, unsigned, unsigned);

#include <assert.h>
#include <stdio.h>

// The following functions are 'bit twiddling' hacks, which can be used in
// optimizing low-level code (making it for instance branchless).  Some of
// these hacks are used in compilers (and libraries) but not all of them.

// For more check out the book "Hackers Delight" or the following page
// "https://graphics.stanford.edu/~seander/bithacks.html".

static bool
is_power_of_two (unsigned n)
{
  return n && !(n & (n-1));
}

static unsigned
log2_if_power_of_two (unsigned n)
{
  assert (is_power_of_two (n));

  unsigned res = 0;

  res |= !!(n & 0xaaaaaaaa) << 0;
  res |= !!(n & 0xcccccccc) << 1;
  res |= !!(n & 0xf0f0f0f0) << 2;
  res |= !!(n & 0xff00ff00) << 3;
  res |= !!(n & 0xffff0000) << 4;

  assert (n == 1u << res);

  return res;
}

// Here comes the main testing routine.  It runs all comparison functions on
// randomly generated counts and uses an array of size 10 which restricts
// the indices to be in [0..9].  In a black box testing situation this is a
// good first choice I think.

// Note that the comparison functions do not really use the indices at this
// point but they could check them for begin equal in which case 'false'
// could be returned as a short cut avoiding the actual array access and
// pointer dereferences.

int
main (int argc, char ** argv)
{
  unsigned i = 0;
  do
    {
      const size_t MAX_SIZE = 10;
      unsigned counts[MAX_SIZE];
      const unsigned first = generate () % MAX_SIZE;
      const unsigned second = generate () % MAX_SIZE;
      counts[first] = generate ();
      counts[second] = generate ();

      unsigned res1 = more1 (counts, first, second);
      unsigned res2 = more2 (counts, first, second);
      unsigned res3 = more3 (counts, first, second);
      unsigned res4 = more4 (counts, first, second);
      unsigned res5 = more5 (counts, first, second);
      unsigned res6 = more6 (counts, first, second);

      if (argc > 1)
	printf ("%u: more (counts, %u, %u) = %u, "
		"counts[%u] = %08x, counts[%u] = %08x\n",
	        i, first, second, res1, 
		first, counts[first], second, counts[second]);

      assert (res1 == res2);
      assert (res1 == res3);
      assert (res1 == res4);
      assert (res1 == res5);
      assert (res1 == res6);

      if (is_power_of_two (++i))
	printf ("[2^%u = %u]\n", log2_if_power_of_two (i), i);
    }
  while (i);
}
