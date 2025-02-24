import "dart:io";

void main() {
  stdout.write("Ingrese el nombre del estudiante ");
  String nombreEstudiante = stdin.readLineSync()!;

  stdout.write("Ingrese la primera nota ");
  int nota1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la segunda nota ");
  int nota2 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la tercera nota ");
  int nota3 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la cuarta nota ");
  int nota4 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la quinta nota ");
  int nota5 = int.parse(stdin.readLineSync()!);

  int sumaNotas = nota1 + nota2 + nota3 + nota4 + nota5;
  double notaFinal = sumaNotas / 5;
  print(
    " --------------------------------------------------------------------------------------- ",
  );
  print(
    "El nombre del estudiante es $nombreEstudiante \nSus notas son: \nprimera nota $nota1 \segunda nota $nota2 \ntercera nota $nota3 \ncuarta nota $nota4 \nquinta nota $nota5",
  );
  print("El resultado final es de: $notaFinal");
}
