class Data {
  int dia;
  int mes;
  int ano;

  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);

  //Named Constructors
  Data.com({this.dia = 1, this.mes = 1, this.ano = 1970});

  String dataFormatada() {
    return '$dia/$mes/$ano';
  }
}

main() {
  var dataAniversario = new Data(13,04,1988);
  dataAniversario.dia = 13;
  dataAniversario.mes = 04;
  dataAniversario.ano = 1988;

  Data dataCompra = Data();
  dataCompra.dia = 25;
  dataCompra.mes = 2;
  dataCompra.ano = 2020;

  //print('${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}');
  //print('${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}');

  print('A data do aniversário é: ${dataAniversario.dataFormatada()}');
  print('A data da compra é: ${dataCompra.dataFormatada()}');

  print(new Data(10).dataFormatada());
  print(Data.com(ano: 1988).dataFormatada());
  var dataFinal = Data.com(dia: 13, mes: 04, ano: 1988);
  print('Eu nasci em ${dataFinal.dataFormatada()}');
}