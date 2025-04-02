import 'dart:io';
void main(){
    print('Digite o primeiro lado: ');
   double lado1 = double.parse(stdin.readLineSync()!);
    print('Digite o segundo lado: ');
   double lado2 = double.parse(stdin.readLineSync()!);
    print('Digite o terceiro lado: ');
   double lado3 = double.parse(stdin.readLineSync()!);
   double resultado = 0;

  if (lado1 == lado2 && lado2 == lado3) {
    print('O triangulo é EQUILATERO');
  } else if (lado1 != lado2 && lado2 != lado3 && lado1 != lado3) {
    print('O triangulo é ESCALENO');
  } else {
    print('O triangulo é ISOSCELES');
  }
}