import 'package:aprendendo_mobx/produto.dart';
import 'package:test/test.dart';

void main(){
  late Produto produto;

  setUp(() {
    produto = Produto(id: 1, codigo: 123, nome: 'Coca-Cola', preco: 5.50, estoque: 100);
  });

  test('Descontar estoque em 10', () {
    produto.descontarEstoqueProduto(10);
    expect(produto.estoque, 90);
  });

  test('Adicionar estoque em 10', () {
    produto.adicionarEstoqueProduto(10);
    expect(produto.estoque, 110);
  });
}