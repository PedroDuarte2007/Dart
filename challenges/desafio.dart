double fatorial(double i) {
  if (i == 0 || i == 1) {
    return 1; 
  } else {
    return i * fatorial(i - 1); 
  }
}

void main() {
  double numero = 5; 
  double resultado = fatorial(numero);
  print("O fatorial de $numero é: $resultado");
}
