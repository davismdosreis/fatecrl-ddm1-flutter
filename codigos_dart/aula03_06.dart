void main() {
  print("Calculadora em DART com OOP - Aula03_06");

  double v1 = 10, v2 = 5;

  // instancia objeto da classe Adicao
  Adicao adicao = Adicao();
  // executa método de negócio passando os valores para cálculo
  double soma = adicao.calcular(v1, v2);
  
  // executa método de negócio, utilizando o conceito de "objeto anônimo"
  double subtr = Subtracao().calcular(v1, v2);
  double mult = Multiplicacao().calcular(v1, v2);
  double div = Divisao().calcular(v1, v2);

  print("Soma: $soma.");
  print("Subtração: $subtr.");
  print("Multiplicação: $mult.");
  print("Divisão: $div.");
}

abstract class Calculo{
  double calcular(double valor1, double valor2);
}

class Adicao extends Calculo{
  @override
  double calcular(double valor1, double valor2) {
    return valor1 + valor2;
  }
}

class Subtracao extends Calculo {
  @override
  double calcular(double valor1, double valor2) {
    return valor1 - valor2;
  }
}

class Multiplicacao extends Calculo {
  @override
  double calcular(double valor1, double valor2) {
    return valor1 * valor2;
  }
}

class Divisao extends Calculo {
  @override
  double calcular(double valor1, double valor2) {
    return valor1 - valor2;
  }
}
