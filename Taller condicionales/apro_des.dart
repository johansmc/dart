import 'dart:io';

void main() {
  stdout.write("Ingrese la nota del alumno (use . para decimales): ");
  double nota = double.parse(stdin.readLineSync()!);

  if (nota <= 2.9) {
    print("Reprobado");
  }else if (nota >= 3.0 && nota <= 5.0) {
    print("Aprobado");
  }
}
