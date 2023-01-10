int myabs (int a)
{
  return a > 0 ? a : -a;
}

int mysign (int a)
{
  return a > 0 ? 1 : -1;
}

int myispow2 (int a)
{
  return a && !(a & (a-1));
}
