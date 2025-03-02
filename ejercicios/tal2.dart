import 'dart:io';

List<double> temperaturas = [12.5, 30.5, 25.7, 40.2];
void main() {
  stdout.write(
    "Ingrese la opcion que desea realizar :  \n1: Mostrar promedio \n2: Mostrar temperatura maxima \n3: Mostrar temperatura minima \n4: Mostrar dias con temperatura mayor a 30°C \n5: Salir \nOpcion: ",
  );
  int opcion = int.parse(stdin.readLineSync()!);

  while (true) {
    if (opcion == 1) {
      mostrarPromedio();
      break;
    } else if (opcion == 2) {
      mostrarMaxima();
      break;
    } else if (opcion == 3) {
      mostrarMinima();
      break;
    } else if (opcion == 4) {
      diasConTemperaturaMayorA30();
      break;
    } else if (opcion == 5) {
      salir();
      break;
    } else {
      print("Opcion invalida");
    }
    break;
  }
}

void mostrarPromedio() {
  if (temperaturas.isEmpty) {
    print("No hay temperaturas registradas");
  } else {
    double promedio =
        temperaturas.reduce((a, b) => a + b) / temperaturas.length;
    print("El promedio de las temperaturas es: $promedio");
  }
}

void mostrarMaxima() {
  double max = temperaturas.reduce((a, b) => a > b ? a : b);
  print('La temperatura maxima es: ${max} °C');
}

void mostrarMinima() {
  double min = temperaturas.reduce((a, b) => a < b ? a : b);
  print("La temperatura minima es: ${min} °C");
}

void diasConTemperaturaMayorA30() {
  int dias = temperaturas.where((temperatura) => temperatura > 30).length;
  print("Hay $dias dias con temperatura mayor a 30°C");
}

void salir() {
  print("Saliendo del programa");
  exit(0);
}
