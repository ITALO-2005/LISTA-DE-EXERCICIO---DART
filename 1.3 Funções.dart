// 26
double calcularAreaRetangulo(double base, double altura) {
  return base * altura;
}

// 27
void apresentarPessoa(String nome, [int? idade]) {
  if (idade == null) {
    print(nome);
  } else {
    print('$nome, $idade anos');
  }
}

// 28
void enviarEmail(String destinatario, {String assunto = 'Sem assunto', String corpo = 'Mensagem vazia'}) {
  print('Enviando para $destinatario: $assunto - $corpo');
}

// 29
int somarLista(List<int> lista) {
  int soma = 0;
  for (int n in lista) {
    soma += n;
  }
  return soma;
}

void main() {
  // 30
  var saudacao = (String nome) {
    print('Olá, $nome!');
  };
  saudacao('Ítalo');
}