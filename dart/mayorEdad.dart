import "dart:io";

void main() {
  stdout.write("Ingrese eu edad ");
  int edad = int.parse(stdin.readLineSync()!);

  if (edad >= 18) {
    print("Eres mayor de edad, ya puedes votar");
  } else {
    print("Eres menor de edad, no puedes votar");
  }
}
