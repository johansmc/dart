import 'dart:io';

void main() {
  stdout.write("Ingrese su edad: ");
  int edad = int.parse(stdin.readLineSync()!);

  if (edad <= 12) {
    print("Usted es un niño");
  }

  if (edad >= 13 && edad <= 17) {
    print("Usted es un adolescente");
  }

  if (edad >= 18 && edad <= 59) {
    print("Usted es un adulto");
  }

  if (edad >= 60) {
    print("Usted es un adulto mayor");
  }
}
