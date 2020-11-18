class Produto {
  String nome = 'lapis';
  double preco = 9;

  Produto({this.nome, this.preco});
}

main() {
  var p1 = Produto(nome: 'Lapis', preco: 4.90);

  print("O produto ${p1.nome} tem preço de RS${p1.preco}");
}
