#include <stdio.h>
#include <stdlib.h>
int myabs (int);
int mysign (int);
int myispow2 (int);
int main (int argc, char ** argv)
{
  int n = argc > 1 ? atoi (argv[1]) : 42;
  int a = myabs (n);
  int s = mysign (n);
  int p = myispow2 (n);
  printf ("myabs (%d) = %d\n", n, a);
  printf ("mysign (%d) = %d\n", n, s);
  printf ("myispow2 (%d) = %d\n", n, p);
  return 0;
}
