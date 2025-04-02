import 'dart:io';

class Candidato {
  int id = 0;
  String nome = '';
  int votos = 0;
  Candidato(this.id, this.nome, this.votos);
  @override
  String toString() {
    return '{id: $id, nome: $nome, votos: $votos}';
  }
}

void main(){
    String? entrada;
    String nome;
    int votos;
    while(entrada == null){
        print('Digite o nome do candidato: ');
        entrada = stdin.readLineSync();
    }
    nome = entrada;
    entrada = null;
    while(entrada == null){
        print('Digite a quantidade de votos: ');
        entrada = stdin.readLineSync();
    }
    votos = int.parse(entrada!);
    entrada = null;
    Candidato candidato = Candidato(1, nome, votos);
    print(candidato);
}

