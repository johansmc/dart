import "dart:io";

void main() {
  stdout.write("Ingrese la primera nota del estudiante: ");
  int nota1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la segunda nota del estudiante: ");
  int nota2 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la tercera nota del estudiante: ");
  int nota3 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la cuarta nota del estudiante: ");
  int nota4 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la quinta nota del estudiante: ");
  int nota5 = int.parse(stdin.readLineSync()!);

  int sumaNotas = nota1 + nota2 + nota3 + nota4 + nota5;

  double promedio = sumaNotas / 5;

  print(
    " --------------------------------------------------------------------- ",
  );
  if (promedio >= 7) {
    print("El estudiante ha aprobado con un promedio de: $promedio");
  } else {
    print("El estudiante ha reprobado con un promedio de: $promedio");
  }
}
