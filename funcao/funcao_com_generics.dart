main() {
  var lista = [3, 6, 7, 21, 45, 78, 1];
  print(segundoElementov1(lista));
}

Object segundoElementov1(List lista) {
  return lista != null ? lista[1] : null;
}

E segundoElementov2<E>(List<E> lista) {
  return lista != null ? lista[1] : null;
}