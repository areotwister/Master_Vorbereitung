void line (void);
void show (const char * name, int limit, void * a);

int f (int limit) {
  if (!limit) return 0;
  int a = 1;
  			show ("a", limit, &a);
  int b = 2;
  			show ("b", limit, &b);
  int c = 3;
  			show ("b", limit, &c);
  line ();
  return f (limit - 1);
}

int main (void)
{
  line ();
  return f (3);
}
