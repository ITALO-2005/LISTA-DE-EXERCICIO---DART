import 'dart:io';

void main() {
  // 16
  int idade = 20;
  if (idade >= 18) {
    print('Maior de idade');
  } else {
    print('Menor de idade');
  }

  // 17
  double nota = 6.0;
  if (nota >= 7) {
    print('Aprovado');
  } else if (nota >= 5 && nota <= 6.9) {
    print('Recuperação');
  } else {
    print('Reprovado');
  }

  // 18
  int numeroParOuImpar = 5;
  print(numeroParOuImpar % 2 == 0 ? 'Par' : 'Ímpar');

  // 19
  int dia = 2;
  switch (dia) {
    case 1: print('Domingo'); break;
    case 2: print('Segunda'); break;
    default: print('Dia inválido');
  }

  // 20
  int n1 = 10, n2 = 25, n3 = 5;
  int maior = n1;
  if (n2 > maior) maior = n2;
  if (n3 > maior) maior = n3;
  print(maior);

  // 21
  for (int i = 10; i >= 1; i--) {
    print(i);
  }

  // 22
  int somaPares = 0;
  for (int i = 1; i <= 100; i++) {
    if (i % 2 == 0) somaPares += i;
  }
  print(somaPares);

  // 23
  int tabuada = 5;
  for (int i = 1; i <= 10; i++) {
    print('$tabuada x $i = ${tabuada * i}');
  }

  // 24 
  int numerosLidos = 0;
  int entrada = 1;
  while (entrada >= 0) {
    entrada = -1;
    if(entrada >= 0) numerosLidos++;
  }
  print('Foram digitados $numerosLidos números');

  // 25
  List<String> nomes = ['Ítalo', 'Dantas', 'Santos'];
  for (String n in nomes) {
    print(n.toUpperCase());
  }
}