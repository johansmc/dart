import "dart:io";

void main() {
  stdout.write("Ingrese un numero ");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero > 0) {
    print("El numero ingresado es positivo");
  } else if (numero < 0) {
    print("El numero ingresado es negativo");
  } else if (numero == 0) {
    print("El numero ingresado es 0");
  }
}
