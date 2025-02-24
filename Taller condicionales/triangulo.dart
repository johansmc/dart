import 'dart:io';

void main() {
  stdout.write("Ingrese la base del triangulo: ");
  var base = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el lado izquierdo del triangulo: ");
  var lado1 = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el lado derecho del triangulo: ");
  var lado2 = double.parse(stdin.readLineSync()!);

  if (lado1 + lado2 <= base || base + lado2 <= lado1 || base + lado1 <= lado2) {
    print("El triangulo es invalido");
  } else {
    if (lado1 == lado2 && lado2 == base) {
      print("El triangulo es equilatero");
    } else if (lado1 == lado2 || lado2 == base || base == lado1) {
      print("El triangulo es isosceles");
    } else if (lado1 > lado2 || lado2 > base || base > lado1) {
      print("El triangulo es escaleno");
    }
  }
}
