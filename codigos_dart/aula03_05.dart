void main() {
  print("Calculadora em DART com OOP - Aula03_05");

  double v1 = 10, v2 = 5;

  // instancia objeto da classe filha "Adicao", já passando os 2 valores ("v1" e "v2") no construtor não-default
  Adicao adicao = Adicao(v1, v2);
  // declara variável "soma" para receber o resultado da execução do método "calcular" (que foi definido de forma abstrata na classe "Calculo", mas implementado na classe filha "Adicao")
  double soma = adicao.calcular();
  
  // os cálculos abaixo estão sendo feitos utilizando-se o conceito de "objeto anônimo" (quando não se tem a necessidade de gerar um objeto para receber a instância da classe, podendo-se instanciá-la e já utilizar seu método diretamente)
  double subtr = Subtracao(v1, v2).calcular();
  double mult = Multiplicacao(v1, v2).calcular();
  double div = Divisao(v1, v2).calcular();
  
  // exibe o valor da variável "soma" e demais (que é o resultado da execução do método "calcular" da linha anterior)
  print("Soma: $soma.");
  print("Subtração: $subtr.");
  print("Multiplicação: $mult.");
  print("Divisão: $div.");
  
}

abstract class Calculo {
  double valor1 = 0, valor2 = 0;

  Calculo(this.valor1, this.valor2);

  double calcular();
}

class Adicao extends Calculo {
  Adicao(super.valor1, super.valor2);

  @override
  double calcular() {
    return valor1 + valor2;
  }
}

class Subtracao extends Calculo {
  Subtracao(super.valor1, super.valor2);

  @override
  double calcular() {
    return valor1 - valor2;
  }
}

class Multiplicacao extends Calculo {
  Multiplicacao(super.valor1, super.valor2);

  @override
  double calcular() {
    return valor1 * valor2;
  }
}

class Divisao extends Calculo {
  Divisao(super.valor1, super.valor2);

  @override
  double calcular() {
    return valor1 / valor2;
  }
}