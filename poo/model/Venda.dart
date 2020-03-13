import 'Cliente.dart';
import 'VendaItem.dart';

class Venda {
  Cliente cliente;
  List<VendaItem> itens;

  Venda({ this.cliente, this.itens = const [] });

  double get valorTotal {
    return itens
    .map((item) => item.preco * item.quantidade)
    .reduce((total, atual) => total + atual);
  }
}