import 'dart:io';
void main(){
    print('Digite seu salario: ');
   double salario = double.parse(stdin.readLineSync()!);
   double resultado = 0;

  if (salario > 1000) {
    resultado = (salario * 0.08) + salario;
    print('O resultado depois dos descontos e aplicações é de: ${resultado}');
  } else {
    print('Seu salario é menor que RS1000');
  }
}

