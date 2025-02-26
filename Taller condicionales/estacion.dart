import 'dart:io';

void main() {
  stdout.write("Ingrese el hemisferio:");
  String hemisferio = stdin.readLineSync()!.toLowerCase();
  stdout.write("Ingrese el mes:");
  String mes = stdin.readLineSync()!;
  stdout.write("Ingrese el dia:");
  int dia = int.parse(stdin.readLineSync()!.toLowerCase());
  
  const meses = ["enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"];

  if (hemisferio == "norte") {
    if (mes == meses[2] && dia >= 21 ||
        mes == meses[3] ||
        mes == meses[4] ||
        mes == meses[5]
    && dia <= 21) {
      print("La estacion es primacera");
    }
    if (mes == meses[6] && dia >= 21 ||
        mes == meses[7] ||
        mes == meses[8] ||
        mes == meses[9] && dia <= 21) {
      print("La estacion es verano");
    }
    if (mes == meses[10] && dia >= 21 ||
        mes == meses[12] ||
        mes == meses[0] ||
        mes == meses[1] && dia <= 21) {
      print("La estacion es otonio");
    }
    if (mes == meses[2] && dia <= 20 ||
        mes == meses[3] ||
        mes == meses[4] ||
        mes == meses[5] && dia >= 21) {
      print("La estacion es invierno");
    }
  }

  if (hemisferio == "sur") {
    if (mes == meses[2] && dia >= 21 ||
        mes == meses[3] ||
        mes == meses[4] ||
        mes == meses[5] && dia <= 21) {
      print("La estacion es otoño");
    }
    if (mes == meses[6] && dia >= 21 ||
        mes == meses[7] ||
        mes == meses[8] ||
        mes == meses[9] && dia <= 21) {
      print("La estacion es invierno");
    }
    if (mes == meses[10] && dia >= 21 ||
        mes == meses[11] ||
        mes == meses[0] ||
        mes == meses[1] && dia <= 21) {
      print("La estacion es primavera");
    }
    if (mes == meses[2] && dia <= 20 ||
        mes == meses[3] ||
        mes == meses[4] ||
        mes == meses[5] && dia >= 21) {
      print("La estacion es verano");
    }
  }
}
