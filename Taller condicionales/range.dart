import 'dart:io';
void main() {
  stdout.write("Ingrese el rango: ");
  int rango = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese un numero dentro del rango: ");
  int num = int.parse(stdin.readLineSync()!);
  if (num >= 0 && num <= rango) {
    print("El numero esta dentro del rango");
  } else {
    print("El numero esta fuera del rango");
  }
}