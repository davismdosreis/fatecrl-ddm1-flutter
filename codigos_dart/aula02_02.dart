void main() {
  
  final String nome = "Rubens Lara";
  
  int a = 1;
  a = 3;
  
  var b = 2;
  int c = somar(a, b);

  if (c > 0){
    print("A soma foi positiva");
  }
  else {
    print("A soma foi negativa");
  }
  
  print("Soma: \$ $c");
  print("Nome: $nome");
}
 
int somar(int a, int b) { 
  return a + b;
}