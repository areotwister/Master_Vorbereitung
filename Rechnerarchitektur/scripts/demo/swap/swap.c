void swap (int * a, int k) {
  int tmp = a[k];
  a[k] = a[k+1];
  a[k+1] = tmp;
}
