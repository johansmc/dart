import 'dart:io';

void main() {
  Map<String, double> conversiones = {
    "metros": 1.0,
    "centímetros": 100.0,
    "milímetros": 1000.0,
    "kilómetros": 0.001,
    "pulgadas": 39.3701,
    "pies": 3.28084,
    "yardas": 1.09361,
    "millas": 0.000621371,
  };

  stdout.write("Ingrese la cantidad: ");
  double? cantidad = double.tryParse(stdin.readLineSync() ?? "");

  stdout.write("Ingrese la unidad de origen (ej. metros): ");
  String? unidadOrigen = stdin.readLineSync()?.toLowerCase();

  stdout.write("Ingrese la unidad de destino (ej. centímetros): ");
  String? unidadDestino = stdin.readLineSync()?.toLowerCase();

  if (cantidad == null || unidadOrigen == null || unidadDestino == null) {
    print(" Entrada inválida.");
    return;
  }

  if (!conversiones.containsKey(unidadOrigen) || !conversiones.containsKey(unidadDestino)) {
    print(" Conversión no válida. Solo se permiten unidades de longitud.");
    return;
  }

  double cantidadEnMetros = cantidad / conversiones[unidadOrigen]!;
  double resultado = cantidadEnMetros * conversiones[unidadDestino]!;

  print(" $cantidad $unidadOrigen equivale a $resultado $unidadDestino.");
}