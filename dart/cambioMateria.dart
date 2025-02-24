import "dart:io";

void main() {
  stdout.write("Ingrese la temperatura a evaluar ");
  double temperatura = double.parse(stdin.readLineSync()!);

  if (temperatura < 0) {
    print("el agua se convierte en hielo");
  } else if(temperatura > 0 && temperatura < 100) {
    print("el agua se mantiene en liquido");
  } else if(temperatura > 100) {
    print("el agua se convierte en vapor");
  }
}
