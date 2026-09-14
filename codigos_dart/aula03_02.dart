void main(){
    Carro carro1 = Carro("HB20");
    Carro carro2 = Carro("Gol");
    Carro carro3 = Carro("Argo");

    final carros = [carro1, carro2, carro3];
    // carros.add(carro1); carros.add(carro2); carros.add(carro3);

    print("Carros disponíveis: $carros, tamanho: ${carros.length}");

    // looping com For Each
    for (Carro carroTemp in carros){
        print("Carro disponível: ${carroTemp.modelo}");
    }

    // looping com convencional
    for (int i = 0; i < carros.length; i++) {
        print(" Carro: ${carros[i].modelo}");
    }
}

class Carro {
    String modelo; 

    Carro (this.modelo);

    String toString(){
        return modelo;
    }
}
