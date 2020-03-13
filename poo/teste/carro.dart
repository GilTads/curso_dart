import '../model/Carro.dart';

main() {
  var carro = new Carro(110);

  while(!carro.estaNoLimite()) {
    print('Acelerando: ${carro.acelerar()}Km/h');
  }
  print('O carro chegou no máximo com velocidade ${carro.velocidadeAtual}Km/h');

  while(!carro.estaParado()) {
    print('Freando: ${carro.frear()}Km/h');
  }
  print('O carro parou com velocidade ${carro.velocidadeAtual}Km/h');

}