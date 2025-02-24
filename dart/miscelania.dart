import "dart:io";

void main() {
  stdout.write("Ingrese el nombre del estudiante: ");
  String? nombreEstudiante = stdin.readLineSync();

  stdout.write("Ingrese el nombre del libro: ");
  String? nombreLibro = stdin.readLineSync();

  stdout.write("Ingrese el numero de hoja principal: ");
  int paginaInicio = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el numero de hoja final: ");
  int paginaFinal = int.parse(stdin.readLineSync()!);

  int hojasImprimir = paginaFinal - paginaInicio;

  print(
    " ---------------------------------------------------------------------------------------------- ",
  );
  print(
    "El nombre del estudiante es: $nombreEstudiante \nEl nombre del libro es: $nombreLibro \n",
  );

  if (hojasImprimir == 1) {
    print("El valor de la copia es de 100");
  } else if (hojasImprimir >= 2 && hojasImprimir <= 10) {
    int precioTotal = hojasImprimir * 80;
    print("El valor de la copia es de $precioTotal");
  } else if (hojasImprimir >= 11 && hojasImprimir <= 20) {
    int precioTotal = hojasImprimir * 50;
    print("El valor de la copia es de $precioTotal");
  } else if (hojasImprimir > 20) {
    int precioTotal = hojasImprimir * 40;
    print("El valor de la copia es de $precioTotal");
  } else {
    print("Error, digite una cantidad de hojas valida");
  }
}
