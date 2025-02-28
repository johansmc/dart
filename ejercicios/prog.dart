import 'dart:io';

void main() {
  /* print('Ingrese un número: ');
  int x = int.parse(stdin.readLineSync()!);
  print("Ingrese otro número: ");
  int y = int.parse(stdin.readLineSync()!);
  int resultado = 0;
  
  while (x >= y) {
    print("La resta es $x - $y ");
    x -= y;
    resultado++;
    if (x < y) {
      break;
    }
  }
  print("El resultado de la división es: $resultado");
  print("El residuo es: $x");
  */

  var list = List.filled(3, 0);
  list[0] = 3;
  list[1] = 2;
  list[2] = 1;
  print(list.reversed);
  
}
