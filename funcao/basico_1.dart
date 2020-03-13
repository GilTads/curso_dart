import 'dart:math';

void main() {
  somaComPrint(2, 3);

  somaComPrint(4, 5);

  somaDoisNumeros();
}

  void somaComPrint(int a, int b) {
    print(a + b);
  }
  
  void somaDoisNumeros() {
    int n1 = Random().nextInt(11);
    int n2 = Random().nextInt(11);
    print('Os valores sorteados  foram $n1 e $n2');
    print('A soma é: ${n1 + n2}');
  }