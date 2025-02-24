import 'dart:io';

void main() {
  stdout.write("Ingrese un numero: ");
  int num = int.parse(stdin.readLineSync()!);

  if (num % 2 == 0) {
    print("El numero es par");
  } else {
    print("El numero es impar");
  }
  
}
