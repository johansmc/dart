import 'dart:io';

void main() {
  stdout.write("Ingrese el país o estado (ej. colombia, usa_california): ");
  String? region = stdin.readLineSync()?.toLowerCase();

  stdout.write("Ingrese el monto de la compra: ");
  double? monto = double.tryParse(stdin.readLineSync() ?? "");

  if (monto == null || monto <= 0) {
    print(" Monto inválido.");
    return;
  }

  double impuesto = 0.0;
  double porcentaje = 0.0;

 
  if (region == "colombia") {
    porcentaje = 0.19;
  } else if (region == "mexico") {
    porcentaje = 0.16;
  } else if (region == "argentina") {
    porcentaje = 0.21;
  } else if (region == "chile") {
    porcentaje = 0.19;
  } else if (region == "españa") {
    porcentaje = 0.21;
  } else if (region == "usa_california") {
    porcentaje = 0.0725;
  } else if (region == "usa_texas") {
    porcentaje = 0.0625;
  } else if (region == "usa_florida") {
    porcentaje = 0.06;
  } else {
    print(" Región no válida o no disponible en la base de datos.");
    return;
  }

  impuesto = monto * porcentaje;
  double total = monto + impuesto;

  print("\n Detalles de la compra:");
  print(" Monto: \$ $monto");
  print(" Impuesto (${porcentaje * 100}%): \$ $impuesto");
  print("Total a pagar: \$ $total");
}