class Contato {
  String nome;
  String telefone;
  String email;

  Contato(this.nome, this.telefone, this.email);
}

class Agenda {
  List<Contato> contatos = [];

  void adicionarContato(Contato contato) {
    contatos.add(contato);
    print("Contato ${contato.nome} adicionado com sucesso.");
  }

  Contato? buscarContato(String nome) {
    for (Contato contato in contatos) {
      if (contato.nome == nome) {
        return contato;
      }
    }
    return null;
  }

  void removerContato(Contato contato) {
    contatos.remove(contato);
    print("Contato ${contato.nome} removido com sucesso.");
  }

  void listarContatos() {
    if (contatos.isEmpty) {
      print("Agenda vazia...");
    } 
    else {
      print("Contatos na agenda:");
      
      for (Contato contato in contatos) {
        print("Nome: ${contato.nome} | Telefone: ${contato.telefone} | E-mail: ${contato.email}");
      }
    }
  }
}

void main() {
  Contato contato1 = Contato("Fatec", "13-1234-5678", "fatec@fatecrl.edu.br");
  Contato contato2 = Contato("Rubens", "13-8765-4321", "Rubens@fatecrl.edu.br");
  Contato contato3 = Contato("Lara", "13-3322-2233", "Lara@fatecrl.edu.br");
  Contato contato4 = Contato("Rubens Lara", "13-9987-7899", "rl@fatecrl.edu.br");

  Agenda minhaAgenda = Agenda();
  minhaAgenda.adicionarContato(contato1);
  minhaAgenda.adicionarContato(contato2);
  minhaAgenda.adicionarContato(contato3);
  minhaAgenda.adicionarContato(contato4);

  minhaAgenda.listarContatos();
  
  print("Removendo 1 contato...");
  
  String nomeContatoParaRemocao = "Fatec";

  Contato? contatoEncontrado = minhaAgenda.buscarContato(nomeContatoParaRemocao);
  if (contatoEncontrado != null) {
    minhaAgenda.removerContato(contatoEncontrado);
  }
  else {
    print("Contato '$nomeContatoParaRemocao' não encontrado para remoção.");
  }

  minhaAgenda.listarContatos();
}
