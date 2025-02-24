import 'dart:io';

void main() {
  stdout.write("Ingrese un numero: ");
  int numero = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el segundo numero: ");
  int numero2 = int.parse(stdin.readLineSync()!);

  if (numero < numero2) {
    for(numero; numero <= numero2; numero++) {
      print(numero);
    }
  } else {
    print("El primer numero tiene que ser menor que el segundo");
  }
}
