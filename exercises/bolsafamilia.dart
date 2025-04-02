import 'dart:io';
void main(){
    print('Digite seu salario: ');
   double salario = double.parse(stdin.readLineSync()!);
    print('Coloque o numero de filhos: ');
   double numfilhos = double.parse(stdin.readLineSync()!);
   double resultado = 0;

  if (salario < 2000) {
    resultado = salario + (numfilhos * 60);
    print('O resultado depois dos descontos e aplicações é de: ${resultado}');
  } else {
    print('Seu salario é maior que RS2000');
  }
}

