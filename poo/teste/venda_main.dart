import '../model/Cliente.dart';
import '../model/Produto.dart';
import '../model/Venda.dart';
import '../model/VendaItem.dart';

main() {

  var venda = Venda(
    cliente: Cliente(
      nome: 'Gil Santos',
      cpf: '123.466.789-00'
    ) ,
    itens: <VendaItem>[
      VendaItem(
        quantidade: 2,
        produto: Produto(
          codigo: 1,
          nome: 'MacBook Air',
          preco: 6650.00,
          desconto: 0.2
        ),
      ),
      VendaItem(
        quantidade: 3,
        produto: Produto(
          codigo: 2,
          nome: 'Dell Vostro',
          preco: 3500.50,
          desconto: 0.15
        ),
      ),
      VendaItem(
        quantidade: 1,
        produto: Produto(
          codigo: 3,
          nome: 'Lenovo XYZ',
          preco: 1500.60,
          desconto: 0.1
        ),
      )
    ]
  );

  print('Cliente: ${venda.cliente.nome}');
  print('Itens adquiridos: ${venda.itens.map((item) => item.produto.nome)}');
  print('Valor por produto: ${venda.itens.map((item) => item.produto.preco)}');
  print('Preço por produto com desconto: ${venda.itens.map((item) => item.preco.truncate())}');
  print('Quantidade: ${venda.itens.map((item) => item.quantidade)}');
  print('Valor total: R\$${venda.valorTotal.truncate()}');
}