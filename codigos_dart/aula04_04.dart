class Conta with ImpressaoSaldo{
  int numeroConta;
  String nomeTitular;
  double saldo;
  double limite;

  Conta(this.numeroConta, this.nomeTitular, this.saldo, this.limite);

  void depositar(double valor) {
    saldo += valor;
    print("Depósito de R\$$valor realizado com sucesso.");
    imprimir(saldo);
  }

  void sacar(double valor) {
    if (valor <= saldo + limite) {
      saldo -= valor;
      print("Saque de R\$$valor realizado com sucesso.");
    } 
    else {
      print("Saldo insuficiente.");
    }
    imprimir(saldo);
  }

  void consultarSaldo() {
    print("Saldo atual: R\$$saldo.");
  }
}

mixin ImpressaoSaldo{
  void imprimir(double saldo){
    print("Novo saldo: R\$$saldo.");
  }
}

void main() {
  Conta minhaConta = Conta(1234, "Rubens Lara", 1000.0, 500.0);

  minhaConta.depositar(500.0);
  minhaConta.depositar(1000.0);
  minhaConta.sacar(200.0);
  minhaConta.consultarSaldo();
  
}
