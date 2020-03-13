main() {
  int Function(int, int) soma1 = somaFn;
  print(soma1(2, 3));

  int Function(int, int) soma2 = (x, y) => x + y;
  print(soma2(2, 2));
}

int somaFn(int a, int b) => a + b;