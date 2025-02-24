import 'dart:io';

void main() {
  stdout.write("Ingrese el precio de la compra: ");
  double compra = double.parse(stdin.readLineSync()!);
  stdout.write("De cuanto es el descuento: ");
  double descuento = double.parse(stdin.readLineSync()!);
  double vdescuento = descuento / 100 * compra;
  double total = compra - vdescuento ;
  print("El total de la compra es: $total");
}
