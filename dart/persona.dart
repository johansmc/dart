import 'dart:io';

void main() {
  stdout.write("Ingrese su nombre persona 1: ");
  String persona1 = stdin.readLineSync()!;
  stdout.write("Ingrese su edad persona 1: ");
  int edad1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese su nombre persona 2: ");
  String persona2 = stdin.readLineSync()!;
  stdout.write("Ingrese su edad persona 2: ");
  int edad2 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese su nombre persona 3: ");
  String persona3 = stdin.readLineSync()!;
  stdout.write("Ingrese su edad persona 3: ");
  int edad3 = int.parse(stdin.readLineSync()!);

  var personas = [persona1, persona2, persona3];
  var promedio = (edad1 + edad2 + edad3) / 3;
  print(
    "La cantidad de personas que respondieron la encuesta es: ${personas.length} \nel promedio de la edad fue: $promedio, numero de personas:",
  );
}
