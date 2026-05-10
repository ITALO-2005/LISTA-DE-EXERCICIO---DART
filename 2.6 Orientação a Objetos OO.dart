// 46
class Livro {
  String titulo;
  String autor;
  int anoPublicacao;
  Livro(this.titulo, this.autor, this.anoPublicacao);
  String exibirDetalhes() {
    return 'Título: $titulo, Autor: $autor, Ano: $anoPublicacao';
  }
}

// 47
class Contador {
  int _valor = 0;
  void incrementar() { _valor++; }
  void resetar() { _valor = 0; }
}

// 48
class Aluno {
  String nome;
  String matricula;

  Aluno(this.nome, this.matricula);
  Aluno.semMatricula(this.nome) : matricula = 'Não informada';
}

// 49
class Produto {
  String nome;
  double preco;
  Produto({required this.nome, this.preco = 0.0});
}

// 50
class Veiculo {
  String marca;
  double velocidadeMaxima;
  Veiculo(this.marca, this.velocidadeMaxima);
}
class Carro extends Veiculo {
  int quantidadePortas;
  Carro(String marca, double velMax, this.quantidadePortas) : super(marca, velMax);
}

// 51
class Animal {
  String emitirSom() => 'Som generico';
}
class Gato extends Animal {
  @override
  String emitirSom() => 'miau';
}

// 52
abstract class Forma {
  double calcularArea();
}
class Quadrado extends Forma {
  double lado;
  Quadrado(this.lado);
  @override
  double calcularArea() =>lado *lado;
}
class Circulo extends Forma {
  double raio;
  Circulo(this.raio);
  @override
  double calcularArea() => 3.14159 *raio *raio;
}

// 53
abstract class Notificacao {
  void enviar();
}
class Email extends Notificacao {
  @override
  void enviar() => print('e-mail enviado');
}
class SMS extends Notificacao {
  @override
  void enviar() => print('sms enviado');
}

// 54
class ContaBancaria {
  double _saldo = 0;
  void depositar(double valor) { _saldo += valor; }
  void sacar(double valor) {
    if (valor <= _saldo) {
      _saldo -= valor;
    } else {
      print('Erro: Saldo insuficiente');
    }
  }
}

// 55
class Termometro {
  double _temperaturaC = 0;
  void ajustarTemperatura(double novaTemp) {
    if (novaTemp >= -50 && novaTemp <= 100) {
      _temperaturaC = novaTemp;
    }
  }
}

// 56
class Retangulo {
  double _largura = 0;
  double _altura = 0;

  double get largura => _largura;
  set largura(double valor) {
    if (valor > 0) _largura = valor; else print('Valor inválido');
  }

  double get altura => _altura;
  set altura(double valor) {
    if (valor > 0) _altura = valor; else print('Valor invalido');
  }
}

// 57
class Usuario {
  String _email = '';
  set email(String valor) {
    if (valor.contains('@')) _email = valor;
  }
}

// 58
abstract class Autenticavel {
  bool autenticar(String senha);
}
class UsuarioLogin implements Autenticavel {
  @override
  bool autenticar(String senha) => senha == '1357';
}

// 59
abstract class Calculavel {
  double calcular(double a, double b);
}
class Soma implements Calculavel {
  @override
  double calcular(double a, double b) => a + b;
}
class Subtracao implements Calculavel {
  @override
  double calcular(double a, double b) => a - b;
}

// 60
abstract class Dispositivo {
  void ligar();
}
class Celular extends Dispositivo {
  @override
  void ligar() => print('Celular ligado!');
}

// 61
abstract class FormaGeometrica {
  double calcularArea();
}
class TrianguloGeo extends FormaGeometrica {
  double base, altura;
  TrianguloGeo(this.base, this.altura);
  @override
  double calcularArea() => (base * altura) / 2;
}
class RetanguloGeo extends FormaGeometrica {
  double base, altura;
  RetanguloGeo(this.base, this.altura);
  @override
  double calcularArea() => base * altura;
}