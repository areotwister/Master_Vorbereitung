#include <stdio.h>

void show (const char * name, int limit, void * a) {
  printf ("%d %s %p\n", limit, name, a);
}

void line () { fputc ('\n', stdout); }

