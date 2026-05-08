void main() {
  // 1
  int idade = 28;
  //2
  double altura = 1.75;
  // 3
  String pet = 'Rex';
  // 4
  bool lampadaLigada = false;
  // 5
  int a= 10;
  int b=3;
  int soma =a + b;
  // 6
  int resto = a % b;
  // 7
  double valorCompra = 100.0;
  double comDesconto = valorCompra -(valorCompra * 0.10);
  //8
  String produto = 'Iphone 13';
  double preco = 3400.00;
  print('O $produto custa $preco');
  //9
  List<String> cidades = ['Cuité', 'Frei Martinho', 'Picuí'];
  print(cidades[1]); 
  //10
  Set<int> numerosUnicos = {1, 2, 3, 2};
  print(numerosUnicos.length);
  //11
  Map<String, double> frutas = {'maçã': 4.5, 'banana': 3.0};
  print(frutas['maçã']);
  //12
  dynamic variavelLivre = 10;
  variavelLivre = 'Dez';
  // 13
  String statusIdade = idade >= 18 ? 'Maior de idade' : 'Menor de idade';
  // 14
  int? valorNulo;
  int valorCerto = valorNulo ?? 0;
  // 15
  final double PI = 3.14159;
}