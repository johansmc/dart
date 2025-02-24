import 'dart:io';

void main() {
  stdout.write("Ingrese el hemisferio:");
  String hemisferio = stdin.readLineSync()!.toLowerCase();
  stdout.write("Ingrese el mes:");
  String mes = stdin.readLineSync()!.toLowerCase();
  stdout.write("Ingrese el dia:");
  int dia = int.parse(stdin.readLineSync()!);
  List<String> Mamj = ["marzo", "abril", "mayo", "junio"];
  List<String> Jjas = ["junio", "julio", "agosto", "septiembre"];
  List<String> Sond = ["septiembre", "octubre", "noviembre", "diciembre"];
  List<String> Defm = ["diciembre", "enero", "febrero", "diciembre"];

  if (hemisferio == "norte") {
    if (mes == Mamj[0] && dia >= 21 ||
        mes == Mamj[1] ||
        mes == Mamj[2] ||
        mes == Mamj[3] && dia <= 21) {
      print("La estacion es primacera");
    }
    if (mes == Jjas[0] && dia >= 21 ||
        mes == Jjas[1] ||
        mes == Jjas[2] ||
        mes == Jjas[3] && dia <= 21) {
      print("La estacion es verano");
    }
    if (mes == Sond[0] && dia >= 21 ||
        mes == Sond[1] ||
        mes == Sond[2] ||
        mes == Sond[3] && dia <= 21) {
      print("La estacion es otonio");
    }
    if (mes == Defm[0] && dia >= 21 ||
        mes == Defm[1] ||
        mes == Defm[2] ||
        mes == Defm[3] && dia <= 21) {
      print("La estacion es invierno");
    }
  }

  if (hemisferio == "sur") {
    if (mes == Mamj[0] && dia >= 21 ||
        mes == Mamj[1] ||
        mes == Mamj[2] ||
        mes == Mamj[3] && dia <= 21) {
      print("La estacion es otoño");
    }
    if (mes == Jjas[0] && dia >= 21 ||
        mes == Jjas[1] ||
        mes == Jjas[2] ||
        mes == Jjas[3] && dia <= 21) {
      print("La estacion es invierno");
    }
    if (mes == Sond[0] && dia >= 21 ||
        mes == Sond[1] ||
        mes == Sond[2] ||
        mes == Sond[3] && dia <= 21) {
      print("La estacion es primavera");
    }
    if (mes == Defm[0] && dia >= 21 ||
        mes == Defm[1] ||
        mes == Defm[2] ||
        mes == Defm[3] && dia <= 21) {
      print("La estacion es verano");
    }
  }
}
