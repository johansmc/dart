import 'dart:io';

void main() {
  stdout.write("Ingrese la hora (use el formato de 24 horas): ");
  int hora = int.parse(stdin.readLineSync()!);

  if (hora <= 19) {
    print("La hora esta dentro del horario laboral.");
  } else {
    print("La hora esta fuera del horario laboral.");
  }
}
