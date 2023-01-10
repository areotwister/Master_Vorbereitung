#include <stdlib.h>
void ptrcpy (char x[], char y[]) {
  for (char * q = x, * p = y; *q = *p; p++, q++)
    ;
}
