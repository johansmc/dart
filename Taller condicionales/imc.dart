import 'dart:io';

void main() {
  stdout.write("Ingrese su peso: ");
  double peso = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese su altura: ");
  double altura = double.parse(stdin.readLineSync()!);
  double imc = peso / (altura * altura);
  if (imc < 18.5) {
    print("Bajo peso su imc es: $imc");
  } else if (imc >= 18.5 && imc <= 24.9) {
    print("Peso normal su imc es: $imc");
  } else if (imc >= 25.0 && imc <= 29.9) {
    print("Sobrepeso su imc es: $imc");
  } else {
    print("Obesidad su imc es: $imc");
  }
}
