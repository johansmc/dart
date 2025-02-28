import "dart:io";


void main() {
  double num1 = 0;
  double num2 = 0;
  int opcion = 0;
  double resultado = 0;



  stdout.write(
    "Ingrese la opcion matematica que desea realizar: \n1: Suma\n2: Resta\n3: Multiplicacion \n4:Division \n5.Potencia \n6:Salir \n",
  );

  opcion = int.parse(stdin.readLineSync()!);
  if (opcion < 1 || opcion > 6) {
    print("Opcion invalida");
  } else if (opcion == 6) {
    print("Saliendo del programa");
  } else {
    while (opcion != 6) {
      stdout.write("Ingrese el primer numero: ");
      num1 = double.parse(stdin.readLineSync()!);

      stdout.write("Ingrese el segundo numero: ");
      num2 = double.parse(stdin.readLineSync()!);

      if (opcion == 1) {
        resultado = num1 + num2;
        print("El resultado de la suma es: $resultado");
        break;
      } else if (opcion == 2) {
        resultado = num1 - num2;
        print("El resultado de la resta es: $resultado");
        break;
      } else if (opcion == 3) {
        resultado = num1 * num2;
        print("El resultado de la multiplicacion es: $resultado");
        break;
      } else if (opcion == 4) {
        resultado = num1 / num2;
        print("El resultado de la division es: $resultado");
        break;
      } else if (opcion == 5) {
        int i = 0;
        resultado = 1;
        for (i = 1; i <= num2; i++) {
          resultado *= num1;
        }
        print("El resultado de la potencia es: $resultado");
        break;
      }
    }
  }
}
