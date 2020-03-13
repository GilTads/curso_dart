main() {
  List<double> notas = [8.2, 7.3, 6.8, 5.4, 2.7, 9.3];
  bool Function(double) notasBoasFn = (double nota) => nota >= 7;

  List<double> somenteNotasBoas = filtrar(notas, notasBoasFn);

  print(somenteNotasBoas);
  
}

List<E> filtrar<E>(List<E> lista, bool Function(E) fn) {
  List<E> listaFiltrada = [];
  for(E elemento in lista) {
    if(fn(elemento)) {
      listaFiltrada.add(elemento);
    }
  }
  return listaFiltrada;
}