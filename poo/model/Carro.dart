class Carro{
  final int velocidadeMaxima;
  int _velocidadeAtual;

  Carro([this.velocidadeMaxima = 200, this._velocidadeAtual = 0]);

  int get velocidadeAtual {
    return this._velocidadeAtual;
  }

void set velocidadeAtual(int novaVelocidade) {
  bool diferencaValida = (this._velocidadeAtual - novaVelocidade).abs() <= 5;
  if(diferencaValida && novaVelocidade >= 0) {
    this._velocidadeAtual = novaVelocidade;
  }
}
  int acelerar() {
    if(_velocidadeAtual + 5 >= velocidadeMaxima) {
      _velocidadeAtual = velocidadeMaxima;
    } else {
      _velocidadeAtual += 5;
    }
    return _velocidadeAtual;
  } 

  int frear() {
    if(_velocidadeAtual - 5 <= 0) {
      _velocidadeAtual = 0;
    } else {
      _velocidadeAtual -= 5;
    }
    return _velocidadeAtual;
  }

  bool estaNoLimite() {
    return _velocidadeAtual == velocidadeMaxima;
  }

  bool estaParado() {
    return _velocidadeAtual == 0;
  }
}