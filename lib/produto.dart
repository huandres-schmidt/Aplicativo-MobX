class Produto{
  int id;
  int codigo;
  String nome;
  double preco;
  int estoque;

  Produto({required this.id, required this.codigo, required this.nome, required this.preco, required this.estoque});

  void descontarEstoqueProduto(int quantidade){
    estoque = estoque - quantidade;
  }

  void adicionarEstoqueProduto(int quantidade){
    estoque = estoque + quantidade;
  }
}