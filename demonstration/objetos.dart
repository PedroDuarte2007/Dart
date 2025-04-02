void main() {
  Produto prod = Produto();
  prod.id = 1;
  prod.nome = 'Camiseta';
  prod.preco = 39.9;
  print(prod);
}

class Produto {
  int id = 0;
  String nome = '';
  String? descricao;
  double preco = 0;

  String toString() {
   
    return '$id, $nome, $descricao , ${preco.toStringAsFixed(2)}';
  }
}
