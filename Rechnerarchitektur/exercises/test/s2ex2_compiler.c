long fib(long n) {
  if (n <= 1)
    return 1;
  else
    return fib(n -1) + fib(n -2);
}

void main() {
  fib(5);
}
