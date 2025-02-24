import 'dart:io';

void main() {
  stdout.write("Ingrese su edad: ");
  int edad = int.parse(stdin.readLineSync()!);

  if (edad >= 18) {
    print("Usted puede votar ");
  } else {
    print("Usted no puede votar aun");
  }
}
