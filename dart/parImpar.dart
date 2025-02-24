import "dart:io";

void main() {
  stdout.write("Ingrese un numero: ");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero % 2 == 0) {
    print("El numero es par");
  } else {
    print("El numero es impar");
  }
}