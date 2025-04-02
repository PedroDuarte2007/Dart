import 'dart:io';
void main(){
    print('Digite seu salario: ');
   double salario = double.parse(stdin.readLineSync()!);
   double resultado = 0;

  if (salario < 1518) {
    resultado = (salario * 0.075) + salario;
    print('O resultado depois dos descontos e aplicações é de: ${resultado}');
   } else if ((salario <= 2793)) {
    resultado = (salario * 0.09) + salario;
    print('O resultado depois dos descontos e aplicações é de: ${resultado}');
    } else if ((salario <= 4190)){
    resultado = (salario * 0.12) + salario;
    print('O resultado depois dos descontos e aplicações é de: ${resultado}');
    } else if ((salario <= 8157)){
    resultado = (salario * 0.14) + salario;
    print('O resultado depois dos descontos e aplicações é de: ${resultado}');
  } else {
    print('Seu salario é menor que RS1.518,00');
  }
}