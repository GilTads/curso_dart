main() {
  saudarPessoa(idade: 31, nome: 'Gilmar');
}

saudarPessoa({String nome, int idade}) {
  print('Olá, $nome. Nem parece que você tem $idade anos');
}