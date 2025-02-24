import "dart:io";

void main() {
  stdout.write("Ingrese un hemisferio ");
  String hemisferio = stdin.readLineSync()!;

  stdout.write("Ingrese un dia del mes ");
  int dia = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese un mes ");
  int mes = int.parse(stdin.readLineSync()!);

  if (hemisferio.toLowerCase() == "norte") {
    if ((mes == 3) || (mes == 4) || (mes == 5) || (mes == 6) && (dia <= 21)) {
      print("Primavera");
    } else if ((mes == 6) && (dia > 21)) {
      print("Verano");
    } else if ((mes == 7) || (mes == 8) || (mes == 9) && (dia <= 23)) {
      print("Verano");
    } else if ((mes == 9) && (dia >= 24)) {
      print("Otoño");
    } else if ((mes == 10) || (mes == 11) || (mes == 12) && (dia < 21)) {
      print("Otoño");
    } else if ((mes == 12) && (dia > 20)) {
      print("Invierno");
    } else if ((mes == 1) || (mes == 2) || (mes == 3) && (dia > 20)) {
      print("Invierno");
    }
  } else if(hemisferio.toLowerCase() == "sur") {
    if ((mes == 9) || (mes == 10) || (mes == 11) || (mes == 12) && (dia <= 21)) {
      print("Primavera");
    } else if ((mes == 12) && (dia > 21)) {
      print("Verano");
    } else if ((mes == 1) || (mes == 2) || (mes == 3) && (dia <= 23)) {
      print("Verano");
    } else if ((mes == 3) && (dia >= 24)) {
      print("Otoño");
    } else if ((mes == 3) || (mes == 4) || (mes == 5) || (mes == 6) && (dia < 21)) {
      print("Otoño");
    } else if ((mes == 6) && (dia > 20)) {
      print("Invierno");
    } else if ((mes == 7) || (mes == 8) || (mes == 9) && (dia > 20)) {
      print("Invierno");
    }
  }
}
