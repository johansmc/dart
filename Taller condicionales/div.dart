import 'dart:io';

void main() {
  stdout.write("Ingrese un numero: ");
  int num = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el divisor: ");
  int divisor = int.parse(stdin.readLineSync()!);
  var res = num / divisor;

  if (num % divisor == 0) {
    print("El numero $num es divisible por $divisor el resultado es $res.");
  } else {
    print("El numero $num no es divisible por $divisor.");
  } 
}