import 'dart:io';

class Paciente {
  String nome;
  int idade;
  String sexo;
  bool apto;

  Paciente(this.nome, this.idade, this.sexo) {
    apto = _verificarAptidao();
  }

  bool _verificarAptidao() {
    if (sexo.toLowerCase() == 'masculino') {
      return idade >= 14 && idade <= 50;
    } else if (sexo.toLowerCase() == 'feminino') {
      return idade >= 20 && idade <= 40;
    }
    return false;
  }
}

void main() {
  List<Paciente> pacientes = [];

  while (true) {
    print('\nMenu:');
    print('1. Adicionar paciente');
    print('2. Excluir paciente');
    print('3. Listar pacientes aptos e não aptos');
    print('4. Sair');
    stdout.write('Escolha uma opção: ');
    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        // Adicionar paciente
        stdout.write('Digite o nome do paciente: ');
        String nome = stdin.readLineSync()!;
        stdout.write('Digite a idade do paciente: ');
        int idade = int.parse(stdin.readLineSync()!);
        stdout.write('Digite o sexo do paciente (masculino/feminino): ');
        String sexo = stdin.readLineSync()!;

        Paciente paciente = Paciente(nome, idade, sexo);
        pacientes.add(paciente);
        print('Paciente $nome adicionado.');
        break;
      case 2:
        // Excluir paciente
        stdout.write('Digite o nome do paciente a ser excluído: ');
        String nomeExcluir = stdin.readLineSync()!;
        bool encontrado = false;

        for (var paciente in pacientes) {
          if (paciente.nome == nomeExcluir) {
            pacientes.remove(paciente);
            print('Paciente $nomeExcluir excluído.');
            encontrado = true;
            break;
          }
        }

        if (!encontrado) {
          print('Paciente não encontrado.');
        }
        break;
      case 3:
        // Listar pacientes aptos e não aptos
        if (pacientes.isEmpty) {
          print('Não há pacientes registrados.');
        } else {
          print('\nRelatório de pacientes:');
          List<Paciente> aptos = [];
          List<Paciente> naoAptos = [];

          for (var paciente in pacientes) {
            if (paciente.apto) {
              aptos.add(paciente);
            } else {
              naoAptos.add(paciente);
            }
          }

          print('\nPacientes aptos para a vacina:');
          for (var paciente in aptos) {
            print('${paciente.nome}, Idade: ${paciente.idade}, Sexo: ${paciente.sexo}');
          }

          print('\nPacientes não aptos para a vacina:');
          for (var paciente in naoAptos) {
            print('${paciente.nome}, Idade: ${paciente.idade}, Sexo: ${paciente.sexo}');
          }
        }
        break;
      case 4:
        // Sair
        print('Saindo...');
        return;
      default:
        print('Opção inválida. Tente novamente.');
    }
  }
}
