import 'dart:io';

void main() {
  stdout.write("Ingrese la temperatura del agua: ");
  double temp = double.parse(stdin.readLineSync()!);

  if (temp < 0) {
    print("Estado solido");
  } else if (temp > 0 && temp <= 100) {
    print("Estdo liquido");
  } else {
    print("Estado gasoso");
  }
}
