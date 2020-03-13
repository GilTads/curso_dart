int Function(int) somaParcial(int a) => (int b) => a + b;

main() {
  print(somaParcial(2)(10));

  var somaCom10 = somaParcial(10);

  print(somaCom10(3));
}