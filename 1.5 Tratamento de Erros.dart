void main() {
  // 62
  int a = 10;
  int b = 0;
  try {
    print(a ~/ b);
  } catch (e) {
    print('não é possivel dividr por zero');
  }

  // 63
  String texto = "abc";
  try {
    int numero = int.parse(texto);
    print(numero);
  } catch (e) {
    print('A string digitada não é um número válido.');
  }

  // 64
  List lista64 = [1, 2, 3];
  try {
    print(lista64[5]);
  } catch (e) {
    print('você tentou acessar uma posição que não existe na lista');
  }

  // 65
  String email = "usuario.example.com";
  try {
    if (!email.contains('@')) {
      throw Exception('E-mail sem o @. Inválido!');
    }
  } catch (e) {
    print(e.toString());
  }

  // 66
  processarEntrada('abc'); 
  processarEntrada('5'); 
}

void processarEntrada(String entrada) {
  try {
    int numero = int.parse(entrada);
    List lista = [10, 20, 30];
    print(lista[numero]);
  } on FormatException {
    print('Erro: a entrada não é um número');
  } catch (e) {
    print('Erro genérico ou indice fora do tamanho da lista.');
  }
}