import "dart:io";

void main() {

  stdout.write("Ingrese el precio del producto: ");
  double precio = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el descuento: ");
  double descuento = double.parse(stdin.readLineSync()!);

  double precioFinal = precio - (precio * descuento / 100);

  print("El precio final es de: $precioFinal");
}
