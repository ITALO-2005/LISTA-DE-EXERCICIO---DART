import 'dart:collection';

// 43
final class Node extends LinkedListEntry<Node> {
  int valor;
  Node(this.valor);
}

void main() {
  // 31
  List<int> numerosList = [10, 20, 30];
  numerosList.add(40);
  print(numerosList[2]);

  // 32
  var frutas32 = ['maçã', 'banana', 'laranja', 'banana'];
  frutas32.removeWhere((f) => f == 'banana');
  print(frutas32);

  // 33
  var listaNumeros = [1, 2, 3];
  var listaStrings = listaNumeros.map((n) => 'Número $n').toList();

  // 34
  var letras = {'a', 'b', 'c'};
  letras.add('a');
  print(letras);

  // 35
  var set1 = {1, 2, 3};
  var set2 = {3, 4, 5};
  print(set1.union(set2));
  print(set1.intersection(set2));

  // 36 Assumi valores genéricos
  var listaComDuplicadas = [1, 2, 2, 3, 3, 4];
  var virouSet = listaComDuplicadas.toSet();
  print(virouSet);

  // 37
  var pessoa = {'nome': 'Ítalo', 'idade': 20};
  pessoa['cidade'] = 'Frei Martinho - PB';
  pessoa['idade'] = 20;

  // 38
  var produtos = {'celular': 1500, 'notebook': 3000};
  if (!produtos.containsKey('tablet')) {
    produtos['tablet'] = 1000;
  }

  // 39
  var map1 = {'a': 1, 'b': 2};
  var map2 = {'c': 3};
  var combinados = {...map1, ...map2};

  // 40
  Queue<String> fila = Queue();
  fila.addAll(['primeiro', 'segundo', 'terceiro']);
  fila.removeFirst();
  print(fila);

  // 41
  Queue<int> filaInt = Queue.from([1, 2, 3]);
  filaInt.addFirst(0);
  filaInt.removeLast();

  // 42
  Queue<int> fila42 = Queue.from([10, 20, 30]);
  var lista42 = fila42.toList();
  print(lista42[1]);

  // 43, 44 e 45 usando a classe node criada ali em cima
  var listaLigada = LinkedList<Node>();
  listaLigada.addAll([Node(10), Node(20), Node(30)]);
  
  listaLigada.firstWhere((n) => n.valor == 20).unlink(); // 44
  
  for (var no in listaLigada) {
    print(no.valor * 2); // 45
  }
}