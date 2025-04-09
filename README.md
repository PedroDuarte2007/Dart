# Programação em Dart

Programção em Dart com desafios e tarefas

### Desafio de Eleição
````bash
import 'dart:io';
class Candidato {
  String nome;
  int votos;
  Candidato(this.nome, this.votos);
}
void main() {
  List<Candidato> candidatos = [];
  int totalVotos = 0;
  while (true) {
    print('\nMenu:');
    print('1. Adicionar candidato');
    print('2. Excluir candidato');
    print('3. Mostrar porcentagem');
    print('4. Sair');
    stdout.write('Escolha uma opção: ');
    int opcao = int.parse(stdin.readLineSync()!);
  switch (opcao) {
      case 1:
        //Adicionar candidato
        stdout.write('Digite o nome do candidato: ');
        String nome = stdin.readLineSync()!;
        stdout.write('Digite a quantidade de votos: ');
        int votos = int.parse(stdin.readLineSync()!);

        candidatos.add(Candidato(nome, votos));
        totalVotos += votos;
        print('Candidato $nome adicionado com $votos votos.');
        break;
      case 2:
        //Excluir candidato
        stdout.write('Digite o nome do candidato a ser excluído: ');
        String nomeExcluir = stdin.readLineSync()!;
        bool encontrado = false;
        for (var candidato in candidatos) {
          if (candidato.nome == nomeExcluir) {
            totalVotos -= candidato.votos;
            candidatos.remove(candidato);
            print('Candidato $nomeExcluir excluído.');
            encontrado = true;
            break;
          }
        }
        if (!encontrado) {
          print('Candidato não encontrado.');
        }
        break;
      case 3:
        //Mostrar porcentagem
        if (candidatos.isEmpty) {
          print('Não há candidatos registrados.');
        } else {
          print('\nRelatório de votos:');
          for (var candidato in candidatos) {
            double porcentagem = (candidato.votos / totalVotos) * 100;
            print('${candidato.nome}: ${candidato.votos} votos (${porcentagem.toStringAsFixed(2)}%)');
          }
        }
        break;
      case 4:
        //Verificar resultado
        print('Saindo...');
        if (candidatos.isEmpty) {
          print('Não há candidatos registrados.');
        } else {
          //Ordena os candidatos por número de votos em ordem decrescente
          candidatos.sort((a, b) => b.votos.compareTo(a.votos));
          //Verifica se já houve vencedor no 1º turno
          double porcentagemVencedor = (candidatos[0].votos / totalVotos) * 100;
          if (porcentagemVencedor > 50.00) {
            //Vencedor no 1º turno
            print('Vencedor do 1º turno: ${candidatos[0].nome}');
          } else {
            //Segundo turno
            print('Nenhum candidato obteve mais de 50% dos votos.');
            print('Será necessário um segundo turno entre os dois candidatos mais votados:');
            print('1º lugar: ${candidatos[0].nome} com ${candidatos[0].votos} votos');
            print('2º lugar: ${candidatos[1].nome} com ${candidatos[1].votos} votos');
          }
        }
        return;
      default:
        print('Opção inválida. Tente novamente.');
    }
  }
}
````

Clone o repositorio com os passos a passos e os seguintes comandos no GitBash

* No repositorio clique em CODE e copie o codigo em HTTP
* Agora no GitBash, entre na pasta Documentos com o seguinte codigo 
````bash
cd Documents
````
* Logo apos entrar na pasta Documents digite o codigo abaixo
````bash
git clone https://github.com/PedroDuarte2007/Dart.git
````
* Apos clonar o repositorio entre no arquivo clonado seguindo o passo a passo abaixo
````bash
cd Dart
````
* Para abrir o repositorio clonado digite 
````bash
code .
````

### Tecnologias Utilizadas

| Tecnologias  | Utilizada para |
| ------------- |:-------------:|
| Dart | Linguagem Utilizada |
| GitBash     | Ferramenta colaborativa de versionamento  |
| VsCode     | IDE (Ambiente integrado de desenvolvimento)  |

### Github dos Professores

* [Wellington Fábio de Oliveira Martins](https://github.com/wellifabio)
